.class public abstract Lcom/android/camera2/MiCamera2MIVIBaseShot;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2MIVIBaseShot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static CALLBACK_STATE_FINISH:I = 0x2


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public volatile mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public volatile mEarlyImage:Landroid/media/Image;

.field public mEarlyImageResultType:I

.field public mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mFinalPictureListener:Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

.field public volatile mHandledEarlyImage:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    const-string p1, "MiCamera2MIVIBaseShot"

    .line 2
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mHandledEarlyImage:Z

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;-><init>(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mFinalPictureListener:Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->generateEarlyPictureData()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->closeEarlyImage()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2MIVIBaseShot;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImageResultType:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2MIVIBaseShot;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->onEarlyJpegImageReady([BI)V

    return-void
.end method

.method private closeEarlyImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "closeEarlyImage: timestamp > %d "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    :cond_0
    return-void
.end method

.method private generateEarlyPictureData()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOutputSize(Landroid/util/Size;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOutputSize(Landroid/util/Size;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setVendorWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    const-string v4, ""

    .line 12
    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAnchorPreview(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getCvEffectForPreview()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 17
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedCropAfterFilter(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isCinematicAspectRatio()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCinematicAspectRatio(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->isNeedGaussian()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNoGaussian(Z)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateEarlyPictureData: filter id > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateEarlyPictureData: outputSize > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelType(I)V

    return-void
.end method

.method private isNeedGaussian()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 4
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedGaussian: mOperationMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isSuperNightSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiCamera2MIVIBaseShot"

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x800a

    .line 5
    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    if-eq v5, p0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    const/4 p0, 0x6

    .line 6
    invoke-static {v0, v2, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    const-string p0, "isNeedGaussian: true"

    .line 7
    invoke-static {v6, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private onEarlyJpegImageReady([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyPictureData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraCharacteristics(Lcom/android/camera2/CameraCapabilities;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public handleCaptureFinished()V
    .locals 0

    return-void
.end method

.method public handleEarlyImageIfNeed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    const-string v1, ", this: "

    const-string v2, "MiCamera2MIVIBaseShot"

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEarlyImageIfNeed: with null image, mCurrentParallelTaskData timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEarlyImageIfNeed: with null mCurrentParallelTaskData , image timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mHandledEarlyImage:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "handleEarlyImageIfNeed: has already handle early image, timestamp\uff1a%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-nez v0, :cond_4

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEarlyImageIfNeed : something wrong happened when image received: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    .line 9
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->closeEarlyImage()V

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mHandledEarlyImage:Z

    const-wide/16 v0, 0x0

    .line 14
    iget-object v3, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_6

    const-string v0, "handleEarlyImageIfNeed : image arrived first"

    .line 15
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEarlyImageIfNeed: runnable start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;-><init>(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz v1, :cond_7

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEarlyImageIfNeed: checkStatus -->> runnable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    const/4 v1, 0x0

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v2

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V

    goto :goto_1

    .line 24
    :cond_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    .line 25
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEarlyImageIfNeed: discard early picture in case of no need thumbnail, mEarlyImage\'s timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->closeEarlyImage()V

    return-void
.end method

.method public notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    if-nez v0, :cond_0

    const-string p0, "notifyResultData: null parallel callback"

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget v2, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setPreviewThumbnailHash(I)V

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isImageCaptureIntent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "notifyResultData: return for intent capture"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, "notifyResultData: finished for intent capture"

    .line 9
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->getTimestamp()J

    move-result-wide p3

    const/4 p0, 0x0

    invoke-interface {p1, p2, p3, p4, p0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJI)V

    :cond_2
    return-void
.end method

.method public bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public onFinalImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 0

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;IZ)Landroid/media/Image;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onImageReceived: mEarlyImage\'s timestamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentParallelTaskData: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiCamera2MIVIBaseShot"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput p2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImageResultType:I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleEarlyImageIfNeed()V

    :cond_0
    return-void
.end method

.method public updatePictureInfoIfNeed(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 3

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getCustomCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    const-string v0, "MiCamera2MIVIBaseShot"

    if-eqz p2, :cond_3

    .line 5
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePictureInfoIfNeed: hdrEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getType()I

    move-result p2

    sget v1, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->TYPE_WRITE_EXIF:I

    if-ne p2, v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getMetadata()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePictureInfoIfNeed: algorithmInfo: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setExtraInfo(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
