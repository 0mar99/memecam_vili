.class public Lcom/android/camera2/CaptureRequestBuilder;
.super Ljava/lang/Object;
.source "CaptureRequestBuilder.java"


# static fields
.field public static final MAX_REALTIME_EXPOSURE_TIME:J = 0x7735940L

.field public static final TAG:Ljava/lang/String; = "CaptureRequestBuilder"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAELock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAERegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAERegions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "applyAERegions: default 0"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/android/camera2/MiCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAFRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAFRegions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "applyAFRegions: default 0"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/android/camera2/MiCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAsdEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isASDEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isASDSceneSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyASDScene(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getASDScene()I

    move-result p0

    .line 4
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyASDScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyASDScene(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAWBLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyAiAIIEPreviewEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIPreviewEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "is tag defined:false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isAIIEPreviewEnabled()Z

    move-result p0

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiAIIEPreviewEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result p1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAiASDEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiMoonEffectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAiMoonEffectEnableSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyAiMoonEffectEnable: is not Support"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isAiMoonEffectEnabled()Z

    move-result p0

    .line 4
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAiMoonEffectEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiMoonEffectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAiPortraitDeblur(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiSceneDetectPeriod(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAiSceneDetectPeriod()I

    move-result p1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiScenePeriod(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAiShutterEnable(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result p0

    .line 6
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAiShutterEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyAiShutterExistMotion return; run mtk aishutter 1.0"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result p1

    .line 5
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAiShutterExistMotion.isAiShutterEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isAiShutterExistMotion()Z

    move-result p1

    .line 7
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyAiShutterExistMotion.isAiShutterExistMotion: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAmbilightAeTarget(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAmbilightMode()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getmAmbilightAeTarget()I

    move-result p1

    .line 4
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAmbilightAeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAmbilightAutoAeTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAmbilightMode()I

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAmbilightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyAnchorTimeStamp return; run mtk aishutter 1.0"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getAISDefaultBehavior(Z)B

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getAnchorTimeStamp()Ljava/lang/Long;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyAnchorTimeStamp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    return-void
.end method

.method public static applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAntiBanding()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isEISEnabled()Z

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isOISEnabled()Z

    move-result p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EIS&OIS are both on"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EIS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "on"

    const-string v4, "off"

    if-eqz v0, :cond_3

    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOIS(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OIS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    .line 12
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public static applyAsdAlgorithmEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAsdAlgorithmEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAsdAlgorithmEnable()I

    move-result p0

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAsdAlgorithmEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAsdAlgorithmEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isAsdDirtyEnable()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAsdDirtyEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAutoZoomMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAutoZoomScaleOffset()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBackSoftLightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyBackSoftLight(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyBackSoftLight(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyBackSoftLight(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBackwardCaptureHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBackwardCaptureSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyBackwardCaptureHint(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyBackwardCaptureHint(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyBackwardCaptureHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedBeautyLens(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getBeautyLens()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCaptureRequestVendorKeys(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyBeautyParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashSet;Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method

.method public static applyBokehFallBackEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedBoKehFallBackEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isBokehFallBackEnable()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyBokehFallBackEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyBokehFallBackEnable(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "not support bokeh role"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3f

    goto :goto_0

    :cond_2
    const/16 p1, 0x3d

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCameraAi30(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isCameraAi30Enabled()Z

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isCinematicPhotoEnabled()Z

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method public static applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCinematicPhotoSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return-void

    .line 3
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyCinematicPhoto: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p3}, Lcom/android/camera2/compat/MiCameraCompat;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCinematicVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getColorEffect()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isColorEnhanceEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getColorEnhanceEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyColorEnhanceEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportColorRetentionBackRequestTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoFilterColorRetentionBack()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoFilterColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportColorRetentionFrontRequestTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoFilterColorRetentionFront()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoFilterColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportContrast(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getContrastLevel()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    return-void
.end method

.method public static applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyCvLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCvLens(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getCvLens()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyCvLens(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    return-void
.end method

.method public static applyCvLensSessionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;B)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SESSIONKEY_BOKEH_CV_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTagDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCvLensSessionMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyCvLensSessionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyCvType(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;B)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCvType(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCvType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCvType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isDodepurpleEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDepurple(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyDepurpleEnable: is not Support  "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_3
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyDepurpleEnable: dodepurpleEnabled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDeviceOrientation(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyDeviceOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDualBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyDualBokeh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyDualBokehEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v1

    const-wide/32 v2, 0x7735940

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x419dcd6500000000L    # 1.25E8

    div-double/2addr v0, v4

    double-to-float p1, v0

    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 7
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyExposureCompensation: EV = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureCompensationRational(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Rational;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v0, v4

    double-to-int p1, v0

    .line 10
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxExposureCompensation(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 12
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyExposureCompensation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getExposureMeteringMode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    return-void
.end method

.method public static applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-wide/32 p1, 0x7735940

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyExposureTime: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    return-void
.end method

.method public static applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result p1

    .line 2
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyExtendSceneMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportExtendedMaxZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyExtendedMaxZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehAdjust(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "set f number on unsupported devices"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getFNumber()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getFNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFaceAgeAnalyze(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isFaceAgeAnalyzeEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceAgeAnalyzeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isFaceDetectionEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFacePossEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFacePossEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isFacePoseEnable()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyFacePoseEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFakeSatEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isFakeSatEnable()Z

    move-result p0

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyFakeSatEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyFakeSatEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getFlashCurrent()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyFlawDetectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusDistance()F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public static applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isForceDisableLLS(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isLLSForceDisabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getPreviewFpsRange()Landroid/util/Range;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFpsRange: fpsRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFrameRatio(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyFrameRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFrontMirror(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyFrontMirror: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isFrontMirror()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isFrontMirror()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    .line 3
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyHDR:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdr10Video(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getHDR10Video()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAutoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isHDRCheckerEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrCheckerStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getHDRCheckerStatus()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getHDRMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHHT(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyHdrBokeh: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isHighQualityPreferred()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyHighQualityPreferred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedHistogramStats(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isHistogramStatsEnabled()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyHistogramStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    .line 3
    :cond_2
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0o()I

    move-result p1

    if-lez p1, :cond_3

    .line 6
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyMfnrFrameNum: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrFrameNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_3
    return-void
.end method

.method public static applyInsensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportInsensorZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "not support insensorzoom enable"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyInsensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7735940

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x419dcd6500000000L    # 1.25E8

    div-double/2addr v1, v3

    double-to-float p1, v1

    int-to-float p3, v0

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 4
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyIso: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyISO(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLensDirtyDetect(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isLensDirtyDetectEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMacroMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isMacroMode()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyMacroMode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMiviSuperNightMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result p0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    const/16 p3, 0xa

    if-ne p0, p3, :cond_2

    move p0, p3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 4
    :cond_3
    :goto_0
    sget-object p3, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyMiviSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", applyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p2, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void

    .line 6
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyMiviSuperNight(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public static applyMixQuickShot(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportQuickShot(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isMixQuickShotEnabled()Z

    move-result p0

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMixQuickShot(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public static applyMotionDetectionArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMotionDetectionArea(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyMotionDetectionArea: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getMotionDetectionArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getMotionDetectionArea()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMotionDetectionArea(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    return-void

    .line 4
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, " applyMotionDetectionArea something is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static applyMotionDetectionEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMotionDetectionEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyMotionDetectionEnable MOTION_DETECTION_ENABLE is not define "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyMotionDetectionEnable   enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isMotionDetectionEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isMotionDetectionEnable()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMotionDetectionEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    .line 5
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, " applyMotionDetectionEnable something is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_STREAMING_FEATURE_PIP_DEVICES:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object p1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method private applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportNormalWideLDC(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getNormalWideLDCEnabled()Z

    move-result p2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    const/4 p2, 0x0

    .line 3
    :cond_2
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyOfflineFlushEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportOfflineFlush()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string v0, "applyOfflineFlushEnable: 1"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyOfflineFlushEnable(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void

    .line 4
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "unsupport applyOfflineFlushEnable"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getOnTripodScenes()[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getOnTripodScenes()[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyParallelImageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelSnapshot(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyParallelSnapshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPortraitLighting(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getPortraitLightingPattern()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyPreviewFullSize(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;[I)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPreviewFullSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPreviewFullSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyPreviewFullSize(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyPreviewMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPreviewMirror(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPreviewMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyPreviewMirror(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportSATUltraWideLDCEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFallbackEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applySatFallbackDisable: request null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFallbackDisable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SAT_FALLBACK_DISABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "applySatFallbackDisable: %s not defined"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 4
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSatIsZooming()Z

    move-result p1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getSaturationLevel()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    return-void
.end method

.method public static applyScreenLightHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isScreenLightHintSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyScreenLightHint(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyScreenLightHint(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyScreenLightHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyScreenLightLevel(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isScreenLightLevelSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    const-string p1, "applyScreenLightLevel(): unsupported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyScreenLightLevel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyScreenLightLevel(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/camera2/SessionConfig;->apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getSharpnessLevel()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    return-void
.end method

.method public static applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportShrinkMemoryMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    return-void
.end method

.method public static applyShutterTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportShutterTimestamp(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyShutterTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getShutterTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getShutterTimestamp()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyShutterTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    return-void
.end method

.method public static applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMiBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applySingleBokeh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySingleBokehEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSkinColor(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getSkinColorType()I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x64

    .line 4
    invoke-static {p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    :goto_0
    return-void
.end method

.method public static applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothTransitionEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSuperNightBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applySuperNightBokeh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public static applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSuperNight(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 3
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PARALLEL_REPEATING: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 4
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APPLY_PREVIEW: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5
    :cond_4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_5

    .line 7
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_5

    .line 8
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_5

    .line 9
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLASH_DISABLE_NIGHT:   FALSH_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    .line 15
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMiviSatSuperNightSupported: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 17
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableSuperNightWhenEvChanged && APPLY_CAPTURE && aeLocked: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v2

    .line 20
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSuperNightEnabled: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_0
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applySuperNightScene: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 23
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDebugInfoAsWatermarkSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDebugInfoAsWatermarkEnabled()Z

    move-result p1

    .line 25
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show debug info as watermark: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DEBUG_INFO_AS_WATERMARK:Lcom/android/camera2/vendortag/VendorTag;

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 28
    invoke-static {p0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 4

    if-eqz p0, :cond_6

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSuperResolution(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result p2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const-string v1, ", applyType = "

    const-string v2, "applySuperResolution: "

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applySuperResolution: ignored for applyType("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p3, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_1

    .line 7
    :cond_2
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-ne p1, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v0

    .line 8
    :cond_5
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", configs "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller > "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSwMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 2
    invoke-static {p0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    :cond_2
    const/4 p1, 0x2

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    .line 4
    :cond_4
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOO0O()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isSwMfnrEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTargetZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getTargetZoom()F

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTargetZoom(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportThermalLevel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getThermalLevel()I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyThermalLevel(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTrackEye(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isTrackEyeEnabled()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackEyeEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyTrackFeatureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTrackFocus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTagDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isTrackFocusEnabled()Z

    move-result p1

    .line 6
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackFeatureEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyTrackFeatureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTrackFocus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackFocusArea: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportTrackFocus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isTrackFocusEnabled()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMiTuningMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getTuringMode()B

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTuningMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isUltraPixelPortraitTagDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isUltraPixelPortraitEnabled()Z

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyUltraPixelPortrait: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportUltraWideLDC(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isUltraWideLDCEnabled()Z

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyVideoBokehColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehColorRetentionBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoBokehColorRetentionBack()I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoBokehColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyVideoBokehColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehColorRetentionFront(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoBokehColorRetentionFront()I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoBokehColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehLevelBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoBokehLevelBack()I

    move-result p1

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoBokehBackLevel(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehLevelFront(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoBokehLevelFront()F

    move-result p1

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoBokehFrontLevel(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterRequestTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getVideoFilterId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    return-void
.end method

.method public static applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p1

    const/4 v1, 0x2

    if-eq v1, p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyBackSoftLight(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 4
    :cond_4
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 5
    :cond_5
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getVideoFpsRange()Landroid/util/Range;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVideoFpsRange: fpsRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result p2

    .line 3
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVideoHdrMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 5
    sget-object p1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_OFF:[I

    .line 7
    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoMfnrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoMFHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isProVideoLogEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isVideoLogEnabled()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoLogEnable(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportWatermark(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const-string p1, ""

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyWaterMarkAppliedList(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00oo()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 4
    :cond_4
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getWaterMarkAppliedList()Ljava/util/List;

    move-result-object p1

    const-string v0, ","

    invoke-static {v0, p1}, Lcom/android/camera/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWaterMark appliedList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyWaterMarkAppliedList(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomWatermark(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "device"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->isCinematicPhotoEnabled()Z

    move-result p2

    invoke-static {p2}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getWatermarkFileName(Z)Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/vendor/persist/camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCustomWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    :cond_5
    const-string p2, "watermark"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getTimeWaterMarkValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyTimeWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    :cond_6
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p3, p0}, Lcom/android/camera2/CameraConfigs;->setNewWatermark(Z)V

    return-void
.end method

.method public static applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isZoomRatioSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0, p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    .line 5
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    invoke-static {p2, v0}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 8
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyZoomRatio-R: cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " zoomRatio: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 11
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-static {p0, v1}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 13
    sget-object p0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyZoomRatio(): cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", zoomRatio = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", activeArraySize = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cropRegion = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result p1

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureRequestBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyZsl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method
