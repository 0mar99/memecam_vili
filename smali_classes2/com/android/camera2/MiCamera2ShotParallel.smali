.class public abstract Lcom/android/camera2/MiCamera2ShotParallel;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotParallel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera2/MiCamera2Shot<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotParallelBase"


# instance fields
.field public final mActiveArraySize:Landroid/graphics/Rect;

.field public mAlgoSize:Lcom/android/camera/CameraSize;

.field public mAnchorFrame:Z

.field public mAnchorFrameLost:Z

.field public mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

.field public mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public mCaptureId:Ljava/lang/String;

.field public mFirstFrameTimestamp:J

.field public mLockedAlgoSize:Landroid/util/Size;

.field public volatile mNeedDoAnchorFrame:Z

.field public mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mSoundTime:I

.field public mWaitingFirstFrame:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    .line 7
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrameLost:Z

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getLockedAlgoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockedAlgoSize = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShotParallelBase"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2, v0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->setFocusStatus(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p1, p0}, Lcom/android/camera2/MiCamera2;->onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    :cond_1
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onPreCapture(Lcom/xiaomi/engine/PreProcessData;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method private hasDualCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static requireCaptureSessionNonNull(Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CaptureSession must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public synthetic OooO00o(JLcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    iget v5, v0, Lcom/android/camera/CameraSize;->height:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    const/4 v6, 0x0

    move-object v1, p3

    move-wide v2, p1

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/android/zxing/decoders/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method

.method public configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configParallelSession@3: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pictureSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", combinationMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 42
    :goto_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, p1, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x204

    const/4 v4, 0x0

    if-ne p4, v0, :cond_2

    .line 43
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v4, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x202

    if-ne p4, v0, :cond_3

    .line 44
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v4, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 45
    :cond_3
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, p1, v3, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 46
    :goto_1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 47
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 48
    new-instance p4, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    const/4 p3, 0x4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParallelSession@3: bufferFormat is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 51
    invoke-virtual {p3}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    .line 52
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 53
    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooOO0o;

    invoke-direct {v0, p4}, LOooO0O0/OooO0O0/OooO0O0/OooOO0o;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    const-string p3, "error in zipper handler"

    .line 54
    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_2
    new-instance p3, Lcom/android/camera/CameraSize;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object p4
.end method

.method public configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraIdUtil;->getCombinationModeByActualId(I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v4, 0x8002

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x8003

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x80f3

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    :cond_4
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x800a

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 12
    :cond_5
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v1, 0x0

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 15
    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {v1, v0, p1, p2, v3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 16
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    :cond_6
    const/4 p2, 0x4

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession@1: bufferFormat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBase"

    invoke-static {p2, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 20
    new-instance v2, LOooO0O0/OooO0O0/OooO0O0/OooOOOO;

    invoke-direct {v2, v1}, LOooO0O0/OooO0O0/OooO0O0/OooOOOO;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    const-string p2, "error in zipper handler"

    .line 21
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_2
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object v1
.end method

.method public configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;
    .locals 4

    .line 23
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 25
    :goto_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v3, 0x8002

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x204

    const/4 v3, 0x0

    if-ne p3, v0, :cond_2

    .line 26
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x202

    if-ne p3, v0, :cond_3

    .line 27
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v2, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 29
    :goto_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 30
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 31
    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {v1, p3, p1, p2, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 32
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    const/4 v0, 0x4

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession@2: bufferFormat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBase"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 34
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    .line 35
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 36
    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooOOO;

    invoke-direct {v0, v1}, LOooO0O0/OooO0O0/OooO0O0/OooOOO;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    const-string p2, "error in zipper handler"

    .line 37
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_2
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p3, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object v1
.end method

.method public generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;
    .locals 6

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    const-string v1, "getNativeCopy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Parcelable;

    .line 4
    new-instance p1, Lcom/xiaomi/engine/PreProcessData;

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v3

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result v4

    move-object v0, p1

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/engine/PreProcessData;-><init>(IIIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBase"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getSoundTimeWhenAnchor(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSoundTimeWhenAnchor(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "original soundTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    shr-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_2
    shr-int/2addr p0, v0

    :goto_0
    and-int/2addr p0, v3

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final soundTime is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result p0

    return p0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result p0

    return p0
.end method

.method public notifyResultData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method public preCapture(Lcom/xiaomi/engine/PreProcessData;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;-><init>(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "ShotParallelBase"

    const-string p1, "error in zipper handler"

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public processCaptureFail()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    return-void
.end method

.method public processResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public processResult(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    if-eqz v0, :cond_5

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partial begin to choose anchor frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBase"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrameLost:Z

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    const-string v0, "Anchor frame lost !!! Read pixel and play sound now."

    .line 7
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v4

    :cond_1
    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 8
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    if-nez p2, :cond_2

    const/4 p2, 0x1

    move v9, p2

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    cmp-long p2, v0, v4

    if-lez p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 10
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    if-eqz v9, :cond_3

    .line 11
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    .line 12
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 13
    invoke-interface {p2, v2, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/decoders/CacheImageDecoder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;

    invoke-direct {p2, p0, v0, v1}, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;-><init>(Lcom/android/camera2/MiCamera2ShotParallel;J)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 17
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    .line 18
    new-instance v0, Lcom/android/camera2/QuickViewParam;

    .line 19
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 20
    invoke-interface {p2, v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_5
    :goto_2
    return-void
.end method
