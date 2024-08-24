.class public Lcom/android/camera/features/mode/night/video/NightVideoModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "NightVideoModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x8031

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getFrontOperationModeNotVideo()I

    move-result p0

    return p0
.end method
