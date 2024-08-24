.class public Lcom/android/camera/module/image/LocalParallelServiceStatusListener;
.super Ljava/lang/Object;
.source "LocalParallelServiceStatusListener.java"

# interfaces
.implements Lcom/android/camera/LocalParallelService$ServiceStatusListener;


# instance fields
.field public final mCamera2ModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0}, Lcom/android/camera/module/common/ModuleUtil;->shouldNotShotQuick(Lcom/android/camera2/Camera2Proxy;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    :cond_1
    return-void
.end method

.method public onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/module/common/ModuleUtil;->shouldNotShotQuick(Lcom/android/camera2/Camera2Proxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/image/LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->onParallelImagePostProcStart()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    iget-wide p1, v0, Lcom/android/camera/module/Camera2Module;->mShot2Shot:J

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Shot(J)V

    .line 11
    iget-wide p1, v0, Lcom/android/camera/module/Camera2Module;->mShot2Shutter:J

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Shutter(J)V

    .line 12
    iget-wide p1, v0, Lcom/android/camera/module/Camera2Module;->mShot2Gallery:J

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Gallery(J)V

    :cond_3
    return-void
.end method
