.class public Lcom/android/camera/module/pano/PanoramaModuleBase$1;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source "PanoramaModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/pano/PanoramaModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/pano/PanoramaModuleBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/pano/PanoramaModuleBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase$1;->this$0:Lcom/android/camera/module/pano/PanoramaModuleBase;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase$1;->this$0:Lcom/android/camera/module/pano/PanoramaModuleBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase$1;->this$0:Lcom/android/camera/module/pano/PanoramaModuleBase;

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

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o000o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase$1;->this$0:Lcom/android/camera/module/pano/PanoramaModuleBase;

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p0, p1}, Lcom/android/camera/panorama/SensorFusion;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
