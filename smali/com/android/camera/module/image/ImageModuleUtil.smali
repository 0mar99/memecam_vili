.class public Lcom/android/camera/module/image/ImageModuleUtil;
.super Ljava/lang/Object;
.source "ImageModuleUtil.java"


# static fields
.field public static final REQUEST_CROP:I = 0x3e8

.field public static final SHUTTER_FROM_ANCHOR:I = 0x1

.field public static final SHUTTER_FROM_CAPTURE_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ImageModuleUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvAdjustable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvAdjustable(Z)V

    :goto_0
    return-void
.end method

.method public static animateCapture(ZLcom/android/camera/Camera;)V
    .locals 6

    if-nez p0, :cond_5

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->animateCapture()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/16 v1, 0x66

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v5

    if-nez v5, :cond_3

    const v5, 0x3f333333    # 0.7f

    goto :goto_2

    :cond_3
    const v5, 0x3e99999a    # 0.3f

    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 10
    invoke-virtual {p0, v1, v3}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererAttribute(I[Ljava/lang/Object;)V

    if-lez p1, :cond_4

    const/4 v0, 0x3

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(ILjava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(ILjava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static getImageFormat(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    :goto_0
    return p0
.end method

.method public static getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static isEnableQcfaForAlgoUp(Lcom/android/camera/module/common/ModuleCameraManagerInterface;ZZ)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    if-eqz p2, :cond_2

    return p0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0Oo()Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isLiveShotAvailable(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMultipleRawBokehUseCase(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMiviSuperNightBokehUseCase: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getNightTriggerMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageModuleUtil"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightSE()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightOwlDetected()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static updateEvAdjust(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0Oo;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
