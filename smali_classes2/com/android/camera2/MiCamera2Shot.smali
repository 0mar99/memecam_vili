.class public abstract Lcom/android/camera2/MiCamera2Shot;
.super Ljava/lang/Object;
.source "MiCamera2Shot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TASK_DATA_TIMESTAMP:J = 0x0L

.field public static final SHUTTER_FRAMENUM_CAPTUREING:I = 0x1

.field public static final SHUTTER_FRAMENUM_NONE:I = 0x0

.field public static final SHUTTER_FRAMENUM_SHUTTERED:I = 0x2


# instance fields
.field public mCameraHandler:Landroid/os/Handler;

.field public mDeparted:Z

.field public mIsHighQualityQuickShotEnabled:Z

.field public mIsQuickShotEnabled:Z

.field public mMiCamera:Lcom/android/camera2/MiCamera2;

.field public mOperationMode:I

.field public mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

.field public mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

.field public mPreviewThumbnailHash:I

.field public mQuickShotAnimation:Z

.field public mSatCameraId:I

.field public mSavePath:Ljava/lang/String;

.field public mShotBoostParams:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mShutterFrameNum:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 7
    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    .line 10
    iput v1, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    .line 11
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return-void
.end method


# virtual methods
.method public abstract generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public final generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public final generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null callback is not allowed!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v8

    move-object v2, v1

    move-wide v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 7
    new-instance p1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 8
    new-instance p2, Lcom/android/camera2/QuickViewParam;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {p1, p2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p0

    .line 12
    invoke-interface {v0, v1, p0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public abstract generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-object p0
.end method

.method public getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-object p0
.end method

.method public getShotBoostParams()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mShotBoostParams:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getShutterTimestamp()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public isHighQualityQuickShot()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    return p0
.end method

.method public isInQcfaMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v1, 0x8007

    if-eq v0, v1, :cond_1

    const v1, 0x80f5

    if-eq v0, v1, :cond_1

    const v1, 0x80f3

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v1, 0x9007

    if-eq v0, v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v0, 0x9004

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickShot()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return p0
.end method

.method public isQuickShotAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return p0
.end method

.method public isShutterReturned()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeClobber()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    return-void
.end method

.method public abstract notifyResultData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onCaptureShutter()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v6, Lcom/android/camera2/QuickViewParam;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 3
    invoke-interface {p0, v6}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public abstract onImageReceived(Landroid/media/Image;I)V
.end method

.method public onPreviewComing()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v2

    .line 3
    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-eq v0, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iput v3, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->onCaptureShutter()V

    return v2
.end method

.method public final onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    return-void
.end method

.method public abstract prepare()V
.end method

.method public setHighQualityQuickShotEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    return-void
.end method

.method public setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-void
.end method

.method public setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return-void
.end method

.method public setQuickShotEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return-void
.end method

.method public abstract startSessionCapture()V
.end method

.method public final startShot()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShot, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->prepare()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startSessionCapture()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    return-void
.end method
