.class public Lcom/android/camera/module/image/ImageModuleCameraManager;
.super Lcom/android/camera/module/common/BaseModuleCameraManager;
.source "ImageModuleCameraManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageModuleCameraManager"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;-><init>(Lcom/android/camera/module/Module;)V

    return-void
.end method


# virtual methods
.method public consumePreference(I)Z
    .locals 2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no consumer for this updateType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageModuleCameraManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->consumePreference(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->updateNormalWideLDC()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isPictureUseDualFrontCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getActualCameraId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0O()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldApplyNormalWideLDC()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldNormalWideLDCBeVisibleInMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isZoomRatioBetweenUltraAndWide()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isNormalWideLDCEnabled()Z

    move-result p0

    return p0
.end method

.method public updateAsdNightPreferred(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xab

    if-ne v2, v3, :cond_6

    .line 4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 8
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setLLSForceDisabled(Z)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightSeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightOn()Z

    move-result v0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAsdNightPreferred isAsdNightOn ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImageModuleCameraManager"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setLLSForceDisabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraConfigManager;->setMiviSuperNightMode(I)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setAsdAlgorithmEnable(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateNormalWideLDC()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->shouldApplyNormalWideLDC()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setNormalWideLDC(Z)V

    return-void
.end method

.method public updateShotBoostParams()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setShotBoostParams(Ljava/util/function/Consumer;)V

    return-void
.end method
