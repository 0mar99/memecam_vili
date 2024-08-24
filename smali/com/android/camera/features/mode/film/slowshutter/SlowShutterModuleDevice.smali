.class public Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "SlowShutterModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getOperatingModeNotVideo()I

    move-result p0

    return p0
.end method
