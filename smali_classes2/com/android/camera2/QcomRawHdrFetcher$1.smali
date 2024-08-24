.class public Lcom/android/camera2/QcomRawHdrFetcher$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "QcomRawHdrFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/QcomRawHdrFetcher;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/QcomRawHdrFetcher;


# direct methods
.method public constructor <init>(Lcom/android/camera2/QcomRawHdrFetcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private onCaptureShutter()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean v1, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/android/camera2/QcomRawHdrFetcher;->access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v4, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    .line 6
    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v5

    iget-object v4, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean v6, v4, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    iget v4, v4, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne v4, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 7
    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureBufferLost: frameNumber="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", firstTimestamp = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-wide p3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p1}, Lcom/android/camera2/QcomRawHdrFetcher;->access$508(Lcom/android/camera2/QcomRawHdrFetcher;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {v0}, Lcom/android/camera2/QcomRawHdrFetcher;->access$500(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {v0}, Lcom/android/camera2/QcomRawHdrFetcher;->access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p3, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p3}, Lcom/android/camera2/QcomRawHdrFetcher;->access$600(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 7
    iget-object p3, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p3}, Lcom/android/camera2/QcomRawHdrFetcher;->access$600(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureResult;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p2}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p3}, Lcom/android/camera2/QcomRawHdrFetcher;->access$500(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p1}, Lcom/android/camera2/QcomRawHdrFetcher;->access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p2}, Lcom/android/camera2/QcomRawHdrFetcher;->access$500(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/android/camera2/QcomRawHdrFetcher$1;->onCaptureShutter()V

    .line 13
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    :cond_2
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed: reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " firstFrameTimestamp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-wide v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " failedFrameNumber="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

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
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-virtual {p0, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureProgressed: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureSequenceAborted: sequenceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 2
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " isFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {v0}, Lcom/android/camera2/QcomRawHdrFetcher;->access$108(Lcom/android/camera2/QcomRawHdrFetcher;)I

    .line 3
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p2}, Lcom/android/camera2/QcomRawHdrFetcher;->access$100(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p2

    iget-object p5, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p5}, Lcom/android/camera2/QcomRawHdrFetcher;->access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p5

    if-ne p2, p5, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p2, :cond_6

    const/4 v2, -0x3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    const/4 p5, 0x0

    iput-boolean p5, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 10
    iput-wide p3, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz p1, :cond_5

    .line 11
    new-instance p2, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p6, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p6, p6, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p6}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object p6, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p6, p6, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {p6}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object p6, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object v5, p6, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object p6, p6, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 13
    invoke-virtual {p6}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p2

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 14
    iget-object p6, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p6, p6, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz p6, :cond_1

    .line 15
    invoke-virtual {p6, p3, p4}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->setCaptureStartTime(J)V

    .line 16
    iget-object p3, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 17
    :cond_1
    new-instance p3, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p4, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p4, p4, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 18
    iget-object p4, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean p6, p4, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v0, 0x1

    if-eqz p6, :cond_2

    iget p4, p4, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne p4, v0, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, p5

    .line 19
    :goto_0
    new-instance p4, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x0

    iget-object p5, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-boolean v3, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v5, 0x0

    iget-object v6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 20
    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget p4, p4, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 21
    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    .line 23
    invoke-interface {p1, p2, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p2}, Lcom/android/camera2/QcomRawHdrFetcher;->access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 26
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p2}, Lcom/android/camera2/QcomRawHdrFetcher;->access$300(Lcom/android/camera2/QcomRawHdrFetcher;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 27
    iget-object p2, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 30
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    .line 31
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher$1;->this$0:Lcom/android/camera2/QcomRawHdrFetcher;

    invoke-static {p0}, Lcom/android/camera2/QcomRawHdrFetcher;->access$400(Lcom/android/camera2/QcomRawHdrFetcher;)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEvValues([I)V

    .line 32
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureStarted: null task data"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 34
    :cond_5
    invoke-static {}, Lcom/android/camera2/QcomRawHdrFetcher;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureStarted: null picture callback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
