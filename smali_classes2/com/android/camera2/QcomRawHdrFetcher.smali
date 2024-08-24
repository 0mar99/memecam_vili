.class public Lcom/android/camera2/QcomRawHdrFetcher;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "QcomRawHdrFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "QcomRawHdrFetcher"


# instance fields
.field public mAlgoType:I

.field public mCompletedNum:I

.field public mHdrCheckerAdrc:I

.field public mHdrCheckerEvValue:[I

.field public mHdrCheckerSceneType:I

.field public mMainPhysicalCameraId:I

.field public mSequenceNum:I

.field public mStartedNum:I

.field public mZslHdrEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    const/16 p1, 0x15

    .line 2
    iput p1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mAlgoType:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mZslHdrEnabled:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mMainPhysicalCameraId:I

    .line 5
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$108(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/QcomRawHdrFetcher;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$508(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mCompletedNum:I

    return v0
.end method

.method public static synthetic access$600(Lcom/android/camera2/QcomRawHdrFetcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mMainPhysicalCameraId:I

    return p0
.end method

.method private applyParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    if-gt p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerSceneType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerAdrc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    .line 9
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyRawHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    iget-boolean v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mZslHdrEnabled:Z

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    iget-object v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_0

    aget v0, v1, p2

    .line 12
    :cond_0
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p2, p0}, Lcom/android/camera2/CaptureResultParser;->getSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p0

    .line 15
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotReqInfo(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    :cond_1
    return-void

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    const-string v0, "anchor frame do not enable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v1, 0x5

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/16 v1, 0x66

    .line 6
    invoke-static {p0, v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/QcomRawHdrFetcher$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/QcomRawHdrFetcher$1;-><init>(Lcom/android/camera2/QcomRawHdrFetcher;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    const-string v0, "null camera device"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mMainPhysicalCameraId:I

    .line 5
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mMainPhysicalCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "satCameraId=%d, physicalCameraId=%d"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget v3, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getSatRawSurface(I)Landroid/view/Surface;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget v6, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    .line 12
    sget-object v6, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    const-string v2, "add raw surface %s to capture request, size is: %s"

    invoke-static {v7, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object v1, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "previewCallbackType=0x%x"

    invoke-static {v1, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v1, 0x201

    .line 14
    iget v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v4, 0x3

    if-ne v5, v2, :cond_1

    move v1, v4

    .line 15
    :cond_1
    sget-object v2, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "combinationMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x23

    .line 16
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 17
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0, v4}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 18
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public prepare()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/QcomRawHdrFetcher;->doAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    .line 3
    iget v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mAlgoType:I

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    .line 4
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: anchorFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", soundTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mZslHdrEnabled:Z

    .line 7
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: isZslHdrEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mZslHdrEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v1, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    .line 10
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    .line 11
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerEvValue:[I

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerSceneType:I

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerAdrc:I

    .line 14
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerSceneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",adrc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerAdrc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",EvValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p0, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mHdrCheckerEvValue:[I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSessionCapture()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/QcomRawHdrFetcher;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/QcomRawHdrFetcher;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture: null capture request builder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v4, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    if-ge v3, v4, :cond_1

    .line 6
    invoke-direct {p0, v1, v3}, Lcom/android/camera2/QcomRawHdrFetcher;->applyParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    .line 9
    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    const/16 v7, 0x20

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 10
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    .line 12
    :cond_2
    sget-object v1, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSessionCapture: requestNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v3, "algo_prepare_capture"

    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 14
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v3, "algo_device_capture"

    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v3, "shot_prepare_capture"

    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 16
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v3, "shot_device_capture"

    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/QcomRawHdrFetcher;->mSequenceNum:I

    invoke-static {v0, v1}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 22
    sget-object v1, Lcom/android/camera2/QcomRawHdrFetcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method
