.class public Lcom/android/camera/module/AmbilightModule$7;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

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

.method public onDeviceOrientationChanged(FZ)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p1

    int-to-float p1, p1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setDeviceRotation(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$7;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 5
    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDeviceRotation()F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result p0

    .line 6
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_2
    return-void
.end method
