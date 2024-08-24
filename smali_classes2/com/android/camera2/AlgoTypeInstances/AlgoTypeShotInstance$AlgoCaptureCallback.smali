.class public Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AlgoTypeShotInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgoCaptureCallback"
.end annotation


# instance fields
.field public mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

.field public mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;


# direct methods
.method public constructor <init>(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 3
    iput-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    return-void
.end method

.method private generateCustomResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$4400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget v0, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 7
    :cond_0
    iget p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    if-eq p2, v1, :cond_1

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    :cond_1
    return-object p0
.end method

.method private generateTaskData(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;JLcom/android/camera2/Camera2Proxy$PictureCallback;Landroid/hardware/camera2/CaptureRequest;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 8

    .line 1
    new-instance p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 4
    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->setCaptureStartTime(J)V

    .line 8
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p2}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBeautyLensOn(Z)V

    .line 13
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p2}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 14
    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 15
    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result p2

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    :cond_2
    move p2, v0

    goto :goto_0

    :cond_3
    move p2, p3

    .line 16
    :goto_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p5, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    if-eqz p5, :cond_4

    .line 17
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 18
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    .line 20
    :goto_1
    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p5, p5, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p5, p5, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean p5, p5, Lcom/android/camera2/SnapParam$Param;->qcfaEnabled:Z

    if-eqz p5, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p5

    if-eqz p5, :cond_5

    move p3, v0

    :cond_5
    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setUltraPixel(Z)V

    .line 21
    iget-object p3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p5, p3, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p5, p5, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean p5, p5, Lcom/android/camera2/SnapParam$Param;->doRemosaic:Z

    if-eqz p5, :cond_6

    invoke-static {p3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportRemosaicYuvLpnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 22
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRemosaic(Z)V

    :cond_6
    move v3, p2

    goto :goto_2

    .line 23
    :cond_7
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p2}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result p2

    if-ne p2, v0, :cond_8

    move p3, v0

    .line 24
    :cond_8
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean p2, p2, Lcom/android/camera2/SnapParam$Param;->isHDRSR:Z

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHdrSR(Z)V

    .line 25
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    if-nez p2, :cond_9

    .line 26
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 27
    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    const/16 p5, 0x20

    invoke-static {p2, p5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p2

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p5

    .line 29
    invoke-static {p2, p5}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 30
    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p5, p5, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted, sensor raw size is null then get it again, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v3, p3

    .line 31
    :goto_2
    new-instance p2, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/CameraSize;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 32
    new-instance p3, Lcom/android/camera2/QuickViewParam;

    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v1

    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$3900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result v2

    const/4 v4, 0x0

    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$4000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 33
    iget-object p5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p5, p5, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p5}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p5

    iput-boolean p5, p3, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    .line 34
    invoke-virtual {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 35
    invoke-static {p3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$4100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p2

    .line 37
    invoke-interface {p4, p1, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 38
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$4200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-object p2, p2, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0OO/OooO0OO;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 40
    iget-object p2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget p2, p2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 41
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$4300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    :cond_a
    return-object p1
.end method

.method private onCaptureShutter()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v1, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v1, v1, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 4
    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v0, "not delay sound when multi frame end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    new-instance v9, Lcom/android/camera2/QuickViewParam;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    .line 8
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result v5

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I

    move-result v3

    if-ne v3, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move v6, v2

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$2000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p0

    iput-boolean p0, v9, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    .line 10
    invoke-interface {v0, v9}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureBufferLost: fn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCompletedMetaNum:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCompletedMetaNum:I

    .line 3
    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureCompleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget v3, v3, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCompletedMetaNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v3, v3, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v3, v3, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v3, v3, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->isAnchorFrameLost()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$602(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v1}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v1

    invoke-static {v0, p3, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-direct {p0, p3, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->generateCustomResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDxoAsdScene()Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DXO_ASD_SCENE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v1, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v3, "metadata set dxo_asd_scene fail!"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Z)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    goto :goto_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-direct {p0, p3, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->generateCustomResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget v1, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCompletedMetaNum:I

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 17
    :goto_1
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Z)V

    .line 19
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object p2, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p2, p2, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p2, p2, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    iget p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCompletedMetaNum:I

    if-ne p2, p1, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->onCaptureShutter()V

    .line 22
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {p1, v2, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->onCaptureShutter()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_2
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v1}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v1

    invoke-static {v0, p3, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceAborted: sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$1500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceCompleted: sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 16

    move-object/from16 v6, p0

    move-wide/from16 v11, p3

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: ts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p5

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v15

    .line 4
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mReceivedShutterNum:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mReceivedShutterNum:I

    .line 5
    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$002(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z

    .line 7
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0, v11, v12}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$102(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J

    if-eqz v15, :cond_3

    .line 8
    iget-object v1, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-object v4, v15

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->generateTaskData(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;JLcom/android/camera2/Camera2Proxy$PictureCallback;Landroid/hardware/camera2/CaptureRequest;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    .line 9
    iget-object v1, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v1, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 10
    iget-object v7, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v7, :cond_0

    move-object/from16 v8, p1

    move-object v9, v0

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    .line 11
    invoke-virtual/range {v7 .. v14}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$302(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z

    .line 15
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-static {v0, v11, v12}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->access$402(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J

    if-eqz v15, :cond_3

    .line 16
    iget-object v1, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-object v4, v15

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->generateTaskData(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;JLcom/android/camera2/Camera2Proxy$PictureCallback;Landroid/hardware/camera2/CaptureRequest;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    .line 17
    iget-object v1, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    invoke-virtual {v1, v0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 18
    iget-object v7, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mListener:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    if-eqz v7, :cond_2

    move-object/from16 v8, p1

    move-object v9, v0

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    .line 19
    invoke-virtual/range {v7 .. v14}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 20
    :cond_2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_3
    :goto_0
    if-eqz v15, :cond_4

    .line 21
    iget-object v0, v6, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;->mAlgoInstance:Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;

    iget v1, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mReceivedShutterNum:I

    iget-object v0, v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v0, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ne v1, v0, :cond_4

    .line 22
    invoke-interface {v15}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    :cond_4
    return-void
.end method
