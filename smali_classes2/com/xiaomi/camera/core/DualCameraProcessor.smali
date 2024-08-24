.class public Lcom/xiaomi/camera/core/DualCameraProcessor;
.super Lcom/xiaomi/camera/core/ImageProcessor;
.source "DualCameraProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DualCameraProcessor"


# instance fields
.field public final mIsSatFusionShot:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V

    .line 2
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getCameraCombinationMode()I

    move-result p1

    const/16 p2, 0x204

    if-eq p1, p2, :cond_1

    const/16 p2, 0x202

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 3
    :goto_1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mIsSatFusionShot:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v5

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCaptureResult: cameraMetadataNative = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCaptureResult: image flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCaptureResult: image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCaptureResult: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v8, Lcom/xiaomi/engine/FrameData;

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v2

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v3

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getParcelRequest()Landroid/os/Parcelable;

    move-result-object v6

    move-object v0, v8

    move v1, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/engine/FrameData;-><init>(IIJLandroid/os/Parcelable;Landroid/os/Parcelable;Landroid/media/Image;)V

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getMainPhysicalResult()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSubPhysicalResult()Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 12
    iget-boolean p2, p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mIsSatFusionShot:Z

    if-eqz p2, :cond_1

    .line 13
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FUSION_IMAGE_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    int-to-byte v1, p3

    .line 14
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 16
    sget-object p2, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processImage: update metadata with image flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 17
    sget-object p3, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processImage: Exception\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {v8, p1}, Lcom/xiaomi/engine/FrameData;->setPhysicalResultMetadata(Landroid/os/Parcelable;)V

    .line 19
    :cond_2
    new-instance p1, Lcom/xiaomi/camera/core/DualCameraProcessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/DualCameraProcessor$4;-><init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V

    invoke-virtual {v8, p1}, Lcom/xiaomi/engine/FrameData;->setFrameCallback(Lcom/xiaomi/engine/FrameData$FrameStatusCallback;)V

    .line 20
    sget-object p1, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string p2, "E:processFrame"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    if-ne p4, p2, :cond_3

    .line 22
    :try_start_1
    iget-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object p2

    goto :goto_2

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 24
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_4

    .line 25
    sget-object p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string p1, "processCaptureResult: session has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_4
    new-instance p1, Lcom/xiaomi/camera/core/DualCameraProcessor$5;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/DualCameraProcessor$5;-><init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V

    invoke-virtual {p2, v8, p1}, Lcom/xiaomi/engine/TaskSession;->processFrame(Lcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)V

    .line 27
    sget-object p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string p1, "X:processFrame"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v4

    .line 4
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    .line 5
    new-instance v2, Lcom/xiaomi/camera/core/DualCameraProcessor$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/core/DualCameraProcessor$1;-><init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    .line 9
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-boolean v1, p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mIsSatFusionShot:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v4

    .line 14
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    .line 15
    new-instance v2, Lcom/xiaomi/camera/core/DualCameraProcessor$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/core/DualCameraProcessor$2;-><init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 18
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    .line 19
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getDepthBufferSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 23
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 24
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result p1

    move v5, v1

    move v1, p1

    move p1, v5

    .line 27
    :goto_0
    sget-object v2, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depth image size depthSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x20363159

    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    .line 29
    new-instance v1, Lcom/xiaomi/camera/core/DualCameraProcessor$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/core/DualCameraProcessor$3;-><init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V

    .line 30
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v2

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 32
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    .line 33
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getProcessorName()Ljava/lang/String;
    .locals 0

    const-string p0, "D"

    return-object p0
.end method

.method public isIdle()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mIsSatFusionShot:Z

    const-string v1, "isIdle: taskNum = "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->isAnyFrontProcessing(Lcom/xiaomi/camera/core/ImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 8
    :goto_1
    sget-object v4, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anyFrontTask = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method public processImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v3

    const-string v4, "algo process start, timestamp: "

    const-string v5, "[ORIGINAL]"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    .line 6
    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result v3

    invoke-virtual {v2}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result v2

    if-ne v3, v2, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 8
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v8

    .line 9
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v9

    .line 10
    invoke-virtual {v0, v8}, Lcom/xiaomi/camera/core/ImageProcessor;->isImageValid(Landroid/media/Image;)Z

    move-result v10

    .line 11
    invoke-virtual {v0, v9}, Lcom/xiaomi/camera/core/ImageProcessor;->isImageValid(Landroid/media/Image;)Z

    move-result v11

    if-nez v10, :cond_3

    if-eqz v11, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    sget-object v3, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string v8, "processImage: neither main image nor sub image is valid"

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v10, :cond_4

    .line 13
    invoke-virtual {v8}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v11

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v11

    :goto_2
    move-wide v13, v11

    .line 14
    sget-object v2, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    move v2, v7

    .line 16
    :cond_5
    invoke-static {v5, v7}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    if-eqz v10, :cond_6

    .line 18
    sget-object v9, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string v10, "processCaptureResult: main"

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getProcessSessionType()I

    move-result v9

    invoke-direct {v0, v3, v8, v7, v9}, Lcom/xiaomi/camera/core/DualCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object v8, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string v10, "processCaptureResult: sub"

    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getProcessSessionType()I

    move-result v8

    invoke-direct {v0, v3, v9, v6, v8}, Lcom/xiaomi/camera/core/DualCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V

    goto :goto_0

    .line 22
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 23
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v8

    .line 24
    invoke-virtual {v0, v8}, Lcom/xiaomi/camera/core/ImageProcessor;->isImageValid(Landroid/media/Image;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 25
    sget-object v3, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processImage: invalid main image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v9

    .line 27
    invoke-virtual {v0, v9}, Lcom/xiaomi/camera/core/ImageProcessor;->isImageValid(Landroid/media/Image;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 28
    sget-object v3, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processImage: invalid sub image: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    .line 29
    invoke-virtual {v8}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    .line 30
    sget-object v2, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    move v2, v7

    .line 32
    :cond_a
    invoke-static {v5, v7}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getProcessSessionType()I

    move-result v10

    invoke-direct {v0, v3, v8, v7, v10}, Lcom/xiaomi/camera/core/DualCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/TaskData;->getProcessSessionType()I

    move-result v8

    invoke-direct {v0, v3, v9, v6, v8}, Lcom/xiaomi/camera/core/DualCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V

    goto/16 :goto_4

    :cond_b
    return-void

    .line 36
    :cond_c
    :goto_5
    sget-object v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->TAG:Ljava/lang/String;

    const-string v1, "processImage: dataBeans is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
