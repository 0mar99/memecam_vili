.class public Lcom/android/camera/module/BaseModule$ModuleConsumer;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule$ModuleConsumer;->accept([I)V

    return-void
.end method

.method public accept([I)V
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1, p1}, Lcom/android/camera/module/BaseModule;->join([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-static {v0}, Lcom/android/camera/module/BaseModule;->access$000(Lcom/android/camera/module/BaseModule;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUpdateWorkThreadDisposable isDisposed. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Lcom/android/camera/module/BaseModule;->access$000(Lcom/android/camera/module/BaseModule;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "begin to consumePreference.."

    .line 6
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/performance/PerformanceManager;->isProfilingStartPreview()Z

    move-result v0

    const-string v2, "applyPreviewSettings"

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3, p1}, Lcom/android/camera/module/BaseModule;->consumePreference([I)V

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getSurfaceCreatedTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    .line 12
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isRepeatingRequestInProgress()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string v2, "captureSessionReady2startPreview"

    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 14
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v2, "startPreview2firstFrame"

    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->shouldCheckSatFallbackState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget v5, p1, v4

    const/16 v6, 0x18

    if-ne v6, v5, :cond_6

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isTargetZooming()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 19
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getLastZoomRatio()F

    move-result p1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v2, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 20
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getLastZoomRatio()F

    move-result v2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/android/camera/module/BaseModule;->maySwitchCameraLens(FF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastZoomRatio(F)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setSatFallback(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastSatFallbackRequestId(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lastFallbackRequestId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getLastSatFallbackRequestId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "skip resumePreview on accept. isAlive = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isRequestInProgress = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule$ModuleConsumer;->this$0:Lcom/android/camera/module/BaseModule;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isRepeatingRequestInProgress()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method
