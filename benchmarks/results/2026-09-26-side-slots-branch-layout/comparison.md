# Structured-concurrency comparison

Run: 2026-09-25T17:23:44.943859+00:00; macOS-26.5.1-arm64-arm-64bit-Mach-O; Apple M2 Max.
Status: COMPLETE.

Two concurrent child waits and validated JSON per request; one carrier/event loop.
These are handler requests/s, excluding HTTP and network transport.
QPS is the median of repeated runs; percentiles pool measured requests.
Process peak RSS includes startup and warmups.

| Wait (ms) | Concurrency | Implementation | Median QPS | Min–max QPS | p50 (ms) | p95 (ms) | Peak RSS (MiB) |
|---:|---:|---|---:|---:|---:|---:|---:|
| 0 | 1 | asyncio | 9152.7 | 9081.2–9298.6 | 0.062 | 0.077 | 27.39 |
| 0 | 1 | asyncio-gather | 8813.5 | 8764.6–9153.4 | 0.063 | 0.083 | 27.25 |
| 0 | 1 | host-pcc | 45587.2 | 45022.7–45783.8 | 0.010 | 0.012 | 5.31 |
| 0 | 1 | pcc1 | 45140.6 | 44945.8–45890.9 | 0.010 | 0.012 | 5.31 |
| 0 | 1 | host-pcc-asyncio-vthread-prototype | 23109.3 | 22988.6–23303.1 | 0.025 | 0.035 | 27.75 |
| 0 | 1 | pcc1-asyncio-vthread-prototype | 23189.5 | 21801.0–23259.7 | 0.025 | 0.035 | 27.73 |
| 0 | 10 | asyncio | 48225.0 | 47800.2–50464.9 | 0.120 | 0.151 | 27.47 |
| 0 | 10 | asyncio-gather | 48266.6 | 46959.4–48485.5 | 0.123 | 0.144 | 27.22 |
| 0 | 10 | host-pcc | 64494.5 | 64348.4–64930.0 | 0.067 | 0.079 | 5.31 |
| 0 | 10 | pcc1 | 64369.9 | 64203.0–65728.9 | 0.067 | 0.079 | 5.30 |
| 0 | 10 | host-pcc-asyncio-vthread-prototype | 30641.6 | 30593.4–31355.8 | 0.206 | 0.245 | 24.62 |
| 0 | 10 | pcc1-asyncio-vthread-prototype | 30669.8 | 29120.2–31020.1 | 0.207 | 0.248 | 24.62 |
| 0 | 100 | asyncio | 86504.3 | 81333.3–90549.7 | 0.714 | 0.874 | 27.75 |
| 0 | 100 | asyncio-gather | 82313.3 | 79799.0–83492.3 | 0.765 | 0.898 | 27.55 |
| 0 | 100 | host-pcc | 65914.4 | 65141.5–67063.7 | 0.644 | 0.751 | 5.80 |
| 0 | 100 | pcc1 | 66778.9 | 66481.4–67154.7 | 0.641 | 0.740 | 5.81 |
| 0 | 100 | host-pcc-asyncio-vthread-prototype | 30441.4 | 29055.1–30998.5 | 2.083 | 2.506 | 25.48 |
| 0 | 100 | pcc1-asyncio-vthread-prototype | 30224.8 | 29959.0–31592.8 | 2.062 | 2.499 | 25.48 |
| 100 | 1 | asyncio | 9.9 | 9.8–9.9 | 101.197 | 101.800 | 26.89 |
| 100 | 1 | asyncio-gather | 9.9 | 9.9–9.9 | 101.241 | 101.478 | 26.73 |
| 100 | 1 | host-pcc | 10.0 | 10.0–10.0 | 100.238 | 100.897 | 4.17 |
| 100 | 1 | pcc1 | 10.0 | 9.9–10.0 | 100.332 | 101.152 | 4.19 |
| 100 | 1 | host-pcc-asyncio-vthread-prototype | 10.0 | 10.0–10.0 | 100.321 | 100.831 | 5.27 |
| 100 | 1 | pcc1-asyncio-vthread-prototype | 10.0 | 9.9–10.0 | 100.365 | 101.014 | 5.27 |
| 100 | 10 | asyncio | 98.6 | 98.5–98.7 | 101.239 | 102.018 | 26.92 |
| 100 | 10 | asyncio-gather | 98.6 | 98.0–98.7 | 101.262 | 101.792 | 26.83 |
| 100 | 10 | host-pcc | 99.4 | 99.1–99.5 | 100.416 | 101.166 | 4.27 |
| 100 | 10 | pcc1 | 99.2 | 99.1–99.7 | 100.381 | 101.544 | 4.28 |
| 100 | 10 | host-pcc-asyncio-vthread-prototype | 99.1 | 98.8–99.5 | 100.537 | 101.337 | 5.86 |
| 100 | 10 | pcc1-asyncio-vthread-prototype | 99.1 | 97.9–99.3 | 100.644 | 101.541 | 5.86 |
| 100 | 100 | asyncio | 962.1 | 958.3–972.3 | 102.362 | 105.494 | 27.67 |
| 100 | 100 | asyncio-gather | 971.3 | 947.3–975.0 | 101.995 | 105.219 | 27.73 |
| 100 | 100 | host-pcc | 972.3 | 954.0–979.7 | 101.220 | 104.523 | 4.95 |
| 100 | 100 | pcc1 | 972.5 | 949.8–981.6 | 101.422 | 103.484 | 4.95 |
| 100 | 100 | host-pcc-asyncio-vthread-prototype | 955.0 | 949.7–969.0 | 102.203 | 105.087 | 10.53 |
| 100 | 100 | pcc1-asyncio-vthread-prototype | 948.5 | 942.4–969.7 | 102.483 | 105.620 | 10.53 |

Raw samples and provenance: [comparison.json](comparison.json).
