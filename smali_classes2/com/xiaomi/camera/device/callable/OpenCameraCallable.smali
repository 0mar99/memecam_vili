.class public Lcom/xiaomi/camera/device/callable/OpenCameraCallable;
.super Lcom/xiaomi/camera/device/callable/CameraCallable;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/device/callable/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPEN_RETRY_COUNT:I = 0xa

.field public static final OPEN_RETRY_SLEEP:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "OpenCameraCallable"


# instance fields
.field public final mExclusions:[Ljava/lang/String;

.field public final mOpenCameraListener:Lcom/xiaomi/camera/device/callable/OpenCameraListener;

.field public mRetryCount:I

.field public final mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;[Ljava/lang/String;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    .line 3
    iput-object p4, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mExclusions:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mOpenCameraListener:Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    .line 5
    new-instance p1, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    return p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    return p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mOpenCameraListener:Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    return-object p0
.end method


# virtual methods
.method public call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/camera/device/callable/CallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera is already opened: cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOOo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->cancelSession()V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 8
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 9
    :cond_1
    sget-boolean v0, Lcom/android/camera/CameraAppImpl;->sCameraDeviceDisable:Z

    if-eqz v0, :cond_2

    .line 10
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    new-instance v0, Lcom/xiaomi/camera/device/exception/CameraDisabledException;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/exception/CameraDisabledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 12
    iget-boolean v6, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    if-eqz v6, :cond_3

    .line 13
    sget-object v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraId:Ljava/lang/String;

    aput-object v1, v6, v3

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    aput-object v1, v6, v4

    const-string v1, "CameraService is busy (cid = %s), postpone the open request (cid = %s)"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mExclusions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->closeAllCameras([Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    .line 16
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string v1, "createActivity2openCamera"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 18
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openCamera@"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 19
    iput v3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    .line 20
    :goto_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: E: cid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: retries = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 23
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v0

    iput-boolean v4, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 24
    sget-object v0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: X: cid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {v0, v2}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open camera "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->mRetryCount:I

    const/16 v3, 0xa

    if-le v1, v3, :cond_5

    .line 28
    sget-object p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    const-string v1, "Retry exceed max limit, return exception"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_5
    const-wide/16 v0, 0xc8

    .line 30
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 31
    sget-object v1, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: while opening camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_2
    move-exception v0

    .line 33
    sget-object v1, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraAccessException: Can\'t open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public postCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "postCallback"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
