.class public Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;
.super Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;
.source "DualRawBokehShotInstance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    return-void
.end method


# virtual methods
.method public applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v1, v1, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object v1, v1, Lcom/android/camera2/SnapParam$Param;->superNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p2, p2, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p2, p2, Lcom/android/camera2/SnapParam$Param;->multiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method public doAnchorFrameAsThumbnail()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "doAnchorFrame: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance$1;-><init>(Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;)V

    return-object v0
.end method

.method public getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;

    invoke-direct {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add surface main raw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add surface sub raw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "sub raw surface is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "main raw surface is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 2
    iget-object v0, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result p0

    .line 5
    invoke-static {v0, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public prepareShot()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera2/AlgoTypeInstances/DefaultBurstShotInstance;->prepareShot()V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId(Z)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId(Z)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    return-void
.end method
