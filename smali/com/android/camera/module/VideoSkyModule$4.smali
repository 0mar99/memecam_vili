.class public Lcom/android/camera/module/VideoSkyModule$4;
.super Ljava/lang/Object;
.source "VideoSkyModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoSkyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoSkyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

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
    invoke-static {}, Lcom/android/camera/module/VideoSkyModule;->access$000()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoSkyModule;->access$1000(Lcom/android/camera/module/VideoSkyModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/VideoSkyModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/VideoSkyModule;->access$1101(Lcom/android/camera/module/VideoSkyModule;D)V

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
    .locals 0

    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoSkyModule;->access$1200(Lcom/android/camera/module/VideoSkyModule;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    neg-float v2, v2

    aput v2, v0, v1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoSkyModule;->access$1200(Lcom/android/camera/module/VideoSkyModule;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoSkyModule;->access$1200(Lcom/android/camera/module/VideoSkyModule;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, v0, v1

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/VideoSkyModule$4;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {p0}, Lcom/android/camera/module/VideoSkyModule;->access$1200(Lcom/android/camera/module/VideoSkyModule;)[F

    move-result-object p0

    const/4 v0, 0x3

    aget p1, p1, v0

    aput p1, p0, v0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method
