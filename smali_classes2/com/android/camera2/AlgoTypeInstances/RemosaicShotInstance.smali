.class public Lcom/android/camera2/AlgoTypeInstances/RemosaicShotInstance;
.super Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;
.source "RemosaicShotInstance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    return-void
.end method


# virtual methods
.method public beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;->beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    return-void
.end method

.method public doAnchorFrameAsThumbnail()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    const/4 v2, 0x4

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcfa anchor frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v1, "anchor frame may mistake when remosaic"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-super {p0}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;->doAnchorFrameAsThumbnail()Z

    move-result p0

    return p0
.end method

.method public getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;

    invoke-direct {v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    .line 5
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceSize:Landroid/util/Size;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    return-object v1
.end method

.method public onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setUltraPixel(Z)V

    return-void
.end method
