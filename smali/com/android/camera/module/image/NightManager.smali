.class public Lcom/android/camera/module/image/NightManager;
.super Ljava/lang/Object;
.source "NightManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NightManager"


# instance fields
.field public mCaptureSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

.field public mDisableAlgoTipAlreadyShown:Z

.field public mIsLLSNeeded:Z

.field public mMiviSuperNightCheckerCanceled:Z

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

.field public mShowLLSHint:Z

.field public mShowSuperNightHint:Z

.field public mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

.field public mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitingSuperNightResult:Z

.field public minusHysteresis:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(FLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 10
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvMappingValue(F)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/ActionProcessing;)V
    .locals 0

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposePrepare()V

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposeStart()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 1

    const/16 v0, 0x8

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoOO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    return-void
.end method

.method public static synthetic OooO0O0(FLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvMappingValue(F)V

    return-void
.end method

.method public static synthetic OooO0OO()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    return-void
.end method

.method public static synthetic OooO0Oo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    return-void
.end method

.method public static isLongExpCaptureInCaptureMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mapRawSuperNightImplTypeToCallbackType(I)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected raw super night type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NightManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :cond_3
    :goto_0
    return v0
.end method

.method private nightAlgoShouldBeDisabled()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo00()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "NightManager"

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera2/CaptureResultParser;->isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Night algo disabled by HAL!"

    .line 7
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThermalDetector;->thermalCloseNightAlgo()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Night algo disabled by thermal!"

    .line 10
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 p0, 0x5

    .line 11
    invoke-static {p0}, Lcom/android/camera/Util;->isAsyncLowPower(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowLLSHint:Z

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/NightManager;->finishSuperNightState(Z)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOo0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    return-void
.end method

.method public exitNightInCaptureMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    const/16 v2, 0xa3

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xab

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    .line 6
    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/image/NightManager;->setLLSNeeded(Z)V

    .line 7
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v2}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setLLS(Z)V

    .line 9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 10
    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x54
        0x5e
    .end array-data
.end method

.method public finishSuperNightState(Z)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    :cond_3
    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    invoke-static {v3, v3}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    if-nez v5, :cond_4

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v6

    if-nez v6, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v6, v4, v7}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v3

    .line 16
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v7

    if-nez v7, :cond_6

    return-void

    :cond_5
    move v6, v3

    .line 17
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v7

    if-eqz v7, :cond_b

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz v2, :cond_7

    .line 19
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v5, :cond_8

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, p1, v3

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    move v6, v4

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    invoke-static {p1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 23
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 24
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    :cond_9
    const/4 p0, 0x5

    .line 25
    invoke-interface {v7, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingStart(I)V

    .line 26
    :cond_a
    invoke-interface {v7}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    :cond_b
    if-eqz v6, :cond_c

    .line 27
    invoke-virtual {v2, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 28
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_d

    move p0, v4

    goto :goto_4

    :cond_d
    move p0, v3

    :goto_4
    if-eqz v2, :cond_f

    if-nez v6, :cond_f

    .line 29
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p0, :cond_f

    if-nez v5, :cond_f

    .line 30
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isCapAnimPlayed()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 31
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    goto :goto_5

    .line 32
    :cond_e
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    .line 33
    :goto_5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 34
    invoke-virtual {v2, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    :cond_f
    return-void
.end method

.method public handleLLSResultInCaptureMode()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowLLSHint:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO0;-><init>(Lcom/android/camera/module/image/NightManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public handleLongExpCaptureIfNeeded()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->asdNightIsValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NightManager"

    if-eqz v3, :cond_3

    .line 6
    iget-boolean v3, p0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    if-eqz v3, :cond_2

    const-string/jumbo p0, "prepareLongExpCaptureIfNeeded: mivi super night is canceled"

    .line 7
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "handleLongExpCaptureIfNeeded"

    .line 12
    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "mivi2 playCameraSound"

    .line 17
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isReadPixelRequested()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x1

    .line 21
    invoke-virtual {v2, p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    const-string v1, "mivi neight readpixel"

    .line 22
    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    new-array v3, p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 25
    :cond_6
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOOo;

    invoke-direct {v0, v2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOOo;-><init>(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 26
    :cond_7
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 27
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_8
    :goto_1
    return-void
.end method

.method public handleSuperNightEvMapValue(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->getSuperNightEvMappingMaskByMode(Lcom/android/camera2/CameraCapabilities;I)I

    move-result v1

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSuperNightEvMappingSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/image/NightManager;->mPreviewSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 6
    iget p2, v2, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    float-to-int p2, p2

    shr-int/lit8 p2, p2, 0x8

    if-ne p2, v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget p2, v2, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->luxIndex:F

    iget-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->minusHysteresis:Z

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSuperNightManualEvMappingValue(Lcom/android/camera2/CameraCapabilities;FIZ)F

    move-result v3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/module/image/NightManager;->minusHysteresis:Z

    .line 9
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0o;

    invoke-direct {p1, v3}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0o;-><init>(F)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 p1, 0xad

    if-ne p0, p1, :cond_4

    .line 11
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO;

    invoke-direct {p1, v3}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOO;-><init>(F)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public handleSuperNightResultIfNeed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xad

    if-eq v2, v3, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->stopCpuBoost()V

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0O0()Z

    move-result v2

    if-nez v2, :cond_5

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_4
    return v1

    .line 11
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_6

    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_6
    return v1

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 17
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mWaitingSuperNightResult:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    const-string v2, "NightManager"

    const-string v3, "SuperNight: force trigger shutter animation, sound and post saving"

    .line 18
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_9
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/camera/module/image/NightManager;->finishSuperNightState(Z)V

    goto :goto_0

    .line 21
    :cond_a
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOOO;

    invoke-direct {v3, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOOO;-><init>(Lcom/android/camera/module/image/NightManager;Z)V

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return v1
.end method

.method public handleSuperNightResultInCaptureMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOoo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOoo;-><init>(Lcom/android/camera/module/image/NightManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public isLLSNeeded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/image/NightManager;->mIsLLSNeeded:Z

    return p0
.end method

.method public isSuperNightSeEnable()Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "NightManager"

    if-nez v2, :cond_5

    const-string v2, "2"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "3"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    const-wide/16 v4, 0x1b58

    add-long/2addr v1, v4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v1, v4

    if-lez p0, :cond_3

    :cond_2
    const-string p0, "isSuperNightSeEnable: disabled by auto flash"

    .line 10
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string/jumbo p0, "se"

    .line 11
    invoke-static {p0, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "isSuperNightSeEnable: disabled by property"

    .line 12
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 13
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSuperNightSeEnable: disabled by flash "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public prepareLLSInCaptureMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xb6

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xba

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowLLSHint:Z

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v1, v0, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public prepareLongExpCaptureIfNeeded()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v3, :cond_15

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->asdNightIsValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const-string v4, "NightManager"

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    if-eqz v3, :cond_2

    const-string/jumbo p0, "prepareLongExpCaptureIfNeeded: mivi super night is canceled"

    .line 6
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo p0, "prepareLongExpCaptureIfNeeded: null exp time"

    .line 8
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v6

    .line 11
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 12
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v7

    .line 13
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 14
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodOwlDetected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 15
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodSeDetected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 17
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightOwlDetected()Z

    move-result v8

    const/4 v9, 0x5

    if-eqz v8, :cond_7

    .line 19
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightMotionDetected()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 21
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightSE()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 23
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isDarkSeForPortrait()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 24
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 25
    :cond_9
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    .line 26
    :cond_a
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepareLongExpCaptureIfNeeded : SuperNight, captureTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 27
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v7

    if-nez v7, :cond_d

    .line 28
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->forceTriggerLLS()V

    .line 29
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getLLSCaptureTime()I

    move-result v7

    .line 30
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 31
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    .line 32
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepareLongExpCaptureIfNeeded : LLS + MFNR, captureTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 33
    :cond_d
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isHdrDetected()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 34
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getHdrCaptureExpTime()I

    move-result v7

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepareLongExpCaptureIfNeeded : Bokeh + HDR, captureTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    move v7, v6

    .line 36
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isLongNightCaptureAnimEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    move v7, v6

    .line 37
    :cond_f
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v8

    if-nez v8, :cond_10

    .line 39
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 40
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->isSupportParallelSuperNightEnable()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 41
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareLongExpCaptureIfNeeded : SuperNight + parallel, captureTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 43
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v3

    if-nez v3, :cond_11

    .line 44
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSupportParallelLLSEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareLongExpCaptureIfNeeded : LLS + MFNR + parallel, captureTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v7, v6

    :cond_11
    if-lez v7, :cond_14

    const-string/jumbo v1, "prepareLongExpCaptureIfNeeded: start animation"

    .line 46
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v2, v5}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 48
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOOo;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 49
    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    if-nez v1, :cond_12

    .line 50
    new-instance v1, Lcom/android/camera/module/image/SuperNightEventConsumer;

    invoke-direct {v1, v0}, Lcom/android/camera/module/image/SuperNightEventConsumer;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 51
    :cond_12
    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 52
    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    :cond_13
    const/16 v1, 0x8

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    int-to-long v3, v7

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-virtual {v1, v3, v4, v5}, Lio/reactivex/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 57
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 58
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 59
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    goto :goto_4

    .line 60
    :cond_14
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 61
    invoke-static {v5, v6}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    :cond_15
    :goto_4
    return-void
.end method

.method public prepareSuperNightInCaptureMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isRepeatingRequestInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->showDisableNightAlgoTipIfNeeded()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    .line 7
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 10
    invoke-interface {p0, v1, v0, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public prepareSuperNightModule()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xad

    if-eq v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/image/NightManager;->mWaitingSuperNightResult:Z

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getTotalExposureTime([B)I

    move-result v4

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->initMultiFrameTotalCaptureDuration(I)V

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v4

    const-string v5, "NightManager"

    if-nez v4, :cond_4

    const-string/jumbo v4, "prepareSuperNight: startCpuBoost"

    .line 12
    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    .line 13
    invoke-static {v4}, Lcom/android/camera/module/common/ModuleUtil;->startCpuBoost(I)V

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0O0()Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 17
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 18
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v6

    if-nez v6, :cond_9

    .line 19
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodOwlDetected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodSeDetected()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 22
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightOwlDetected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 24
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightSE()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 26
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    .line 27
    :cond_9
    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    if-nez v6, :cond_a

    .line 28
    new-instance v6, Lcom/android/camera/module/image/SuperNightEventConsumer;

    invoke-direct {v6, v0}, Lcom/android/camera/module/image/SuperNightEventConsumer;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v6, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 29
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 30
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    .line 31
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    const-string/jumbo v0, "prepareSuperNight: emitter STATE START"

    .line 33
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_b
    if-eqz v3, :cond_c

    .line 35
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-virtual {v3, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 39
    invoke-static {v4, v2}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    return-void

    :cond_d
    if-eqz v3, :cond_e

    .line 40
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    invoke-virtual {v3, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 42
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 43
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onLongExposePrepare()V

    .line 44
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onLongExposeStart()V

    :cond_f
    const/16 v0, 0x12c

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/image/NightManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/image/NightManager$1;-><init>(Lcom/android/camera/module/image/NightManager;)V

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setLLSNeeded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/image/NightManager;->mIsLLSNeeded:Z

    return-void
.end method

.method public showDisableNightAlgoTipIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_1

    const/16 v2, 0xad

    if-eq v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo00()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/image/NightManager;->mDisableAlgoTipAlreadyShown:Z

    if-nez v1, :cond_3

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/camera/Util;->isAsyncLowPower(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f1202ca

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/image/NightManager;->mDisableAlgoTipAlreadyShown:Z

    :cond_3
    return-void
.end method

.method public updateSuperNight()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/NightManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    .line 4
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setFlashAutoDetectionEnabled(Z)V

    const/16 v3, 0xad

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    if-eqz v6, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/image/NightManager;->nightAlgoShouldBeDisabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    if-ne v2, v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->setSuperNightMismatch(Z)V

    move v6, v5

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->setSuperNightMismatch(Z)V

    .line 9
    :goto_3
    iget-object v3, p0, Lcom/android/camera/module/image/NightManager;->mPreviewSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    iput-object v3, p0, Lcom/android/camera/module/image/NightManager;->mCaptureSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 11
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/camera2/CameraConfigManager;->setFlashAutoDetectionEnabled(Z)V

    new-array p0, v4, [I

    const/16 v3, 0xb

    aput v3, p0, v5

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<updateSuperNight>isSuperNightSeOn:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "NightManager"

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/camera2/CameraConfigManager;->setSuperNight(Z)V

    .line 15
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    const/4 v3, 0x0

    if-nez v6, :cond_6

    .line 16
    iget-object v7, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v7}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightSeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 17
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v7

    if-nez v7, :cond_a

    .line 18
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 19
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    if-nez v6, :cond_8

    .line 20
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v5}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->setMiviSuperNightData(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    goto/16 :goto_6

    .line 22
    :cond_8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-static {v1, v6, v2, p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->parseResult(Landroid/hardware/camera2/CaptureResult;ZILcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSupportSuperNightManualEvMap()Z

    move-result v1

    if-nez v1, :cond_9

    .line 24
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Lcom/android/camera/module/image/SuperNightCbImageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/image/SuperNightCbImageImpl;->isEvChanged()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->overrideTriggerMode(Z)V

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setMiviSuperNightData(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    goto :goto_6

    :cond_a
    const/16 v0, 0xab

    if-ne v2, v0, :cond_b

    .line 26
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCaptureExpTimeDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    if-nez v0, :cond_b

    .line 29
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-static {v0, v6, v2, p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->parseResult(Landroid/hardware/camera2/CaptureResult;ZILcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setMiviSuperNightData(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    goto :goto_6

    .line 31
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 32
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 33
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 34
    invoke-static {v5, v5}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    goto :goto_5

    .line 35
    :cond_c
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOO0O;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 36
    :cond_d
    :goto_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->setMiviSuperNightData(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    :goto_6
    return-void
.end method
