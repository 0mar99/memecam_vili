.class public Lcom/android/camera/features/mode/pixel/PixelModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "PixelModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method

.method private getOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x8005

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x8007

    goto :goto_0

    :cond_0
    const p0, 0x80f3

    :cond_1
    :goto_0
    return p0
.end method

.method private getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p0

    const-string p1, "ModuleDevice"

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    const-string p0, "getOperatingMode: SESSION_OPERATION_MODE_ULTRA_PIXEL_SELF"

    .line 2
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x9009

    goto :goto_0

    :cond_0
    const-string p0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_HD"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const p0, 0x9004

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

    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/pixel/PixelModuleDevice;->getParallelOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/pixel/PixelModuleDevice;->getOpMode(Lcom/android/camera/features/mode/CameraModuleDeviceParam;)I

    move-result p0

    :goto_0
    return p0
.end method
