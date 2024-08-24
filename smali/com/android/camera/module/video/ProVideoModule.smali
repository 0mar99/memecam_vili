.class public Lcom/android/camera/module/video/ProVideoModule;
.super Lcom/android/camera/module/VideoModule;
.source "ProVideoModule.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/ChangeGainProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method private getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/video/ProVideoModule$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/ProVideoModule$1;-><init>(Lcom/android/camera/module/video/ProVideoModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-object v0
.end method


# virtual methods
.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 2
    new-instance p0, Lcom/android/camera/module/interceptor/camera/HistogramMultipleASD;

    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/interceptor/camera/HistogramMultipleASD;-><init>(Lcom/android/camera/protocol/protocols/TopAlert;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/ProVideoModule;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-void
.end method

.method public isEnableScreenShot()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeautyScreenshot(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-virtual {v2, v0, v3}, Lcom/android/camera/module/video/UserRecordSetting;->needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 6
    :cond_3
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableScreenShot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/camera/CameraSettings;->setAudioMapParameter(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->onCreate(II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x69

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->addGlobalRenderer(I)V

    const/16 p1, 0x68

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->addGlobalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x69

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeGlobalRenderer(I)V

    const/16 v0, 0x68

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeGlobalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_MANUALLY:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ChangeGainProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->registerProtocol()V

    return-void
.end method

.method public releaseResources()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    return-void
.end method

.method public setGainValue(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGainValueReset(F)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startCameraSession(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/16 v0, 0x41

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->consumePreference(I)Z

    const p1, 0x7f12072d

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->updateISO(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ChangeGainProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->unRegisterProtocol()V

    return-void
.end method

.method public updateExposureTime()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateExposureTime()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/ProVideoModule;->updateFpsRange()V

    :cond_0
    return-void
.end method

.method public updateFpsRange()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateFpsRangeDefault()V

    return-void
.end method
