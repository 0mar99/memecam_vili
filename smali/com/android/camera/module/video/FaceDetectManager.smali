.class public Lcom/android/camera/module/video/FaceDetectManager;
.super Ljava/lang/Object;
.source "FaceDetectManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;


# instance fields
.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mIsVideoFaceViewShown:Z

.field public mModule:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    return-void
.end method

.method private getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    return-object p0
.end method

.method private updateFaceView(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x23

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public ignoreFace()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isWaitingDoubleTapResult()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceDetectStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    return p0
.end method

.method public onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/android/camera2/CameraHardwareFace;

    :cond_3
    move-object v3, p1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, p2

    move-object v6, p3

    .line 8
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    :cond_4
    return-void
.end method

.method public resetFaceDetectionStarted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    return-void
.end method

.method public setFaceDetectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxFaceCount(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigManager;->startFaceDetection()V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setActiveIndicator(I)V

    .line 9
    :cond_1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/video/FaceDetectManager;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/FaceDetectManager;->resetFaceDetectionStarted()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->stopFaceDetection()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setActiveIndicator(I)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/video/FaceDetectManager;->updateFaceView(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateFace()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->enableFaceDetection()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawFace(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    .line 5
    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa2

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 6
    :goto_0
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setPinFace(Z)V

    :cond_1
    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoFaceViewShownEnable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_5

    .line 10
    iput-boolean v3, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/video/FaceDetectManager;->startFaceDetection()V

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0, v3}, Lcom/android/camera/module/video/FaceDetectManager;->stopFaceDetection(Z)V

    .line 14
    iput-boolean v2, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public useSingleFace()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result p0

    return p0
.end method
