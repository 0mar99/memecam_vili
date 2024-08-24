.class public Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
.super Ljava/lang/Object;
.source "ManuallyValueChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/ManuallyValueChanged;


# static fields
.field public static final TAG:Ljava/lang/String; = "ManuallyValueChangeImpl"


# instance fields
.field public mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentModule:Lcom/android/camera/module/Module;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(FILcom/android/camera/protocol/protocols/ZoomProtocol;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->onZoomRatioChanged(FI)V

    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/protocol/protocols/ZoomProtocol;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->updateSATZooming(Z)V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getZoomProtocol()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ZoomProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->impl2()Lcom/android/camera/protocol/protocols/ZoomProtocol;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getModuleIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    return p0
.end method

.method public onBokehFNumberValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBokehFNumberValueChanged: newFNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeFNumber(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x30

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDualLensSwitch: currValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->next(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    const/16 v3, 0xa7

    if-eq p2, v3, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const-string v3, "macro"

    if-ne p2, v2, :cond_3

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {p2, v1}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v4

    const-string/jumbo v5, "normal"

    .line 9
    invoke-virtual {v4, p2, v5}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_3
    :goto_1
    const-string/jumbo v4, "wide"

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 11
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    .line 12
    :cond_4
    invoke-virtual {p1, p2, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const-string/jumbo p1, "ultra"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {p2, v5}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v5

    const-string/jumbo v6, "tele"

    const-string v7, "Standalone"

    const/4 v8, 0x1

    if-nez v5, :cond_5

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    :goto_2
    move v1, v8

    goto/16 :goto_3

    .line 16
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v5

    .line 17
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByWide()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_e

    .line 19
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelRawSupportedByWide()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 21
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_e

    .line 22
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelRawSupportedByUltraTele()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 23
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 24
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_e

    .line 25
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelRawSupportedByUltraWide()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 26
    :cond_b
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 27
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    if-eqz v5, :cond_e

    .line 28
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelRawSupportedByTele()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 29
    :cond_d
    sget-object v4, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FIXME: Lens type = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    if-eqz v1, :cond_f

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 31
    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 33
    invoke-virtual {v1, p2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOn(I)V

    goto :goto_4

    .line 34
    :cond_10
    invoke-virtual {v1, p2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 35
    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLensChanged(Ljava/lang/String;I)V

    .line 36
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 38
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p1

    goto :goto_5

    .line 39
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 40
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p1

    goto :goto_5

    .line 41
    :cond_12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 42
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result p1

    goto :goto_5

    .line 43
    :cond_13
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 44
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    goto :goto_5

    .line 45
    :cond_14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    .line 46
    :goto_5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p1

    if-nez p1, :cond_15

    .line 47
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    :cond_15
    if-eq p2, v2, :cond_16

    .line 48
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setComponentValue(ILjava/lang/String;)V

    .line 52
    :cond_16
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_17

    .line 53
    invoke-static {p2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x5

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :cond_17
    return-void
.end method

.method public onDualLensZooming(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setZooming(Z)V

    :cond_2
    return-void
.end method

.method public onDualZoomValueChanged(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDualZoomValueChanged: newValueRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getZoomProtocol()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0;-><init>(FI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onETValueChanged: oldValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getValueDisplayString(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p3, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackExposureTimeChanged(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_4

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0o()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0o()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    .line 9
    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_3

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_4

    new-array p2, v0, [I

    const/16 p3, 0xc1

    aput p3, p2, v1

    .line 11
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 12
    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x5

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0x10
        0x14
        0x1e
        0x22
        0xa
    .end array-data
.end method

.method public onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackEVChanged(Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureCompensationStep(Lcom/android/camera2/CameraCapabilities;)F

    move-result p1

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 8
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEVValueChanged: newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", evValue="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p2, 0x3

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method public onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusValueChanged: oldValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getManualFocusName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 7
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    const/16 p2, 0xa7

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooooO()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string p1, "auto"

    .line 11
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "manual"

    .line 12
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateFocusMode(Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v0, [I

    const/4 p2, 0x0

    const/16 p3, 0xe

    aput p3, p1, p2

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onISOValueChanged: oldValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p3, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackIsoChanged(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0o()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "0"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/16 v0, 0xc1

    aput v0, p2, p3

    .line 7
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0xa
    .end array-data
.end method

.method public onPictureStyleChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWBValueChanged: newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCustomValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa7

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getKey(I)Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_1

    const-string p2, "manual"

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAwbChanged(Ljava/lang/String;I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 p3, 0x6

    aput p3, p1, p2

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetManuallyParameters(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentData;

    .line 6
    instance-of v5, v4, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 8
    :cond_1
    instance-of v5, v4, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    const/16 v6, 0xa

    const-string v7, "mm"

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreMutexFlash(Ljava/lang/String;)V

    const/16 v4, 0xf

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    instance-of v5, v4, Lcom/android/camera/data/data/config/ComponentManuallyET;

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreMutexFlash(Ljava/lang/String;)V

    const/16 v4, 0x10

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x1e

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x22

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x14

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    instance-of v5, v4, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    if-eqz v5, :cond_4

    const/16 v4, 0xe

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 21
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 23
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_4
    instance-of v4, v4, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    if-eqz v4, :cond_5

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 26
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->resetEvValue()V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 27
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 28
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 30
    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateSATIsZooming(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getZoomProtocol()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo00o;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo00o;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
