.class public Lcom/android/camera2/MiCamera2MIVIBaseShot$1;
.super Ljava/lang/Object;
.source "MiCamera2MIVIBaseShot.java"

# interfaces
.implements Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/MiCamera2MIVIBaseShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->onFinalImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v1, :cond_0

    const-string v1, "mCurrentParallelTaskData is null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onAllHalFrameReceived: 1 > %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->CALLBACK_STATE_FINISH:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleCaptureFinished()V

    :cond_1
    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onImageReceived: final image come firstly , timestamp is %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooOO0;

    invoke-direct {v3, p0, p1}, LOooO0O0/OooO0O0/OooO0O0/OooOO0;-><init>(Lcom/android/camera2/MiCamera2MIVIBaseShot$1;Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->onFinalImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    :goto_1
    return-void
.end method
