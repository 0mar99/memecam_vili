.class public Lcom/android/camera/module/Camera2Module$3;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/MutexModeManager$MutexCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->getMutexCallback()Lcom/android/camera/MutexModeManager$MutexCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterMutexMode(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setSuperResolution(Z)V

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOO0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->isSuperResolutionHDR()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    move p1, v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    if-eqz v1, :cond_3

    or-int/lit8 p1, p1, 0x2

    :cond_3
    if-ne v0, p1, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isMultipleRawHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit8 p1, p1, 0x8

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMutexMode: hdrType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-direct {v1, p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V

    .line 9
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$900(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public exitMutexMode(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera2/CameraConfigManager;->setSuperResolution(Z)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    new-instance v0, Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-direct {v0, v1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$900(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method
