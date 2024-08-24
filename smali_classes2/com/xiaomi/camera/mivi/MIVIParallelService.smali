.class public Lcom/xiaomi/camera/mivi/MIVIParallelService;
.super Landroid/app/Service;
.source "MIVIParallelService.java"


# static fields
.field public static final MAX_RETRY_COUNT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "MIVIParallelService"


# instance fields
.field public mImageReceiverExecutor:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

.field public mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mService:LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/mivi/MIVIParallelService;)Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mImageReceiverExecutor:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    return-object p0
.end method

.method private registerCallback()V
    .locals 5

    const-string v0, "MIVIParallelService"

    :try_start_0
    const-string v1, "registerCallback: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mService:LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    if-nez v1, :cond_0

    const-string v1, "registerCallback: get IBGService failed"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService;->retryRegister()V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mService:LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    new-instance v3, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;-><init>(Lcom/xiaomi/camera/mivi/MIVIParallelService;)V

    invoke-interface {v1, v2, v3}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(ILOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)I

    move-result v1

    const/4 v2, 0x3

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback: result > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mService:LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO;-><init>(Lcom/xiaomi/camera/mivi/MIVIParallelService;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private retryRegister()V
    .locals 4

    const-wide/16 v0, 0x32

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: retry register , retry times > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIVIParallelService"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService;->registerCallback()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    const-string v0, "MIVIParallelService"

    const-string v1, "onCreate: init"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualBackCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualFrontCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->init(Landroid/content/Context;)V

    .line 6
    new-instance v0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mImageReceiverExecutor:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->start()V

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService;->registerCallback()V

    return-void
.end method

.method public synthetic OooO00o(J)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceDied: cookie >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "MIVIParallelService"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService;->retryRegister()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "MIVIParallelService"

    const-string p1, "onBind: "

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MIVIParallelService"

    const-string v1, "onCreate: "

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oo;-><init>(Lcom/xiaomi/camera/mivi/MIVIParallelService;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "MIVIParallelService"

    const-string v1, "onDestroy: "

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mService:LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(ILOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->deInit()V

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService;->mImageReceiverExecutor:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->release()V

    return-void
.end method
