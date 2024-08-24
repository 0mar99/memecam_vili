.class public Lcom/android/camera/module/image/hdr/HDRManager;
.super Ljava/lang/Object;
.source "HDRManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "HDRManager"


# instance fields
.field public volatile isDetectedInHdr:Z

.field public mAutoHDRTargetState:Z

.field public mHdrCheckEnabled:Z

.field public mHdrHighTemperatureDetected:Z

.field public final mHdrTrigger:Lcom/android/camera/module/image/hdr/HdrTrigger;

.field public mIsNeedNightHDR:Z

.field public mLastHdrMode:Ljava/lang/String;

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field public mMotionDetected:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Lcom/android/camera/module/image/hdr/HdrTrigger;

    invoke-direct {p1}, Lcom/android/camera/module/image/hdr/HdrTrigger;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrTrigger:Lcom/android/camera/module/image/hdr/HdrTrigger;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 4

    .line 12
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->canProvide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc2

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method private isBackBeautyOn(Lcom/android/camera/module/Module;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isHdrSceneDetectionStartedInPortrait(Lcom/android/camera/module/Module;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isSupportBokehHDR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/hdr/HDRManager;->isBackBeautyOn(Lcom/android/camera/module/Module;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getNormalFilterId()I

    move-result p0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p0, v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPortraitLightingOn()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 5
    :cond_3
    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrCheckEnabled:Z

    return p0
.end method

.method private isTriggerFlashHDR()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getHDRMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    .line 10
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    .line 12
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "3"

    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 15
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashForAuto(Ljava/lang/Integer;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "auto"

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private shouldNotTriggerHDR(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isZooming()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 9
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isHdrOnWithChecker(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_7

    .line 10
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result p1

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/HybridZoomingSystem;->getZoomRatioNone(ZI)F

    move-result v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    .line 11
    invoke-static {v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getHdrUIStatus(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOO0()Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object p1, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 14
    :cond_6
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 17
    :cond_7
    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    if-eqz p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private updateHDR(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "auto"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v2, p0, Lcom/android/camera/module/image/hdr/HDRManager;->isDetectedInHdr:Z

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/hdr/HDRManager;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    const-string v0, "HDRManager"

    const-string/jumbo v1, "resetMutexModeManually,mIsNeedNightHDR: false"

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mLastHdrMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mLastHdrMode:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(ZLcom/android/camera/MutexModeManager;Lcom/android/camera/module/Camera2Module;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHdrSceneChanged isIniHdr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mutexMode -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDRManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p2

    new-array p3, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0xa

    aput v1, p3, v0

    invoke-interface {p2, p3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 9
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->isDetectedInHdr:Z

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onHdrSceneChanged: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HDRManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getMutexHdrMode(Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "normal"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHdrSceneDetectionStarted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/image/hdr/HDRManager;->isHdrSceneDetectionStartedInPortrait(Lcom/android/camera/module/Module;)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrCheckEnabled:Z

    return p0
.end method

.method public isMatchCurrentHdrMode(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getHDRMode()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onHdrMotionDetectionResult(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMotionDetectionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mMotionDetected:Z

    if-eq v1, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mMotionDetected:Z

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xb

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    :cond_1
    return-void
.end method

.method public onHdrSceneChanged(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->isDetectedInHdr:Z

    if-ne v1, p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/hdr/HDRManager;->shouldNotTriggerHDR(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRTip(Z)V

    .line 7
    :cond_4
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const/4 p0, 0x4

    const-string p1, "HDRManager"

    .line 9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Need ignore HDR scene change. state=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v1

    return-void

    .line 11
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v2

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;

    invoke-direct {v4, p0, p1, v2, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;-><init>(Lcom/android/camera/module/image/hdr/HDRManager;ZLcom/android/camera/MutexModeManager;Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHdrThermalDetectionResult(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHdrThermalDetectionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrHighTemperatureDetected:Z

    if-eq v1, p1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrHighTemperatureDetected:Z

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xb

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    :cond_2
    return-void
.end method

.method public setHdrModeChange(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrTrigger:Lcom/android/camera/module/image/hdr/HdrTrigger;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/hdr/HdrTrigger;->setHdrModeChange(Ljava/lang/String;)V

    return-void
.end method

.method public updateHDRPreference()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v4

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v5

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/HybridZoomingSystem;->getZoomRatioNone(ZI)F

    move-result v5

    cmpl-float v4, v4, v5

    const-string v5, "auto"

    const/4 v6, 0x0

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mMotionDetected:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrHighTemperatureDetected:Z

    if-eqz v4, :cond_3

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {p0, v6}, Lcom/android/camera/module/image/hdr/HDRManager;->onHdrSceneChanged(Z)V

    .line 9
    invoke-virtual {p0, v6}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRTip(Z)V

    .line 10
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isHdrOnWithChecker(Ljava/lang/String;)Z

    move-result v0

    .line 11
    iget-boolean v4, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mMotionDetected:Z

    const-string/jumbo v7, "normal"

    const-string v8, "HDRManager"

    const-string/jumbo v9, "off"

    const/4 v10, 0x1

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrHighTemperatureDetected:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/image/hdr/HDRManager;->isTriggerFlashHDR()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    iput-boolean v10, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    .line 14
    invoke-direct {p0, v7}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDR(Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flash auto into hdr mode,mIsNeedNightHDR:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 16
    invoke-direct {p0, v5}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDR(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDR(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_7
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDR(Ljava/lang/String;)V

    .line 19
    :goto_1
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    if-nez v4, :cond_8

    const-string/jumbo p0, "updateHDRPreference, proxy == null "

    .line 20
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_8
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v8, v8, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v8, :cond_c

    .line 22
    :cond_9
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v8

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v9

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v11

    invoke-static {v9, v11}, Lcom/android/camera/HybridZoomingSystem;->getZoomRatioNone(ZI)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    .line 23
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 24
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOO0()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    sget-boolean v7, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v7, :cond_b

    .line 25
    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 26
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 27
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v4

    if-nez v4, :cond_e

    .line 28
    :cond_c
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera2/CameraConfigManager;->setHDRCheckerEnable(Z)V

    .line 29
    iput-boolean v6, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrCheckEnabled:Z

    .line 30
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {p0, v6}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRTip(Z)V

    .line 32
    :cond_d
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 33
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_4

    .line 34
    :cond_e
    iget-object v4, v1, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v4}, Lcom/android/camera/module/image/AiSceneManager;->resetAiSceneInHdrOrFlashOn()V

    .line 35
    iget-object v4, v1, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v7

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/android/camera/module/image/asd/FlashAsdManager;->resetAsdSceneInHdrOrFlashChange(ZLandroid/os/Handler;)V

    if-nez v0, :cond_10

    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2

    .line 37
    :cond_f
    iput-boolean v6, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrCheckEnabled:Z

    goto :goto_3

    .line 38
    :cond_10
    :goto_2
    iput-boolean v10, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrCheckEnabled:Z

    .line 39
    :goto_3
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/android/camera2/CameraConfigManager;->setHDRCheckerEnable(Z)V

    .line 40
    :cond_11
    :goto_4
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getHdrUIStatus(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setHDRCheckerStatus(I)V

    .line 41
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getHdrUIStatus(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setHDRMode(I)V

    return-void
.end method

.method public updateHDRTip(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isHdrOnWithChecker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/hdr/HDRManager;->shouldNotTriggerHDR(Z)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mHdrTrigger:Lcom/android/camera/module/image/hdr/HdrTrigger;

    invoke-virtual {v1}, Lcom/android/camera/module/image/hdr/HdrTrigger;->isUpdateHdrTip()Z

    move-result v1

    const-string v2, "HDRManager"

    if-nez v1, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intercept HDR tip(not tip),tartHDRState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetHDRState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-boolean v1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mAutoHDRTargetState:Z

    if-ne v1, p1, :cond_4

    return-void

    .line 11
    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mAutoHDRTargetState:Z

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAutoHDRTargetState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mAutoHDRTargetState:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO00o;

    invoke-virtual {p0, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_6
    :goto_0
    return-void
.end method
