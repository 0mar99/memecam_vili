.class public Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;
.super Lcom/xiaomi/camera/mivi/ICameraImageReceiver;
.source "MockCameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MockCameraImageReceiver"


# instance fields
.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mCaptureId:Ljava/lang/String;

.field public mImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxAcquireImageSize:I

.field public mMockCameraID:Ljava/lang/String;

.field public mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public volatile mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;-><init>(Landroid/os/Handler;)V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    const/16 p3, 0x1e

    .line 5
    iput p3, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMaxAcquireImageSize:I

    const-string p3, "camera"

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMaxAcquireImageSize:I

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->notifyError()V

    return-void
.end method

.method public static synthetic access$402(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->join(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private join(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "join: captureResult timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | pictureName: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | cameraId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MockCameraImageReceiver"

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCaptureId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setCustomCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 7
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MIVI2_EXIF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join: add mivi2 exif "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setType(I)V

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->setMetadata(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->tryFinish()V

    return-void
.end method

.method private join(Landroid/media/Image;I)V
    .locals 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "join: image timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MockCameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;IZ)Landroid/media/Image;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 16
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->addImage(Landroid/media/Image;I)V

    .line 17
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->tryFinish()V

    return-void
.end method

.method private notifyError()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError: current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | cameraId > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MockCameraImageReceiver"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mStateCallback:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-interface {v0, v1, p0}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;->onFail(Lcom/xiaomi/camera/mivi/bean/RequestData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V

    :cond_0
    return-void
.end method

.method private releaseSession()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseSession: cameraId > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MockCameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 9
    :cond_1
    iget v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 10
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    :cond_2
    return-void
.end method

.method private setState(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | cameraId > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | caller > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "MockCameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    return-void
.end method

.method private tryFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->isDataReady()Z

    move-result v0

    const-string v1, "MockCameraImageReceiver"

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string p0, "tryFinish: ignore"

    .line 2
    invoke-static {v2, v1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onImageAvailable:  receive all image"

    .line 3
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 4
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mStateCallback:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-interface {v0, v1, p0}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;->onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(ILandroid/media/ImageReader;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | timestamp >  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MockCameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->join(Landroid/media/Image;I)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doReceive: mState > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | camera id > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MockCameraImageReceiver"

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    if-nez v0, :cond_0

    const-string v0, "doReceive: openCamera"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->openCamera()V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    const-string v2, "doReceive: reConfig"

    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->createCaptureSession()V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const-string v0, "doReceive: requestImage"

    .line 9
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->requestImage()V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doReceive: with wrong mState > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public createCaptureSession()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    const-string v1, "MockCameraImageReceiver"

    if-nez v0, :cond_0

    const-string p0, "createCaptureSession: return with null mRequestData"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getImages()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/mivi/bean/ImageData;

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCaptureSession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "|width > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "|height > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "|mMaxAcquireImageSize > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMaxAcquireImageSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v6, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->width:I

    iget v7, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->height:I

    iget v5, v5, Lcom/xiaomi/camera/mivi/bean/ImageData;->format:I

    iget v8, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMaxAcquireImageSize:I

    invoke-static {v6, v7, v5, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    .line 9
    new-instance v6, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;

    invoke-direct {v6, p0, v3}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;-><init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V

    iget-object v7, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    add-int/lit8 v3, v3, 0x1

    .line 10
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v6, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$2;-><init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->notifyError()V

    :goto_1
    return-void
.end method

.method public doReceive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0O;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0O;-><init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openCamera()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    new-instance v2, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$1;-><init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public releaseAll()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAll: cameraId > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mMockCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MockCameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->releaseSession()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method public requestImage()V
    .locals 5

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->setState(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stillCapture: mImageReaderList size > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MockCameraImageReceiver"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mImageReaderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ImageReader;

    .line 5
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage: set mivi session id > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | frameNumber >  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getFrameNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | timestamp > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getTimestampUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SESSION_ID:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getSessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_FG_FRAME_NUMBLE:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getFrameNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_IS_PARALLEL_CAMERA:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/RequestData;->isParallelCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$3;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver$3;-><init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;)V

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    .line 11
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

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mCaptureId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->releaseSession()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->setRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;)V

    return-void
.end method
