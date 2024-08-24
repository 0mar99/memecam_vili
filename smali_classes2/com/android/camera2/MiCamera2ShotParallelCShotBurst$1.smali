.class public Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelCShotBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCaptured:Z

.field public mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mCaptured:Z

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelCShotBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$502(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportP2done(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mCaptured:Z

    if-nez p1, :cond_2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$302(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;I)I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted: latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->startSessionCapture()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureFailed: reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timestamp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " frameNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelCShotBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v3, v4, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;ZI)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureProgressed: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelCShotBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportP2done(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isP2doneReady(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mCaptured:Z

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$302(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;I)I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureProgressed:  latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParallelCShotBurst"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;ZI)V

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " latestSequenceId= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ParallelCShotBurst"

    .line 3
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onRepeatingCaptureEnd()V

    .line 7
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;ZI)V

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ParallelCShotBurst"

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$000()I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$108(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    .line 6
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)I

    move-result v1

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$000()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    const/4 v12, 0x4

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: drop task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v9, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 9
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const-string v6, ""

    move-object v1, v9

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 10
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)LOooO0OO/OooO0OO;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 11
    invoke-virtual {v9, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 12
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 15
    :cond_1
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    .line 16
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto/16 :goto_1

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 18
    new-instance v14, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 19
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v14

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 20
    new-instance v1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 21
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    .line 22
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    .line 25
    invoke-interface {v13, v14, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 27
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;)LOooO0OO/OooO0OO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 28
    invoke-virtual {v1, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 29
    invoke-virtual {v1, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 30
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iget-boolean v3, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz v3, :cond_3

    .line 31
    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 32
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    iput-boolean v10, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 33
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    :cond_4
    const-string v0, "onCaptureStarted: null task data"

    .line 34
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "onCaptureStarted: null picture callback"

    .line 35
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algo_device_multi_capture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    return-void
.end method
