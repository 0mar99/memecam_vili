.class public Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotDualRawBokeh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$308(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotDualRawBokeh"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$500(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$500(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CaptureResult;

    if-eqz p3, :cond_1

    .line 13
    invoke-static {p3}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p3

    .line 14
    invoke-virtual {p1, p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    .line 15
    :cond_1
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    move p3, v0

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 16
    :goto_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p1

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->onCaptureShutter()V

    .line 19
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    const-string p0, "onCaptureCompleted: finished all frame"

    .line 20
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " firstFrameTimestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " failedFrameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotDualRawBokeh"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->onCaptureShutter()V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p0, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotDualRawBokeh"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureShutter()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-eq v0, v2, :cond_2

    :cond_1
    const-string p0, "ShotDualRawBokeh"

    const-string v0, "not delay sound when multi frame end"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v9, Lcom/android/camera2/QuickViewParam;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    .line 6
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean v5, v3, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    iget v3, v3, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/4 v7, 0x0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 7
    invoke-interface {v0, v9}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureStarted: timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " isFirst="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotDualRawBokeh"

    const/4 p5, 0x4

    invoke-static {p5, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$008(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$000(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p6

    if-ne p5, p6, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 7
    :cond_0
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p6, :cond_6

    const/4 p6, 0x0

    .line 8
    iput-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 9
    iput-wide p3, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz p1, :cond_5

    .line 10
    new-instance p5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p5

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p3, p4}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->setCaptureStartTime(J)V

    .line 16
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 17
    :cond_1
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 18
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean p4, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    iget p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne p3, v0, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, p6

    .line 20
    :goto_0
    new-instance p3, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p4, p4, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 21
    new-instance p4, Lcom/android/camera2/QuickViewParam;

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    .line 22
    invoke-virtual {p6}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean v3, p6, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v5, 0x0

    iget-object v6, p6, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget p4, p4, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 23
    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    .line 24
    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    .line 25
    invoke-interface {p1, p5, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 28
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 29
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    :cond_4
    const-string p0, "onCaptureStarted: null task data"

    .line 30
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p0, "onCaptureStarted: null picture callback"

    .line 31
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
