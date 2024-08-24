.class public Lcom/xiaomi/camera/rx/CameraSchedulers;
.super Ljava/lang/Object;
.source "CameraSchedulers.java"


# static fields
.field public static final sASDScheduler:Lio/reactivex/Scheduler;

.field public static final sCameraCallableScheduler:Lio/reactivex/Scheduler;

.field public static final sCameraSetupScheduler:Lio/reactivex/Scheduler;

.field public static final sCameraWorkScheduler:Lio/reactivex/Scheduler;

.field public static final sIsCameraSetupThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMainThreadScheduler:Lio/reactivex/Scheduler;

.field public static final sSDKScheduler:Lio/reactivex/Scheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 2
    sget-object v0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;

    .line 3
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->createSingleScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/Scheduler;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/rx/CameraSchedulers$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/rx/CameraSchedulers$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sIsCameraSetupThread:Ljava/lang/ThreadLocal;

    .line 5
    sget-object v0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO00o;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO00o;

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->createSingleScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    sget-object v0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0O0;

    .line 8
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->createSingleScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/Scheduler;

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    .line 11
    sget-object v0, Lcom/android/camera/CameraWorkExecutor;->NORMAL_WORK_EXECUTOR:Lcom/android/camera/CameraWorkExecutor;

    invoke-static {v0}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0Oo;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "SDKScheduler"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic OooO0OO(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/camera/rx/CameraSchedulers$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/CameraSchedulers$2;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "CameraSetup"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic OooO0Oo(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/camera/rx/CameraSchedulers$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/CameraSchedulers$3;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "ASDScheduler"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sIsCameraSetupThread:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static isOnCameraHandlerThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOnCameraSetupThread()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sIsCameraSetupThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
