.class public Lcom/android/camera/module/image/hdr/ParallelManager;
.super Ljava/lang/Object;
.source "ParallelManager.java"


# static fields
.field public static final PARALLEL_PERFORMANCE_SETTING:I = 0x0

.field public static final PARALLEL_QUALITY_SETTING:I = 0x1

.field public static final PARALLEL_QUEUE_SIZE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ParallelManager"


# instance fields
.field public mEnableParallelSession:Z

.field public mInitParallelSessionWhenPreviewOn:Z

.field public mIsParallelParameterSet:Z

.field public mIsReprocessorCustomized:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mParallelPerformance:I

.field public mParallelQuality:I

.field public mParallelSessionConfigured:Z

.field public final mParallelSessionLock:Ljava/lang/Object;

.field public mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

.field public final mSessionStatusCallbackListener:Lcom/xiaomi/protocol/ISessionStatusCallBackListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionConfigured:Z

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionLock:Ljava/lang/Object;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mIsParallelParameterSet:Z

    .line 5
    iput v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelPerformance:I

    .line 6
    iput v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelQuality:I

    .line 7
    new-instance v0, Lcom/android/camera/module/image/hdr/ParallelManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/hdr/ParallelManager$1;-><init>(Lcom/android/camera/module/image/hdr/ParallelManager;)V

    iput-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mSessionStatusCallbackListener:Lcom/xiaomi/protocol/ISessionStatusCallBackListener;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/image/hdr/ParallelManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private configParallelSession()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v3

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/Camera2Module;->getGraphDescriptorBean(II)Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v4

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParallelSession: algorithmOutputSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v5, v5, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ParallelManager"

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParallelSession:         pictureSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ParallelManager"

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParallelSession:          outputSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v5, v5, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ParallelManager"

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParallelSession:        outputFormat = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v5, v5, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ParallelManager"

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-boolean v5, v0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getBufferFormat(IILcom/xiaomi/engine/GraphDescriptorBean;ZLcom/android/camera/CameraSize;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v1

    .line 12
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v2, v2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v0, v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParallelSession: bufferFormat is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ParallelManager"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionConfigured:Z

    .line 19
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beginParallelProcess(Lcom/xiaomi/camera/core/ParallelTaskData;Z)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "algo begin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ParallelManager"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/Camera2Module;

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;-><init>(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    .line 5
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-virtual {p2, v0}, Lcom/android/camera/parallel/AlgoConnector;->setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V

    :cond_1
    return-void
.end method

.method public createParallelParams(Lcom/android/camera2/CaptureStartParam;Landroid/util/Size;I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p1

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v3, v3, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportIspHeif(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportIspHeif(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    sget v1, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    .line 11
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 12
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/image/ImageModuleCameraManager;->isPictureUseDualFrontCamera()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mAlgorithmName:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const-string v1, ""

    .line 22
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/ParallelManager;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p0

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setReprocessBurstShotPicture(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    return-object p0
.end method

.method public customizeReprocessor()V
    .locals 7

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x65

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMaxJpegSize()I

    move-result v3

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0xaf

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBinningFactor(Lcom/android/camera2/CameraCapabilities;)I

    move-result v4

    mul-int/2addr v3, v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMaxJpegSize -> binningFactor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParallelManager"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0Oo()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x66

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x67

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/Size;

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-direct {v5, v6, v0}, Landroid/util/Size;-><init>(II)V

    .line 20
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/camera/LocalParallelService$LocalBinder;->customizeReprocessor(Ljava/util/HashMap;)V

    .line 22
    iput-boolean v3, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mIsReprocessorCustomized:Z

    :cond_6
    return-void
.end method

.method public getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v1

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v2

    .line 5
    new-instance v3, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;-><init>(ZZZLjava/lang/String;)V

    .line 7
    invoke-virtual {v3, p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCinematicAspectRatio(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isLTR()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object p0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object p0

    return-object p0
.end method

.method public initParallelSession()V
    .locals 4

    const-string v0, "ParallelManager"

    const-string v1, "initParallelSession: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/image/hdr/ParallelManager;->configParallelSession()V

    .line 4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "initParallelSession: X. Null binder!"

    .line 5
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mIsReprocessorCustomized:Z

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/ParallelManager;->customizeReprocessor()V

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 10
    :cond_3
    iget-object p0, v1, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    iget v3, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    iget p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-virtual {v2, v3, v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setOutputPictureSpec(III)V

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oO()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setSRRequireReprocess(Z)V

    const-string p0, "initParallelSession: X"

    .line 12
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isParallelQueueFull()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageSaverFull()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    const-string v0, "ParallelManager"

    if-eqz p0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->needWaitProcess()Z

    move-result v1

    goto :goto_0

    :cond_4
    const-string p0, "isParallelQueueFull: NOTICE: CHECK WHY BINDER IS NULL!"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_5

    const-string p0, "isParallelQueueFull: isNeedWaitProcess"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public isParallelSessionConfigured()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionConfigured:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isParallelUnSupported()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isParallelSupportedCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public onModuleDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mInitParallelSessionWhenPreviewOn:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2ProxyHashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->stopPostProcessor(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelSessionConfigured:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStartPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPictureFlawCheckOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager;->mSessionStatusCallbackListener:Lcom/xiaomi/protocol/ISessionStatusCallBackListener;

    invoke-virtual {v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-boolean p0, v0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getResultDataCBListener()Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setResultDataCallbackListener(Lcom/xiaomi/camera/core/IResultDataCallbackListener;)V

    :cond_2
    return-void
.end method
