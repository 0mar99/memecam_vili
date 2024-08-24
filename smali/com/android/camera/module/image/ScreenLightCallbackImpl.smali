.class public Lcom/android/camera/module/image/ScreenLightCallbackImpl;
.super Ljava/lang/Object;
.source "ScreenLightCallbackImpl.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenLightCallbackImpl"


# instance fields
.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/ScreenLightCallbackImpl;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/FullScreenProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;

    invoke-direct {v1, p0, p1, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0;-><init>(ILcom/android/camera/module/Module;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;ILcom/android/camera/protocol/protocols/FullScreenProtocol;)V
    .locals 0

    .line 2
    invoke-interface {p3, p0}, Lcom/android/camera/protocol/protocols/FullScreenProtocol;->setScreenLightColor(I)V

    .line 3
    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/FullScreenProtocol;->showScreenLight()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 5
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/Camera;->setWindowBrightness(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->isLcdScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {p3}, Lcom/android/camera/Util;->setLcdScreenLightEffect(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 10
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    .line 12
    invoke-static {}, Lcom/android/camera/display/Display;->isLcdScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {v1}, Lcom/android/camera/Util;->setLcdScreenLightEffect(Z)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/FullScreenProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0O;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0O;-><init>(Lcom/android/camera/module/Module;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Module;Lcom/android/camera/protocol/protocols/FullScreenProtocol;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopScreenLight: protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",module = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenLightCallbackImpl"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/FullScreenProtocol;->hideScreenLight()V

    return-void
.end method


# virtual methods
.method public startScreenLight(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/ScreenLightCallbackImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo;

    invoke-direct {v1, p1, p0, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo;-><init>(ILcom/android/camera/module/Module;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public stopScreenLight()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/ScreenLightCallbackImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo0o;-><init>(Lcom/android/camera/module/Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
