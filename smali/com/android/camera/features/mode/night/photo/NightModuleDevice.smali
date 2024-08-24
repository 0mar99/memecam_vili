.class public Lcom/android/camera/features/mode/night/photo/NightModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "NightModuleDevice.java"


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

    const p1, 0x800a

    if-eqz p0, :cond_1

    const p0, 0x8005

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method private getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0xad

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->getDefaultParallelOpMode()I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    const-string p1, "ModuleDevice"

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_SUPER_NIGHT"

    .line 5
    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x800a

    :goto_1
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

    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/night/photo/NightModuleDevice;->getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/night/photo/NightModuleDevice;->getOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    :goto_0
    return p0
.end method
