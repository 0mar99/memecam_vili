.class public interface abstract Lcom/android/camera/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# virtual methods
.method public abstract attachModuleDevice(Lcom/android/camera/features/mode/IModuleDevice;)V
.end method

.method public abstract checkActivityOrientation()V
.end method

.method public abstract exitAutoHibernation()V
.end method

.method public abstract getActivity()Lcom/android/camera/Camera;
.end method

.method public abstract getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;
.end method

.method public abstract getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;
.end method

.method public abstract getDeviceBasedZoomRatio(F)F
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getModuleIndex()I
.end method

.method public abstract getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;
.end method

.method public abstract getMutexModePicker()Lcom/android/camera/MutexModeManager;
.end method

.method public abstract getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;
.end method

.method public abstract getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;
.end method

.method public abstract isCaptureIntent()Z
.end method

.method public abstract isDoingAction()Z
.end method

.method public isInCountDown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isPostProcessing()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isSelectingCapturedResult()Z
.end method

.method public abstract isShot2GalleryOrEnableParallel()Z
.end method

.method public abstract isThermalThreshold()Z
.end method

.method public abstract isZoomEnabled()Z
.end method

.method public abstract keepScreenOn()V
.end method

.method public abstract keepScreenOnAwhile()V
.end method

.method public abstract listenPhoneState(Z)V
.end method

.method public abstract needKeepCoverView()Z
.end method

.method public abstract notifyCTAAgreed()V
.end method

.method public abstract notifyFirstFrameArrived()V
.end method

.method public abstract onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onCameraError()V
.end method

.method public abstract onGLAndCameraReady(II)V
.end method

.method public abstract onModuleCreated(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/StartControl;II)V
.end method

.method public abstract onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onOrientationChanged(III)V
.end method

.method public abstract onRenderRequested()V
.end method

.method public abstract onSharedPreferenceChanged()V
.end method

.method public abstract onVideoCastStateChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract playCameraSound(I)V
.end method

.method public abstract quickEnterAutoHibernation()V
.end method

.method public abstract release(Z)V
.end method

.method public abstract setDeparted()V
.end method

.method public abstract setFrameAvailable(Z)V
.end method

.method public abstract shouldReleaseLater()Z
.end method

.method public abstract switchCameraLens(ZI)V
.end method

.method public abstract thermalConstrained()V
.end method

.method public abstract unRegisterModulePersistProtocol()V
.end method

.method public abstract updatePreviewSurface()V
.end method

.method public abstract updateScreenSlide(Z)V
.end method
