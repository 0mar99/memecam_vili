.class public Lcom/android/camera/module/FilmDreamModule$1;
.super Ljava/lang/Object;
.source "FilmDreamModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FilmDreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FilmDreamModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FilmDreamModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

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
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/FilmDreamModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onDeviceBecomeStable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-static {v0}, Lcom/android/camera/module/FilmDreamModule;->access$400(Lcom/android/camera/module/FilmDreamModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/FilmDreamModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FilmDreamModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/FilmDreamModule;->access$501(Lcom/android/camera/module/FilmDreamModule;D)V

    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    return-void
.end method

.method public onDeviceLieChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/FilmDreamModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceOrientationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p1

    int-to-float p1, p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setDeviceRotation(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/FilmDreamModule$1;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDeviceRotation()F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result p0

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_1
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method
