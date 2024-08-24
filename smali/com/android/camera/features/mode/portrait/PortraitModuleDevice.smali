.class public Lcom/android/camera/features/mode/portrait/PortraitModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "PortraitModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method

.method private getOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result p0

    const v0, 0x8002

    if-eqz p0, :cond_3

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0O0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isBokehFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x80f1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isBokehFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x8005

    :cond_3
    :goto_0
    return v0
.end method

.method private getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result p0

    const-string v0, "ModuleDevice"

    const/4 v1, 0x4

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isDualFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_SINGLE_BOKEH"

    .line 2
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x9003

    goto :goto_0

    :cond_0
    const-string p0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_DUAL_BOKEH"

    .line 3
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x9000

    :goto_0
    return p0
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/portrait/PortraitModuleDevice;->getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/portrait/PortraitModuleDevice;->getOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    :goto_0
    return p0
.end method
