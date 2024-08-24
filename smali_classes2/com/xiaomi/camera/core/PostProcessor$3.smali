.class public Lcom/xiaomi/camera/core/PostProcessor$3;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processFailedTask(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(JI)V

    :cond_0
    if-gtz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p3, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_3

    .line 7
    invoke-virtual {p5, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->postFlushTaskSession(J)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[z] processFailedTask: no task with timestamp = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/camera/core/PostProcessor$3;->releaseCaptureData(JLjava/util/List;)V

    return-void
.end method

.method private releaseCaptureData(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCaptureData: E. timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-eqz p2, :cond_0

    .line 3
    iget-object p3, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p3}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1800(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "releaseCaptureData: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onParallelDataAbandoned(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataAbandoned: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor$3;->releaseCaptureData(JLjava/util/List;)V

    return-void
.end method

.method public onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[z] onParallelDataAvailable: ------------------------"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[z] onParallelDataAvailable: result timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[z] onParallelDataAvailable: algoType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    iput-boolean v2, v1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    :cond_1
    if-eq v0, v3, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v4

    .line 12
    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 13
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[z] wait image pool>>"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[z] wait image pool<<"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    sget-boolean v3, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result v4

    if-nez v4, :cond_4

    .line 20
    :cond_3
    iget-object v4, v3, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ImageProcessor;->isBokekMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    iget-object v4, v3, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    iget-object v3, v3, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 24
    :cond_4
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v3

    if-nez v3, :cond_5

    .line 25
    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(JI)V

    .line 26
    :cond_5
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 27
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2, v0, v1, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1400(Lcom/xiaomi/camera/core/PostProcessor;ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_6
    const/4 v2, 0x2

    if-eq v2, v0, :cond_b

    const/4 v2, 0x3

    if-ne v2, v0, :cond_7

    .line 28
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    .line 29
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0xb

    if-eq v2, v0, :cond_a

    const/16 v2, 0x14

    if-ne v2, v0, :cond_8

    goto :goto_1

    .line 30
    :cond_8
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 32
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_3

    :cond_a
    :goto_1
    if-eqz v1, :cond_d

    .line 33
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 34
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1600(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_3

    .line 35
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessListener(Lcom/xiaomi/camera/core/CaptureDataListener;)V

    if-eqz v1, :cond_c

    .line 36
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMoonMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMoonMode(Z)V

    .line 37
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHdrSR()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setHdrSR(Z)V

    .line 38
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setCapturedByFrontCamera(Z)V

    .line 39
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setAlgoSize(Landroid/util/Size;)V

    .line 40
    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->getInstance()Lcom/xiaomi/camera/core/MultiFrameProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->processData(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    .line 41
    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public onParallelDataFailed(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataFailed: firstTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dispatchedNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor$3;->processFailedTask(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V

    return-void
.end method

.method public onParallelDataReady(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-interface {p0, v0, v1, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(JI)V

    :cond_0
    return-void
.end method

.method public onParallelDataTimeout(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataTimeout: firstTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dispatchedNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor$3;->processFailedTask(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V

    return-void
.end method

.method public onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[z] onPartialDataAvailable: timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[z] onPartialDataAvailable: data is ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 7
    iput-boolean v2, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[z] onPartialDataAvailable: no task with timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p1

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(JI)V

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)V

    :cond_1
    return-void
.end method
