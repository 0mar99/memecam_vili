.class public Lcom/android/camera2/MiCamera2ShotParallelBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private onCaptureShutter()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

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

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-eq v0, v2, :cond_2

    :cond_1
    const-string p0, "ShotParallelBurst"

    const-string v0, "not delay sound when multi frame end"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v9, Lcom/android/camera2/QuickViewParam;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    .line 6
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean v5, v3, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    iget v3, v3, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/4 v7, 0x0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 7
    invoke-interface {v0, v9}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$808(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean v0, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrameLost:Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShotParallelBurst"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 8
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureResult;

    if-eqz v4, :cond_1

    .line 9
    invoke-static {v4}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v4

    .line 10
    invoke-virtual {p1, v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 12
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureResult;

    if-eqz v3, :cond_2

    .line 13
    invoke-static {v3}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v3

    .line 14
    invoke-virtual {p1, v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    .line 19
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    const-string p1, "onCaptureCompleted: finished all frame"

    .line 20
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_4
    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isSREnable(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "xiaomi.superResolution.enabled"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted: isSRRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted: isSREnabled = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted: hdrEnabled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: fusionShot = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: fusionType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)LOooO0OO/OooO0OO;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " firstFrameTimestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " failedFrameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelBurst"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

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
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p0, p3}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelBurst"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    .line 1
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

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBurst"

    const/4 p5, 0x4

    invoke-static {p5, p2, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p1, :cond_0

    const/4 v2, -0x3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->enableSat()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$108(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    .line 8
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p6

    if-ne p5, p6, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 10
    :cond_2
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p6, :cond_e

    const/4 p6, 0x0

    .line 11
    iput-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 12
    iput-wide p3, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz p1, :cond_d

    .line 13
    new-instance p5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p5

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0, p3, p4}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->setCaptureStartTime(J)V

    .line 19
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 20
    :cond_3
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 21
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 22
    :cond_4
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p4, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_5

    iget p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-ne p3, v0, :cond_5

    move v4, v0

    goto :goto_0

    :cond_5
    move v4, p6

    .line 23
    :goto_0
    new-instance p3, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p4, p4, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 24
    new-instance p4, Lcom/android/camera2/QuickViewParam;

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    .line 25
    invoke-virtual {p6}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean v3, p6, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v5, 0x0

    iget-object v6, p6, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget p4, p4, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 26
    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    .line 28
    invoke-interface {p1, p5, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 29
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 30
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)LOooO0OO/OooO0OO;

    move-result-object p3

    goto :goto_1

    :cond_6
    sget-object p3, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    :goto_1
    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 31
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 32
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHdrSR(Z)V

    .line 33
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 34
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    if-nez p3, :cond_7

    .line 35
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 36
    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    const/16 p4, 0x20

    invoke-static {p3, p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p3

    .line 37
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p4

    .line 38
    invoke-static {p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onCaptureStarted, sensor raw size is null then get it again, size: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-static {p2}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result p2

    const/16 p4, 0x14

    if-eqz p2, :cond_8

    .line 41
    iget p2, p3, Lcom/android/camera/CameraSize;->width:I

    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    .line 42
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setActiveRegion(Landroid/graphics/Rect;)V

    .line 43
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setZoomRatio(F)V

    goto :goto_2

    .line 44
    :cond_8
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    if-ne p4, p2, :cond_9

    .line 45
    iget p2, p3, Lcom/android/camera/CameraSize;->width:I

    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    .line 46
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 47
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p3

    if-eq p3, v0, :cond_a

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    .line 48
    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p3

    if-eq p3, p4, :cond_a

    .line 49
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHdrSR()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 50
    :cond_a
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 51
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    .line 52
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEvValues([I)V

    .line 53
    :cond_b
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    .line 54
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_3

    :cond_c
    const-string p0, "onCaptureStarted: null task data"

    .line 55
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    const-string p0, "onCaptureStarted: null picture callback"

    .line 56
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    return-void
.end method
