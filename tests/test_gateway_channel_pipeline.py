import pytest

from pcc_gateway.channel import (
    INBOUND,
    OUTBOUND,
    ChannelContext,
    ChannelPipeline,
    ChannelStage,
    PipelineError,
)
from pcc_gateway.web.models import Cancellation


class RecordStage(ChannelStage):
    def __init__(self, name, log, direction=3):
        super().__init__(name, direction)
        self.log = log

    def inbound(self, context, message):
        self.log.append(self.name + ":in")
        return message + self.name.encode()

    def outbound(self, context, message):
        self.log.append(self.name + ":out")
        return message + self.name.encode()

    def close(self, context):
        self.log.append(self.name + ":close")


def test_pipeline_direction_and_order_are_internal_and_deterministic() -> None:
    log = []
    pipeline = ChannelPipeline((
        RecordStage("a", log, INBOUND),
        RecordStage("b", log),
        RecordStage("c", log, OUTBOUND),
    ))
    context = ChannelContext(1, None, Cancellation())
    assert pipeline.inbound(context, b"") == b"ab"
    assert pipeline.outbound(context, b"") == b"cb"
    assert log == ["a:in", "b:in", "c:out", "b:out"]
    pipeline.close(context)
    assert log[-3:] == ["c:close", "b:close", "a:close"]
    assert context.cancellation.cancelled


class BrokenStage(ChannelStage):
    def inbound(self, context, message):
        raise ValueError("secret")


def test_stage_failure_closes_scope_and_wraps_internal_error() -> None:
    cancellation = Cancellation()
    context = ChannelContext(1, None, cancellation)
    try:
        ChannelPipeline((BrokenStage("bad"),)).inbound(context, b"x")
    except PipelineError:
        assert context.closed
        assert cancellation.cancelled
        assert isinstance(context.error, ValueError)
        return
    raise AssertionError("pipeline error was swallowed")


@pytest.mark.parametrize("direction", ["inbound", "outbound"])
def test_failed_pipeline_releases_every_stage_once_and_preserves_primary(direction):
    log = []
    primary = ValueError("processing failed")
    cleanup = RuntimeError("cleanup failed")
    cancellation = Cancellation()
    context = ChannelContext(1, None, cancellation)

    class OwnedStage(RecordStage):
        def inbound(self, context, message):
            if self.name == "b":
                raise primary
            return super().inbound(context, message)

        def outbound(self, context, message):
            if self.name == "b":
                raise primary
            return super().outbound(context, message)

        def close(self, context):
            super().close(context)
            if self.name == "c":
                pipeline.close(context)
                raise cleanup

    pipeline = ChannelPipeline(tuple(OwnedStage(name, log) for name in ("a", "b", "c")))
    with pytest.raises(PipelineError) as error:
        getattr(pipeline, direction)(context, b"x")
    assert error.value.__cause__ is primary
    assert context.error is primary
    assert context.closed and cancellation.cancelled
    assert [item for item in log if item.endswith(":close")] == ["c:close", "b:close", "a:close"]
    pipeline.close(context)
    assert [item for item in log if item.endswith(":close")] == ["c:close", "b:close", "a:close"]


def test_explicit_context_close_does_not_skip_stage_resource_retirement():
    log = []
    context = ChannelContext(1, None, Cancellation())
    pipeline = ChannelPipeline((RecordStage("a", log), RecordStage("b", log)))
    context.close(ValueError("connection disconnected"))
    pipeline.close(context)
    pipeline.close(context)
    assert log == ["b:close", "a:close"]
    assert str(context.error) == "connection disconnected"
