.class public Lcom/xiaomi/camera/mivi/VtReProcessorProxy;
.super Lcom/xiaomi/camera/mivi/IReProcessor;
.source "VtReProcessorProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VtReProcessorProxy"


# instance fields
.field public mCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

.field public mCallbackLock:Ljava/lang/Object;

.field public mReprocessCallback:Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;

.field public mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

.field public mResultOutputData:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/IReProcessor;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallbackLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;-><init>(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mReprocessCallback:Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;Landroid/media/Image;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->tryFinish(Landroid/media/Image;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->notifyError(Ljava/lang/String;)V

    return-void
.end method

.method private execute()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getPictureName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFrameNumber()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/camera/MIVICaptureManager;->getParallelTaskData(Ljava/lang/String;JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    aget-object v15, v2, v6

    const-string v14, "VtReProcessorProxy"

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process: no ParallelTaskData found in MIVICaptureManager, timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v14, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v15}, Landroid/media/Image;->close()V

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 6
    iget-object v0, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    const-string v1, "skip this capture data"

    invoke-interface {v0, v1}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onError(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v15}, Landroid/media/Image;->getFormat()I

    move-result v8

    const/16 v9, 0x23

    const/4 v13, 0x3

    if-eq v8, v9, :cond_2

    invoke-virtual {v15}, Landroid/media/Image;->getFormat()I

    move-result v8

    const/16 v9, 0x11

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "work: bypass with HAL format"

    .line 8
    invoke-static {v13, v14, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {v0, v15, v7}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->tryFinish(Landroid/media/Image;I)V

    goto/16 :goto_4

    .line 10
    :cond_2
    :goto_1
    iget-object v8, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v8

    sget-object v9, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HEIC_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v8, v9}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/Boolean;

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process: isHeic > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "|facing > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v9}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFacing()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v14, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v9}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_3

    .line 13
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x48454946

    goto :goto_2

    :cond_3
    const/16 v8, 0x100

    :goto_2
    move/from16 v16, v8

    .line 14
    new-instance v11, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/16 v17, 0x0

    iget-object v8, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getCustomCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v18

    iget-object v8, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFacing()I

    move-result v8

    if-ne v8, v5, :cond_4

    move/from16 v19, v5

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    iget-object v8, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getOutputSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v20

    iget-object v8, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getOutputSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v21

    iget-object v9, v0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mReprocessCallback:Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;

    move-object v8, v11

    move-object/from16 v22, v9

    move-object v9, v15

    move-object v4, v11

    move/from16 v11, v17

    move-object/from16 v23, v12

    move-object/from16 v12, v18

    move v5, v13

    move/from16 v13, v19

    move-object v5, v14

    move/from16 v14, v20

    move-object/from16 v24, v15

    move/from16 v15, v21

    move-object/from16 v17, v22

    invoke-direct/range {v8 .. v17}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Landroid/media/Image;Ljava/lang/String;ILcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    if-eqz v23, :cond_6

    .line 15
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSupportZeroDegreeOrientationImage()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "process[2]: setRotateOrientationToZero true"

    const/4 v9, 0x3

    .line 17
    invoke-static {v9, v5, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    .line 18
    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRotateOrientationToZero(Z)V

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSupportIspHeif()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process[3]: setOrientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9, v5, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setOrientation(I)V

    .line 22
    :cond_6
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setJpegQuality(I)V

    const/4 v8, 0x1

    .line 23
    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setImageFromPool(Z)V

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process:[4] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v10, v5, v9}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process: submit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method private notifyError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "VtReProcessorProxy"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->releaseData()V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private releaseData()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "VtReProcessorProxy"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    return-void
.end method

.method private tryFinish(Landroid/media/Image;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "VtReProcessorProxy"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryFinish: e | image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/android/camera/JpegUtil;->getPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/JpegUtil;->getJpegData([Landroid/media/Image$Plane;I)[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultOutputData:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v2, v1, v4, p2}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->addOutputData([BII)V

    .line 7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultOutputData:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->releaseData()V

    .line 11
    iget-object p1, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultOutputData:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-interface {p1, p0}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    const-string p0, "VtReProcessorProxy"

    const-string p1, "tryFinish: x"

    .line 12
    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public submit(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/IReProcessor$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultInputData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    .line 3
    new-instance p2, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-direct {p2, p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;-><init>(Lcom/xiaomi/camera/mivi/bean/ResultImageData;)V

    iput-object p2, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->mResultOutputData:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->execute()V

    return-void
.end method
