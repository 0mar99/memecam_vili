.class public Lcom/android/camera/module/Camera2Module$2;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->access$801(Lcom/android/camera/module/Camera2Module;D)V

    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    return-void
.end method

.method public onDeviceLieChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v1, v0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v0

    add-int/2addr v0, p1

    if-eq v1, v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 8
    fill-array-data v3, :array_0

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->isContainAlertRecommendTip([I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 10
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    invoke-virtual {v0, v1, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x190

    .line 11
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 13
    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1388

    .line 14
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 16
    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 17
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f120360
        0x7f120624
        0x7f120623
        0x7f120625
    .end array-data
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 3

    if-nez p2, :cond_0

    move v0, p1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    int-to-float v0, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setDeviceRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDeviceRotation()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v1

    .line 6
    invoke-virtual {v0, p2, v1}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p2

    add-int/2addr p2, p1

    .line 11
    rem-int/lit16 p2, p2, 0x168

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$2;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->sensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
