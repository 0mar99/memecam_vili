.class public Lcom/xiaomi/camera/device/CameraService;
.super Ljava/lang/Object;
.source "CameraService.java"


# static fields
.field public static final NORMAL_MSG_TYPE:I = 0x1

.field public static final REASON_CAMERA_ERROR:I = 0x2

.field public static final REASON_CLOSE:I = 0x0

.field public static final REASON_DISCONNECTED:I = 0x1

.field public static final SHOTBOOST_TYPE:I = 0x65

.field public static final STICKY_MSG_TYPE:I = 0xa

.field public static final TAG:Ljava/lang/String;

.field public static final sInstance:Lcom/xiaomi/camera/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/util/Singleton<",
            "Lcom/xiaomi/camera/device/CameraService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCameraCallableHandler:Landroid/os/Handler;

.field public final mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/CameraService$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraService$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    .line 2
    const-class v0, Lcom/xiaomi/camera/device/CameraService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/device/CameraService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    iput-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 7
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0OO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0OO;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 8
    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraService;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static addCameraCallableDelayed(ILcom/xiaomi/camera/device/callable/CameraCallable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static addShotBoostCallableDelayed(Lcom/xiaomi/camera/device/callable/CameraCallable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;J)V"
        }
    .end annotation

    const/16 v0, 0x65

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallableDelayed(ILcom/xiaomi/camera/device/callable/CameraCallable;J)V

    return-void
.end method

.method public static addStickyCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static varargs closeAllCameras([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lcom/xiaomi/camera/device/CameraService;->closeCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs closeCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "Ljava/lang/Void;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static execute(Lcom/xiaomi/camera/device/callable/CameraCallable;)Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/camera/device/callable/CameraCallable<",
            "TT;>;)",
            "Lcom/xiaomi/camera/device/callable/CallableReturn<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 2
    sget-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/compat/common/MessageQueueCompat;->isPolling(Landroid/os/MessageQueue;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/device/CameraService;->TAG:Ljava/lang/String;

    const-string v2, "CameraService is being stuck..."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAM_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaomi/camera/device/CameraService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sget-object v3, Lcom/xiaomi/camera/device/CameraService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO00o;-><init>(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    return-object p0
.end method

.method public static execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 7
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    .line 9
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getCameraCallableHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaomi/camera/device/CameraService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraService;

    return-object v0
.end method

.method public static hasPendingCallable(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public static varargs openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/xiaomi/camera/device/callable/OpenCameraListener;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static preload()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    return-void
.end method

.method public static releaseAllCamerasAndWait()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->execute(Lcom/xiaomi/camera/device/callable/CameraCallable;)Lcom/xiaomi/camera/device/callable/CallableReturn;

    return-void
.end method

.method public static releaseCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static removeCameraCallables()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static removeShotBoostCallable()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public getConcurrentStreamingCameraIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
