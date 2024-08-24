.class public Lcom/xiaomi/camera/liveshot/LiveShotManager;
.super Ljava/lang/Object;
.source "LiveShotManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "LiveShotManager"


# instance fields
.field public curGyroscope:[F

.field public lastGyroscope:[F

.field public mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

.field public final mCircularMediaRecorderStateLock:Ljava/lang/Object;

.field public mFilterId:I

.field public mLivePhotoQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/camera/liveshot/LivePhotoResult;",
            ">;"
        }
    .end annotation
.end field

.field public mLiveShotEnabled:Z

.field public mModule:Ljava/lang/ref/WeakReference;
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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLivePhotoQueue:Ljava/util/Queue;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO0O0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private enableGyroscope(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->setGyroscopeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getVideoSize()Landroid/util/Size;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/CameraSize;->width:I

    iget v2, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enableCinematic()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->setCinematicEnable(Z)V

    :cond_0
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLiveShotEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFilterId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mFilterId:I

    return p0
.end method

.method public isGyroStable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->curGyroscope:[F

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->lastGyroscope:[F

    invoke-static {v0, p0}, Lcom/android/camera/Util;->isGyroscopeStable([F[F)Z

    move-result p0

    return p0
.end method

.method public isLivePhotoStarted()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->enabled()Z

    move-result p0

    return p0
.end method

.method public onLivePhotoResultCallback(Lcom/xiaomi/camera/liveshot/LivePhotoResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLivePhotoQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;IZ)V

    :cond_2
    return-void
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->curGyroscope:[F

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->lastGyroscope:[F

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->curGyroscope:[F

    :goto_0
    return-void
.end method

.method public setFilterId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mFilterId:I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->setFilterId(I)V

    :cond_0
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->setOrientationHint(I)V

    :cond_0
    return-void
.end method

.method public snapShot(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/image/ImageModuleUtil;->isLiveShotAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {v4}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setLiveShotTask(Z)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/Module;

    invoke-interface {v4}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v4

    iget p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mFilterId:I

    .line 10
    invoke-virtual {v1, v4, v2, p1, p0}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->snapshot(ILcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;Ljava/lang/Object;I)V

    .line 11
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    const/4 p0, 0x4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStart: isLiveShot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hashcode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const-string v0, "null"

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", savePath = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const-string p1, "null"

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveShotManager"

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLiveShot()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 4
    new-instance v3, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->getVideoSize()Landroid/util/Size;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLivePhotoQueue:Ljava/util/Queue;

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;-><init>(Landroid/util/Size;Landroid/opengl/EGLContext;ZLjava/util/Queue;)V

    iput-object v3, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    .line 6
    :cond_1
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLiveShotEnabled:Z

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->setOrientationHint(I)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->enableGyroscope(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "LiveShotManager"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLiveShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public startLiveShotAnimation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/image/ImageModuleUtil;->isLiveShotAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz p0, :cond_3

    .line 5
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    sget-object v0, LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO00o;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0o0/OooO00o;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 6
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopLiveShot(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->moduleSwitched()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->stop(Z)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->release()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mCircularMediaRecorder:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLiveShotEnabled:Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->enableGyroscope(Z)V

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/LiveShotManager;->mLivePhotoQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateLiveShot()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLiveShot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiveShotManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->startLiveShot()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->stopLiveShot(Z)V

    :cond_1
    :goto_0
    return-void
.end method
