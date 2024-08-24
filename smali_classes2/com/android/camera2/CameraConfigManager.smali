.class public Lcom/android/camera2/CameraConfigManager;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraConfigManager"


# instance fields
.field public mConfigs:Lcom/android/camera2/CameraConfigs;

.field public mDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionConfigs:Lcom/android/camera2/SessionConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/android/camera2/CameraConfigs;

    invoke-direct {v0}, Lcom/android/camera2/CameraConfigs;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-void
.end method


# virtual methods
.method public applyAiShutterEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterEnable(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public applyBokehFallBackEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigs;->setBokehFallBackEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehFallBackEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public applyHighQualityPreferred(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyHighQualityPreferred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfigManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigs;->setHighQualityPreferred(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    return-void
.end method

.method public applyMixQuickShot(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMixQuickShotEnabled(Z)V

    return-void
.end method

.method public applyOfflineFlushEnable(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->applyOfflineFlushEnable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraConfigManager"

    const-string p1, "device was crash, there is no way to notify hal flush offline log"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public applyVideoHdrMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoHdrEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public getConfig()Lcom/android/camera2/CameraConfigs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object p0
.end method

.method public getSessionConfig()Lcom/android/camera2/SessionConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mSessionConfigs:Lcom/android/camera2/SessionConfig;

    return-object p0
.end method

.method public initSessionConfig(Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/SessionConfig;

    invoke-direct {v0, p1}, Lcom/android/camera2/SessionConfig;-><init>(Lcom/android/camera2/CameraCapabilities;)V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mSessionConfigs:Lcom/android/camera2/SessionConfig;

    return-void
.end method

.method public isBokeh1X()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result p0

    return p0
.end method

.method public isNeedPreviewThumbnail()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSwMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAELock(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAELock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAELock(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method public setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    const-string v0, "CameraConfigManager"

    const-string v1, "setAERegions"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    const-string v0, "CameraConfigManager"

    const-string v1, "setAFRegions"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAIIEPreviewEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiAIIEPreviewEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiAIIEPreviewEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setASDEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDEnable(Z)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setASDEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraConfigManager"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setASDPeriod(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiSceneDetectPeriod(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiSceneDetectPeriod(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setASDScene(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDScene(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAWBLock(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAWBLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBLock(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method public setAWBMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAWBMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    return-void
.end method

.method public setAiASDEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiASDEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAiMoonEffectEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiMoonEffectEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiMoonEffectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAiShutterExistMotion(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterExistMotion(Z)Z

    return-void
.end method

.method public setAmbilightAeTarget(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbilightAeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightAeTarget(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbilightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAntiBanding(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAntiBanding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAntiBanding(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setAsdAlgorithmEnable(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAsdAlgorithmEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAsdAlgorithmEnable(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAsdAlgorithmEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAsdDirtyEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAsdDirtyEnable(Z)Z

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomMode(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomScaleOffset(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomScaleOffset(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBeautyLens(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeautyLens "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBeautyLens(I)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBinningPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBinningPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)Z

    :cond_0
    return-void
.end method

.method public setBokeh1X(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBokeh1X(Z)V

    return-void
.end method

.method public setBokehDepthSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehDepthSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBokehMainRawSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehMainRawSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setBokehSubRawSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehSubRawSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setCameraAI30(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCameraAi30Enable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setCameraProxy(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCaptureIntent(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setCaptureIntent(I)Z

    return-void
.end method

.method public setCaptureTime(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setCaptureTime(J)V

    return-void
.end method

.method public setCinematicPhotoEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicPhotoEnabled(Z)V

    return-void
.end method

.method public setCinematicVideoEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCinematicVideoEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicVideoEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setColorEnhanceEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setColorEnhanceEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setConfig(Lcom/android/camera2/CameraConfigs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-void
.end method

.method public setContrast(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContrast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setContrastLevel(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setCustomAWB(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomAWB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCustomAWB(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDeviceOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setDodepurpleEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDodepurpleEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setDualBokehEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDualBokehEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setDualCamWaterMarkEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setDualCamWaterMarkEnable(Z)Z

    return-void
.end method

.method public setEnableEIS(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableEIS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableEIS(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setEnableOIS(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOIS(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableOIS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfigManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigs;->setEnableOIS(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setEnableZsl(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableZsl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableZsl(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureCompensationIndex(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 6
    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setExposureMeteringMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureMeteringMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureMeteringMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setExtendSceneMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExtendSceneMode(I)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExtendSceneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraConfigManager"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setFNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFNumber(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFaceAgeAnalyze(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceAgeAnalyzeEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setFacePoseEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFacePoseEnable(Z)Z

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFacePossEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFakeSatEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatEnable(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFakeSatEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFlashAutoDetectionEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashAutoDetectionEnabled(Z)V

    return-void
.end method

.method public setFlawDetectEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFlawDetectEnable(Z)Z

    return-void
.end method

.method public setFocusDistance(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusDistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusDistance(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setFocusMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpsRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewFpsRange(Landroid/util/Range;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFrameRatio(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFrameRatio(I)V

    return-void
.end method

.method public setFrontMirror(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrontMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFrontMirror(Z)V

    return-void
.end method

.method public setGlobalWatermark()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->setGlobalWatermark()V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setGpsLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRStatus(Lcom/android/camera2/Camera2Proxy$HDRStatus;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setHDRCheckerEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setHDRCheckerStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerStatus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setHDRMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setHdr10VideoMode(Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_5

    return-void

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setHistogramStatsEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHistogramStatsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHistogramStatsEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setInTimerBurstShotting(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInTimerBurstShotting: ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setInTimerBurstShotting(Z)Z

    return-void
.end method

.method public setIsFaceExist(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setIsFaceExist(Z)V

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegQuality(I)Z

    return-void
.end method

.method public setJpegRotation(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegRotation(I)Z

    return-void
.end method

.method public setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setThumbnailSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setLLS(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSEnabled(Z)Z

    return-void
.end method

.method public setLLSForceDisabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLLSForceDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSForceDisabled(Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setLensDirtyDetect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLensDirtyDetectEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setLimitMfnrNumFramesEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setLimitMfnrNumFramesEnabled(Z)Z

    return-void
.end method

.method public setMFLockAfAe(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    return-void
.end method

.method public setMacroMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroMode(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setMacroPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setMfnr(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setMiviSuperNightMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMiviSuperNightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMiviSuperNightMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setModuleAnchorFrame(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setModuleAnchorFrame(Z)V

    return-void
.end method

.method public setMotionDetectionArea(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMotionDetectionArea(Landroid/graphics/Rect;)Z

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMotionDetectionArea: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getMotionDetectionArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  , changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraConfigManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMotionDetectionArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setMotionDetectionEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMotionDetectionEnable(Z)Z

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMotionDetectionEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMotionDetectionEnable  changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isMotionDetectionEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMotionDetectionEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setMtkPipDevices([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMtkPipDevices([I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setMultiSnapStopRequest(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMultiSnapStopRequest(Z)V

    return-void
.end method

.method public setNeedPausePreview(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPausePreview(Z)Z

    return-void
.end method

.method public setNeedSequence(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setNeedSequence(Z)V

    return-void
.end method

.method public setNewWatermark(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setNewWatermark(Z)V

    return-void
.end method

.method public setNormalWideLDC(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNormalWideLDC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setNormalWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setOnTripodModeStatus([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setOnTripodScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setOutputPhotoFormat(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setOutputPhotoFormat(I)V

    return-void
.end method

.method public setParallelSettings(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setParallelSettings(II)V

    return-void
.end method

.method public setPortraitLighting(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPortraitLightingPattern(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setPreviewMaxImages(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewMaxImages(I)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setQcfaEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setQcfaEnable(Z)V

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setQuickShotAnimation(Z)V

    return-void
.end method

.method public setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfMacro(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTele(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfWide(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setSATUltraWideLDC(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSATUltraWideLDC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method public setSatIsZooming(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSatIsZooming(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setSaturation(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSaturation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSaturationLevel(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setSensorRawImageSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSharpness(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSharpness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSharpnessLevel(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setShot2Gallery(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShot2Gallery: isShot2Gallery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setShot2Gallery(Z)Z

    return-void
.end method

.method public setShotSavePath(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShotSavePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isParallel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera2/CameraConfigs;->setShotPath(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setShotType(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShotType: algo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setShotType(I)Z

    return-void
.end method

.method public setSingleBokeh(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSingleBokehEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setSkinColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSkinColor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setSpecshotModeEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSpecshotModeEnable(Z)Z

    return-void
.end method

.method public setSubPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSubPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSubPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSuperNight(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperNightEnabled(Z)V

    return-void
.end method

.method public setSuperResolution(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperResolutionEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setSwMfnr(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSwMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setTargetZoom(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTargetZoom(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setThermalLevel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setThermalLevel(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setTimeWaterMarkEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkEnable(Z)Z

    return-void
.end method

.method public setTimeWatermarkValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackEyeEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackFocusEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTrackEyeEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setTrackFocusEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackFocusEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTrackFocusEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setTuningBufferSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTuningBufferSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningBufferSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setTuningMode(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningMode(B)Z

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setUltraPixelPortrait(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraPixelPortraitEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setUltraWideLDC(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUltraWideLDC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mSessionConfigs:Lcom/android/camera2/SessionConfig;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ULTRA_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v2, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isUltraWideLDCEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mSessionConfigs:Lcom/android/camera2/SessionConfig;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    :cond_1
    return-void
.end method

.method public setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setVideoBokehColorRetentionBack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehColorRetentionBack(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setVideoBokehColorRetentionFront(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehColorRetentionFront(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setVideoBokehLevelBack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelBack(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoBokehLevelFront(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelFront(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFilterColorRetentionBack(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionBack(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setVideoFilterColorRetentionFront(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionFront(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setVideoFilterId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterId(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFilterRecordControlEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterRecordControlEnabled(Z)V

    return-void
.end method

.method public setVideoFpsRange(Landroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoFpsRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFpsRange(Landroid/util/Range;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setVideoLogEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoLogEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setIsVideoLogEnabled(Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method public setWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRatio(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public setZoomRatioForCapture(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRatioForCapture(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraConfigManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    const-string v0, "CameraConfigManager"

    const-string v1, "startFaceDetection"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    const-string v0, "CameraConfigManager"

    const-string v1, "stopFaceDetection"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera2/CameraConfigManager;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigManager;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method
