.class public Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
.super Ljava/lang/Object;
.source "Camera2OpenManager.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;
.implements Lcom/xiaomi/camera/device/callable/OpenCameraListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;",
        "Lcom/xiaomi/camera/device/callable/OpenCameraListener;"
    }
.end annotation


# static fields
.field public static final CAMERA_OPEN_OR_CLOSE_TIMEOUT:J = 0x2710L

.field public static final MAX_CONCURRENT_STREAMING_CAMERA_COUNT:I = 0x2

.field public static final POP_CAMERA_DELAY_CREATE_SESSION:J

.field public static final TAG:Ljava/lang/String; = "Camera2OpenManager"

.field public static final sInstance:Lcom/xiaomi/camera/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/util/Singleton<",
            "Lcom/android/camera/module/loader/camera2/Camera2OpenManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCameraResultEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field public final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mCurrentModule:I

.field public mPendingCameraId:I

.field public mPopCameraTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "delay_create_session"

    const-wide/16 v1, 0x1c2

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->POP_CAMERA_DELAY_CREATE_SESSION:J

    .line 2
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    const/16 v0, 0xa0

    .line 4
    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:I

    .line 5
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurs in camera open or close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/compat/common/MessageQueueCompat;->isPolling(Landroid/os/MessageQueue;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "CameraHandlerThread is being stuck..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "open camera timeout cookie.mIsOpening false"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    .line 11
    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p0

    const/16 v0, 0xec

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lcom/xiaomi/camera/rx/CameraOpenObservable;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->fire(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public static synthetic OooO00o(I)[Ljava/lang/String;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private abandonCameraResultObservable()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "abandonCameraResultObservable: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "abandonCameraResultObservable: fire"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v1

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    .line 9
    :cond_0
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "abandonCameraResultObservable: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private delay()V
    .locals 7

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    sub-long/2addr v0, v2

    .line 3
    sget-wide v2, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->POP_CAMERA_DELAY_CREATE_SESSION:J

    sub-long/2addr v2, v0

    .line 4
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay: elapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", remaining = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "delay: sleep: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "delay: sleep: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    :cond_1
    return-void
.end method

.method private fire(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fire: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requested cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->delay()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "fire: emitted"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fire: skipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getCameraOpTimeout()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getExposureTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method public static getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    return-object v0
.end method

.method private openDualCamera(I[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dual video openCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0o0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/xiaomi/camera/rx/CameraOpenObservable;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;

    move-result-object p2

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0OO;

    invoke-direct {v0, v2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0OO;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    .line 11
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaomi/camera/rx/CameraOpenObservable;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    .line 15
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private reusable(II)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOOo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    if-eq v0, p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:I

    if-eq p0, p2, :cond_2

    const/16 p1, 0xcc

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    const/16 p1, 0xa9

    if-ne p2, p1, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isFastmotionLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, p0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    return v1

    :cond_4
    return p0
.end method

.method private subscribeCameraResultObservable(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeCameraResultObservable: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getCameraOpTimeout()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0O0;

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->publish()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    .line 8
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p0}, Lio/reactivex/observables/ConnectableObservable;->connect()Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 10
    :goto_1
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "subscribeCameraResultObservable: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object p0

    return-object p0
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClosed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0o0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    move-result p0

    .line 8
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClosed: takebackMotor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCameraClosed(I)V

    :cond_2
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnected: cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClosed: cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errno = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    if-eq p2, p0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_CAMERA_ERROR: unknown camera error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ERROR_CAMERA_SERVICE:the camera service has encountered a fatal error."

    goto :goto_0

    :cond_1
    const-string v0, "ERROR_CAMERA_DEVICE:the camera device has encountered a fatal error"

    goto :goto_0

    :cond_2
    const-string v0, "ERROR_CAMERA_DISABLED:camera device could not be opened due to a device policy"

    goto :goto_0

    :cond_3
    const-string v0, "ERROR_MAX_CAMERAS_IN_USE:there are too many other open camera devices"

    goto :goto_0

    :cond_4
    const-string v0, "ERROR_CAMERA_IN_USE:camera device being used by a higher-priority camera API client"

    .line 4
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    aput-object v0, p0, p1

    const-string p1, "CameraDevice:ErrorCode:%d Info:%s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpened: cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->openCamera()V

    :cond_1
    return-void
.end method

.method public openCamera(IILio/reactivex/Observer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/reactivex/Observer<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0o0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    if-eq v3, p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->popupMotor()Z

    move-result v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    .line 8
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openCamera: popupMotor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-wide/16 v3, -0x1

    .line 9
    iput-wide v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimestamp:J

    .line 10
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->reusable(II)Z

    move-result v0

    .line 11
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openCamera: reusable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    .line 12
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", fcc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 13
    iget v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    if-ne v3, p1, :cond_3

    iget v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:I

    if-eq v3, p2, :cond_4

    .line 14
    :cond_3
    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    .line 15
    iput p2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:I

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->abandonCameraResultObservable()V

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 18
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeCameraCallables"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->removeCameraCallables()V

    const/16 v3, 0xcc

    if-eqz p4, :cond_5

    if-nez v0, :cond_5

    const/4 p4, 0x0

    goto :goto_2

    :cond_5
    if-ne p2, v3, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p4

    .line 21
    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0oo;

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p4

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0o0;

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-array p4, v2, [Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v1

    .line 23
    :goto_2
    invoke-static {p4}, Lcom/xiaomi/camera/device/CameraService;->closeAllCameras([Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p3}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->subscribeCameraResultObservable(Lio/reactivex/Observer;)V

    if-ne p2, v3, :cond_7

    .line 25
    invoke-direct {p0, p1, p4}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openDualCamera(I[Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_7
    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/xiaomi/camera/rx/CameraOpenObservable;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;

    move-result-object p1

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;

    invoke-direct {p3, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0O/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    .line 27
    invoke-virtual {p1, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertCameraSetupThread()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->removeCameraCallables()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->abandonCameraResultObservable()V

    .line 7
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "E: releaseAllCamerasAndWait"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->releaseAllCamerasAndWait()V

    .line 9
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "X: releaseAllCamerasAndWait"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method
