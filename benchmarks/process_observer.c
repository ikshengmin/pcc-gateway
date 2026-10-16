/* Observation tooling only. Never link this into pcc or a benchmark workload.
 * A tiny exec'd supervisor avoids Python's inherited pre-exec RSS high-water
 * mark when wait4 collects the exact child's process-lifetime resource usage.
 * The caller owns the process group, timeout, and stdout/stderr destinations.
 */
#define _DEFAULT_SOURCE 1
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/resource.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#if defined(__APPLE__)
#define RSS_SCALE 1LL
#define RSS_UNIT "bytes"
#elif defined(__linux__)
#define RSS_SCALE 1024LL
#define RSS_UNIT "KiB"
#else
#error "Verify wait4 ru_maxrss units before supporting another platform"
#endif

static double seconds(struct timeval value) {
    return (double)value.tv_sec + (double)value.tv_usec / 1000000.0;
}

int main(int argc, char **argv) {
    if (argc < 4 || argv[2][0] != '-' || argv[2][1] != '-' || argv[2][2]) {
        fprintf(stderr, "usage: process-observer RECEIPT -- COMMAND [ARG ...]\n");
        return 125;
    }
    struct timespec start, end;
    if (clock_gettime(CLOCK_MONOTONIC, &start) != 0) {
        perror("observer clock_gettime");
        return 125;
    }
    pid_t child = fork();
    if (child < 0) {
        perror("observer fork");
        return 125;
    }
    if (child == 0) {
        execvp(argv[3], &argv[3]);
        perror("observer execvp");
        _exit(127);
    }
    int status;
    struct rusage usage;
    pid_t waited;
    do {
        waited = wait4(child, &status, 0, &usage);
    } while (waited < 0 && errno == EINTR);
    if (waited != child || clock_gettime(CLOCK_MONOTONIC, &end) != 0) {
        perror("observer wait4/clock_gettime");
        return 125;
    }
    int returncode = WIFEXITED(status) ? WEXITSTATUS(status) : -WTERMSIG(status);
    double elapsed = (double)(end.tv_sec - start.tv_sec)
        + (double)(end.tv_nsec - start.tv_nsec) / 1000000000.0;
    FILE *receipt = fopen(argv[1], "wx");
    if (!receipt) {
        perror("observer receipt");
        return 125;
    }
    int written = fprintf(receipt,
        "{\"schema\":\"pcc-gateway.process-observation.v1\","
        "\"observer\":\"wait4-exact-child\",\"child_pid\":%ld,"
        "\"child_returncode\":%d,\"process_real_seconds\":%.9f,"
        "\"process_user_seconds\":%.6f,\"process_sys_seconds\":%.6f,"
        "\"ru_maxrss\":%ld,\"ru_maxrss_unit\":\"" RSS_UNIT "\","
        "\"process_peak_rss_bytes\":%lld,"
        "\"process_voluntary_context_switches\":%ld,"
        "\"process_involuntary_context_switches\":%ld,"
        "\"process_minor_page_faults\":%ld,\"process_major_page_faults\":%ld}\n",
        (long)child, returncode, elapsed, seconds(usage.ru_utime),
        seconds(usage.ru_stime), usage.ru_maxrss, (long long)usage.ru_maxrss * RSS_SCALE,
        usage.ru_nvcsw, usage.ru_nivcsw, usage.ru_minflt, usage.ru_majflt);
    int closed = fclose(receipt);
    if (written < 0 || closed != 0) {
        perror("observer write receipt");
        return 125;
    }
    return returncode < 0 ? 128 - returncode : returncode;
}
