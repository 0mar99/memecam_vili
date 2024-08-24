.class public Lcom/android/camera/module/common/BaseModuleCameraManager;
.super Ljava/lang/Object;
.source "BaseModuleCameraManager.java"

# interfaces
.implements Lcom/android/camera/module/common/ModuleCameraManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseModuleCameraManager"


# instance fields
.field public m3ALockSupported:Z

.field public m3ALocked:Z

.field public mAELockOnlySupported:Z

.field public mActualCameraId:I

.field public mAeLockSupported:Z

.field public mAwbLockSupported:Z

.field public mBogusCameraId:I

.field public volatile mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

.field public mCamera2ProxyHashCode:I

.field public mCameraDisabled:Z

.field public mCameraDisplayOrientation:I

.field public mCameraHardwareError:Z

.field public volatile mCameraState:I

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mConfigManager:Lcom/android/camera2/CameraConfigManager;

.field public mContinuousFocusSupported:Z

.field public final mDeviceLock:Ljava/lang/Object;

.field public mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

.field public mEvState:I

.field public mEvValue:I

.field public volatile mFallbackProcessed:Z

.field public mFocusAreaSupported:Z

.field public mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

.field public mFocusOrAELockSupported:Z

.field public final mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mIsSatFallback:I

.field public volatile mLastSatFallbackRequestId:I

.field public mLastZoomRatio:F

.field public mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

.field public mMeteringAreaSupported:Z

.field public mModule:Lcom/android/camera/module/Module;

.field public mOpenCameraFail:Z

.field public mPictureSize:Lcom/android/camera/CameraSize;

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mResultDataCallbackListener:Lcom/xiaomi/camera/core/IResultDataCallbackListener;

.field public mSatMasterCameraId:I

.field public mThermalLevel:I

.field public volatile mUltraWideAELocked:Z

.field public volatile mWaitingSnapshot:Z

.field public mZoomRatio:F

.field public mZoomSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    .line 6
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    .line 7
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mDeviceLock:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    .line 10
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 12
    new-instance p1, Lcom/android/camera2/CameraConfigManager;

    invoke-direct {p1}, Lcom/android/camera2/CameraConfigManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    .line 13
    new-instance p1, Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;

    invoke-direct {p1, p0}, Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V

    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

    .line 14
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mListener:Lcom/android/camera/performance/PerformanceManager$PerformanceListener;

    invoke-virtual {p1, p0}, Lcom/android/camera/performance/PerformanceManager;->setPerformanceListener(Lcom/android/camera/performance/PerformanceManager$PerformanceListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/common/BaseModuleCameraManager;)Lcom/android/camera2/CameraConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    return-object p0
.end method

.method private applySatZoomState()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSatIsZooming()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSatIsZooming(Z)V

    :cond_0
    return-void
.end method

.method private isDeviceAndModuleAlive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/module/common/ModuleUtil;->logWhenStateError(Lcom/android/camera/module/common/ModuleCameraManagerInterface;Lcom/android/camera/module/common/BaseModuleStateManagerInterface;)V

    :cond_1
    return v0
.end method

.method private isDualCamera()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isDualCamera(I)Z

    move-result p0

    return p0
.end method

.method private updateBeautyLens()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setBeautyLens(I)V

    return-void
.end method

.method private updateBokeh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setSingleBokeh(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualBokehEnable(Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isSingleCamera()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setSingleBokeh(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualBokehEnable(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setSingleBokeh(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setDualBokehEnable(Z)V

    :goto_0
    return-void
.end method

.method private updateColorEnhance()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setColorEnhanceEnable(Z)V

    :cond_0
    return-void
.end method

.method private updateCvLens()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setCvLens(I)V

    return-void
.end method

.method private updateExposureTime()V
    .locals 2

    const v0, 0x7f1206ba

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_exposuretime_key"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void
.end method

.method private updateFNumber()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOoO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFNumber(Ljava/lang/String;)V

    return-void
.end method

.method private updateFrameRatio()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_1

    const/16 v2, 0xad

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc6aa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_5

    const v3, 0xd1ef

    if-eq v2, v3, :cond_4

    const v3, 0x171fa6

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "16x9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v5

    goto :goto_1

    :cond_4
    const-string v2, "4x3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v6

    goto :goto_1

    :cond_5
    const-string v2, "1x1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v4

    :cond_6
    :goto_1
    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_7
    move v1, v5

    goto :goto_2

    :cond_8
    move v1, v6

    goto :goto_2

    :cond_9
    move v1, v4

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setFrameRatio(I)V

    new-array p0, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v4

    aput-object v0, p0, v6

    const-string v0, "BaseModuleCameraManager"

    const-string/jumbo v1, "updateFrameRatio: %d (%s)"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private updateVideoFilter()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 4
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 5
    :cond_1
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoFilterId(I)V

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o00()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    if-lez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setVideoFilterRecordControlEnabled(Z)V

    :cond_5
    return-void
.end method

.method private updateVideoFpsRangeNeedForHDR()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getVideoHdrSupportSetFreqValue(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoFpsRangeNeedForHDR: setFreqValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModuleCameraManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    :cond_4
    :goto_3
    return v1
.end method

.method private updateWatermarkTag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setNewWatermark(Z)V

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->setGlobalWatermark()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    const-string v0, "BaseModuleCameraManager"

    const-string v1, "isAFSaliencyCheck, focusPointAfter"

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->focusPointAfter()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p2

    const-string v0, "BaseModuleCameraManager"

    if-nez p2, :cond_1

    const-string p0, "died while receive result data from postprocessor"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 5
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get anchor timestamp "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCacheImageDecoder()Lcom/android/zxing/decoders/CacheImageDecoder;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v4, p1, Lcom/android/camera/CameraSize;->width:I

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    iget v5, p0, Lcom/android/camera/CameraSize;->height:I

    const/4 v6, 0x0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 12
    invoke-virtual/range {v1 .. v8}, Lcom/android/zxing/decoders/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setHistogramStatsEnabled(Z)V

    return-void
.end method

.method public applyVideoHdrMode()V
    .locals 2

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
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "normal"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->applyVideoHdrMode(Z)V

    :cond_1
    return-void
.end method

.method public captureVideoSnapshot(ILcom/android/camera/module/video/JpegPictureCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseModuleCameraManager"

    const-string v1, "capture: start"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigManager;->setJpegRotation(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigManager;->setGpsLocation(Landroid/location/Location;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigManager;->setJpegQuality(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFrontMirror()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSnapshot(Z)V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x10

    if-eq p1, v0, :cond_8

    const/16 v0, 0x13

    if-eq p1, v0, :cond_7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_6

    const/16 v0, 0x33

    if-eq p1, v0, :cond_5

    const/16 v0, 0x34

    if-eq p1, v0, :cond_4

    const/16 v0, 0x44

    if-eq p1, v0, :cond_3

    const/16 v0, 0x45

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no consumer for this updateType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModuleCameraManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateHdr10VideoMode()V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateTargetZoom()V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateSpecshotMode()Z

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateNearRangeMode(Z)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateDoDepurple()V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateHistogramStats()V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateColorEnhance()V

    goto/16 :goto_0

    .line 9
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFrameRatio()V

    goto/16 :goto_0

    .line 10
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateCvLens()V

    goto/16 :goto_0

    .line 11
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoLog()V

    goto/16 :goto_0

    .line 12
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateWatermarkTag()V

    goto/16 :goto_0

    .line 13
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateCinematicVideo()V

    goto/16 :goto_0

    .line 14
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateUltraPixelPortrait()V

    goto :goto_0

    .line 15
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFNumber()V

    goto :goto_0

    .line 16
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateSkinColor()V

    goto :goto_0

    .line 17
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateBokeh()V

    goto :goto_0

    .line 18
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera2/CameraConfigManager;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    goto :goto_0

    .line 19
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateExposureMeteringMode()V

    goto :goto_0

    .line 20
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->applyVideoHdrMode()V

    goto :goto_0

    .line 21
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateJpegThumbnailSize()V

    goto :goto_0

    .line 22
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateWhiteBalance()V

    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->applySatZoomState()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateBeautyLens()V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoColorRetention()V

    goto :goto_0

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoFilter()V

    goto :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateMacroMode(I)V

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateAutoZoomMode()V

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateOIS()V

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFpsRange()V

    goto :goto_0

    .line 31
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateExposureTime()V

    goto :goto_0

    .line 32
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateISO()V

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_d
        0x8 -> :sswitch_c
        0xb -> :sswitch_b
        0x1d -> :sswitch_a
        0x21 -> :sswitch_9
        0x25 -> :sswitch_8
        0x29 -> :sswitch_7
        0x30 -> :sswitch_6
        0x39 -> :sswitch_5
        0x3c -> :sswitch_4
        0x3e -> :sswitch_3
        0x41 -> :sswitch_2
        0x61 -> :sswitch_1
        0xcaff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableVideoBokeh(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustFront(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/camera2/CameraConfigs;->setVideoBokehEnabled(Z)Z

    .line 7
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActualCameraId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    return p0
.end method

.method public getBogusCameraId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mBogusCameraId:I

    return p0
.end method

.method public getCamera2Device()Lcom/android/camera2/Camera2Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    return-object p0
.end method

.method public getCamera2ProxyHashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2ProxyHashCode:I

    return p0
.end method

.method public getCameraDisplayOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisplayOrientation:I

    return p0
.end method

.method public getCameraState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    return p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getConfigMgr()Lcom/android/camera2/CameraConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    return-object p0
.end method

.method public getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getDeviceBasedZoomRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/HybridZoomingSystem;->toCropRegionConsiderZoomRatio(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceBasedZoomRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getZoomRatio()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->getDeviceBasedZoomRatio(F)F

    move-result p0

    return p0
.end method

.method public getDeviceLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    return-object p0
.end method

.method public getEvState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvState:I

    return p0
.end method

.method public getEvValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvValue:I

    return p0
.end method

.method public getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    return-object p0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastSatFallbackRequestId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    return p0
.end method

.method public getLastZoomRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    return p0
.end method

.method public getMaxFaceCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxFaceCount(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNullableDevice()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSize()Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPictureSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getResultDataCBListener()Lcom/xiaomi/camera/core/IResultDataCallbackListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mResultDataCallbackListener:Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0O0;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mResultDataCallbackListener:Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mResultDataCallbackListener:Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    return-object p0
.end method

.method public getSatMasterCameraId()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    return p0
.end method

.method public is3ALockSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALockSupported:Z

    return p0
.end method

.method public is3ALocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALocked:Z

    return p0
.end method

.method public isAELockOnlySupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAELockOnlySupported:Z

    return p0
.end method

.method public isAeLockSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAeLockSupported:Z

    return p0
.end method

.method public isAwbLockSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAwbLockSupported:Z

    return p0
.end method

.method public isBokehFrontCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraDisabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisabled:Z

    return p0
.end method

.method public isCameraHardwareError()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraHardwareError:Z

    return p0
.end method

.method public isCameraModule()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContinuousFocusSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mContinuousFocusSupported:Z

    return p0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

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

.method public isFallbackProcessed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFallbackProcessed:Z

    return p0
.end method

.method public isFocusAreaSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusAreaSupported:Z

    return p0
.end method

.method public isFocusOrAELockSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusOrAELockSupported:Z

    return p0
.end method

.method public isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isInMultiSurfaceSatMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInQCFAMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMeteringAreaSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mMeteringAreaSupported:Z

    return p0
.end method

.method public isOpenCameraFail()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mOpenCameraFail:Z

    return p0
.end method

.method public isSatFallback()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    return p0
.end method

.method public isSingleCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

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

.method public isSquareModule()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetZooming()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getTargetZoom()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUWAELocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUltraWideAELocked:Z

    return p0
.end method

.method public isWaitingSnapshot()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mWaitingSnapshot:Z

    return p0
.end method

.method public isZoomRatioBetweenUltraAndWide()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getZoomRatio()F

    move-result v0

    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getZoomRatio()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomSupported:Z

    return p0
.end method

.method public lockAEAF()V
    .locals 2

    const-string v0, "BaseModuleCameraManager"

    const-string v1, "lockAEAF"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setM3ALocked(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/performance/PerformanceManager;->setPerformanceListener(Lcom/android/camera/performance/PerformanceManager$PerformanceListener;)V

    return-void
.end method

.method public set3ALockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALockSupported:Z

    return-void
.end method

.method public setAELockOnlySupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAELockOnlySupported:Z

    return-void
.end method

.method public setASDEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setASDEnable(Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateASD call setASDEnable with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModuleCameraManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    const-string v0, "manual"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setAWBMode(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera2/CameraConfigManager;->setAWBMode(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setCustomAWB(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedAWBModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setAWBMode(I)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setAWBMode(I)V

    :goto_1
    return-void
.end method

.method public setAeLockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAeLockSupported:Z

    return-void
.end method

.method public setAwbLockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAwbLockSupported:Z

    return-void
.end method

.method public setBogusCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mBogusCameraId:I

    return-void
.end method

.method public setBokeh1X(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setBokeh1X(Z)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBokeh1X "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModuleCameraManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->initSessionConfig(Lcom/android/camera2/CameraCapabilities;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigManager;->setCameraProxy(Lcom/android/camera2/Camera2Proxy;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setConfig(Lcom/android/camera2/CameraConfigManager;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2ProxyHashCode:I

    :cond_0
    return-void
.end method

.method public setCameraAudioRestriction(Z)V
    .locals 2

    const-string v0, "BaseModuleCameraManager"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraAudioRestriction is enable = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "CameraDevice was already closed"

    .line 5
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setCameraDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisabled:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisplayOrientation:I

    return-void
.end method

.method public setCameraHardwareError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraHardwareError:Z

    return-void
.end method

.method public setCameraState(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModuleCameraManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    return-void
.end method

.method public setContinuousFocusSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mContinuousFocusSupported:Z

    return-void
.end method

.method public setErrorCallback(Lcom/android/camera/CameraErrorCallbackImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    return-void
.end method

.method public setEvState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvState:I

    return-void
.end method

.method public setEvValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvValue:I

    return-void
.end method

.method public setFallbackProcessed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFallbackProcessed:Z

    return-void
.end method

.method public setFocusAreaSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusAreaSupported:Z

    return-void
.end method

.method public setFocusManager(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/constant/AutoFocus;->convertToFocusMode(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setFocusMode(I)V

    :cond_1
    return-void
.end method

.method public setFocusOrAELockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusOrAELockSupported:Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setHistogramTagDefault()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHistogramTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHistogramValue(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOO()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_HISTOGRAM_FUNCTION_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLastSatFallbackRequestId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    return-void
.end method

.method public setLastZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    return-void
.end method

.method public setM3ALocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALocked:Z

    return-void
.end method

.method public setMeteringAreaSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mMeteringAreaSupported:Z

    return-void
.end method

.method public setOpenCameraFail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mOpenCameraFail:Z

    return-void
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPictureSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setSatFallback(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    return-void
.end method

.method public setSatMasterCameraId(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    return-void
.end method

.method public setThermalLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    return-void
.end method

.method public setUWAELocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUltraWideAELocked:Z

    return-void
.end method

.method public setWaitingSnapshot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mWaitingSnapshot:Z

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    return-void
.end method

.method public setZoomSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomSupported:Z

    return-void
.end method

.method public unlockAEAF()V
    .locals 5

    const-string v0, "BaseModuleCameraManager"

    const-string/jumbo v1, "unlockAEAF"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setM3ALocked(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isAeLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->unlockExposure()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isUWAELocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockAEAF: focusMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setFocusMode(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setUWAELocked(Z)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    :cond_2
    return-void
.end method

.method public updateAutoZoomMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setAutoZoomMode(I)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setAutoZoomScaleOffset(F)V

    :cond_1
    return-void
.end method

.method public updateCinematicVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setCinematicVideoEnabled(Z)V

    return-void
.end method

.method public updateDoDepurple()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000oOo()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo00o()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_0
    const-string v0, "MACRO"

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_1
    const-string v0, "TELE"

    .line 9
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_2
    const-string v0, "ULTRA_TELE"

    .line 10
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_3
    const-string v0, "WIDE"

    .line 11
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_4
    const-string v0, "ULTRA_WIDE"

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_5
    const-string v0, "SAT"

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_7

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    move v0, v5

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v4, v0

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isShotQueueMultitasking()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_a

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0O()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v4, v5

    :cond_a
    if-eqz v4, :cond_c

    .line 17
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSatPhysicalCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/CameraCapabilities;

    goto :goto_2

    .line 19
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    .line 20
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSensorDepurpleDisable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    move v5, v4

    .line 21
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/camera2/CameraConfigManager;->setDodepurpleEnabled(Z)V

    return-void
.end method

.method public updateExposureMeteringMode()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getExposureMeteringMode()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setExposureMeteringMode(I)V

    return-void
.end method

.method public updateFocusArea(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "BaseModuleCameraManager"

    const-string/jumbo p1, "updateFocusArea: null focusManager"

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusArea: isAFSaliencyCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModuleCameraManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/module/loader/camera2/FocusManager;->mPreviewPixels:[B

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 8
    invoke-interface {v4}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v4

    .line 9
    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->setSaliencyCheckerInfo([BI)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getDeviceLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "BaseModuleCameraManager"

    const-string/jumbo p1, "updateFocusArea: null camera device"

    .line 13
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    monitor-exit v1

    return-void

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v3

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera2/CameraConfigManager;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFocusAreaSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 23
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFocusAreaSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "manual"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 26
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    .line 27
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO00o;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_1
    const-string p0, "BaseModuleCameraManager"

    const-string/jumbo p1, "updateFocusArea: isAlive false"

    .line 29
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateFpsRange()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPreferBokehFpsRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFpsRange(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public updateFpsRange(ZLandroid/util/Range;)V
    .locals 3

    const-string v0, "BaseModuleCameraManager"

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHfrFPSLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mHfrFPSUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFpsRange(Landroid/util/Range;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera2/CameraConfigManager;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoFpsRangeNeedForHDR()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFpsRange: vhdrRang = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraConfigManager;->setFpsRange(Landroid/util/Range;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFpsRangeDefault()V

    :goto_0
    return-void
.end method

.method public updateFpsRangeDefault()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFpsRange(Lcom/android/camera2/CameraCapabilities;)[Landroid/util/Range;

    move-result-object v1

    const-string v2, "BaseModuleCameraManager"

    if-eqz v1, :cond_c

    .line 3
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 4
    aget-object v4, v1, v3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v5

    const/16 v6, 0x3c

    const/16 v7, 0x1e

    if-ne v5, v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    new-instance v1, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    :cond_2
    const/16 v8, 0x18

    if-nez v5, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v9

    invoke-static {v0, v9}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10
    new-instance v1, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_2

    :cond_3
    if-ne v5, v8, :cond_4

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_2

    .line 12
    :cond_4
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_7

    aget-object v8, v1, v3

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFpsRange: available fps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    if-ne v9, v10, :cond_6

    .line 16
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_6

    :goto_1
    move-object v4, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move-object v1, v4

    .line 17
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_8

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_b

    .line 18
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 19
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 21
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_9

    const-wide/32 v5, 0xfe5d30

    cmp-long v5, v3, v5

    if-gtz v5, :cond_a

    :cond_9
    if-ne v0, v7, :cond_b

    const-wide/32 v5, 0x1fc1e20

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 22
    :cond_a
    new-instance v1, Landroid/util/Range;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 23
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bestRange = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setFpsRange(Landroid/util/Range;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setVideoFpsRange(Landroid/util/Range;)V

    return-void

    :cond_c
    :goto_3
    const-string/jumbo p0, "updateFpsRange: no fps range is available"

    .line 26
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateFrontMirror()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->getMirrorSettingUiNeed(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setFrontMirror(Z)V

    return-void
.end method

.method public updateHdr10VideoMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrueColour()Lcom/android/camera/hdr10/ComponentConfigTrueColour;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setHdr10VideoMode(Z)V

    :cond_3
    return-void
.end method

.method public updateHistogramStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProPhotoHistogramOpen(I)Z

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0OO;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateISO()V
    .locals 3

    const v0, 0x7f12072d

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_iso_key"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    :goto_0
    return-void
.end method

.method public updateJpegThumbnailSize()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thumbnailSize="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseModuleCameraManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateMacroMode(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setMacroMode(Z)V

    return-void
.end method

.method public updateNearRangeMode(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingNearRangeEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/Camera2Proxy;->sendSatFallbackDisableRequest(ZZ)V

    return-void
.end method

.method public updateOIS()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v3, 0xa7

    if-ne v0, v3, :cond_1

    const v0, 0x7f1206ba

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    .line 6
    invoke-static {v3, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oO0O0o()Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    return-void

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTeleOISSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    cmpl-float v0, v1, v3

    if-lez v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSatIsZooming(Z)V

    return-void
.end method

.method public updateSkinColor()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSkinColor(I)V

    :cond_0
    return-void
.end method

.method public updateSpecshotMode()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0xa3

    if-eq v0, v3, :cond_1

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa7

    if-ne v0, v3, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->proPhotoMfnrAlgoSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera2/CameraConfigManager;->setSpecshotModeEnable(Z)V

    return v4
.end method

.method public updateTargetZoom()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readTargetZoom()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setTargetZoom(F)V

    return-void
.end method

.method public updateThermalLevel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setThermalLevel(I)V

    :cond_0
    return-void
.end method

.method public updateUltraPixelPortrait()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setUltraPixelPortrait(Z)V

    return-void
.end method

.method public updateVideoBokeh()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    const-string v2, "BaseModuleCameraManager"

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehLevelBack(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehColorRetentionFront(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehColorRetentionBack(I)V

    :goto_1
    return-void
.end method

.method public updateVideoColorRetention()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoFilterColorRetentionBack(Z)V

    :goto_2
    return-void
.end method

.method public updateVideoLog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoLogEnabled(Z)V

    return-void
.end method

.method public updateWhiteBalance()V
    .locals 2

    const-string/jumbo v0, "pref_camera_whitebalance_key"

    const-string v1, "1"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setAWBMode(Ljava/lang/String;)V

    return-void
.end method
