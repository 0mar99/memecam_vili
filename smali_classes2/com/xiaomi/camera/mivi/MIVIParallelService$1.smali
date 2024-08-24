.class public Lcom/xiaomi/camera/mivi/MIVIParallelService$1;
.super LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO0O0;
.source "MIVIParallelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/mivi/MIVIParallelService;->registerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/mivi/MIVIParallelService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/MIVIParallelService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;->this$0:Lcom/xiaomi/camera/mivi/MIVIParallelService;

    invoke-direct {p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO0O0;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/MIVICaptureManager;->setSnapshotAvailability(I)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "MIVIParallelService"

    const-string v1, "onCaptureCompleted: E"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lcom/xiaomi/camera/MIVICaptureManager;->notifyCaptureCompleted(Ljava/lang/String;J)V

    const-string p0, "onCaptureCompleted: X"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaomi/camera/MIVICaptureManager;->notifyCaptureFailed(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public notifyCallback(LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MIVIParallelService"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;->this$0:Lcom/xiaomi/camera/mivi/MIVIParallelService;

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService;->access$000(Lcom/xiaomi/camera/mivi/MIVIParallelService;)Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->opt(LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;)Lcom/xiaomi/camera/mivi/bean/RequestData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->submit(Lcom/xiaomi/camera/mivi/bean/RequestData;)V

    const/4 p0, 0x1

    return p0
.end method

.method public notifySnapshotAvailability(I)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oO;

    invoke-direct {v0, p1}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oO;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCaptureCompleted(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0
.end method

.method public onCaptureFailed(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0
.end method
