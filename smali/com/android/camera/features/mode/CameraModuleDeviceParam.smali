.class public Lcom/android/camera/features/mode/CameraModuleDeviceParam;
.super Lcom/android/camera/features/mode/ModuleDeviceParam;
.source "CameraModuleDeviceParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    }
.end annotation


# instance fields
.field public isImageCaptureIntent:Z

.field public isParallelEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;-><init>()V

    return-void
.end method

.method private getDefaultParallelOpModeOnce()I
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    const v1, 0x9005

    const-string v2, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_NORMAL"

    const-string v3, "ModuleDevice"

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_SAT"

    .line 8
    invoke-static {v4, v3, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v1, 0x9002

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method


# virtual methods
.method public getCaptureOpModeNotParallel()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x8001

    :cond_3
    :goto_0
    return v1
.end method

.method public getDefaultParallelOpMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    const-string v0, "ModuleDevice"

    const-string v1, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_NORMAL"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x9005

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->getDefaultParallelOpModeOnce()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isBokehFrontCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

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

.method public final isDualFrontCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result p0

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

.method public isImageCaptureIntent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent:Z

    return p0
.end method

.method public isInQcfaMode()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xba

    if-eq v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xb6

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isParallelEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled:Z

    return p0
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent:Z

    return-void
.end method

.method public setParallelEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled:Z

    return-void
.end method
