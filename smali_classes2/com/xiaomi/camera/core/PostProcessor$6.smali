.class public Lcom/xiaomi/camera/core/PostProcessor$6;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;


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
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processAlgorithmMeta(Lcom/xiaomi/engine/ResultData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAlgorithmMeta: no parallelTaskData with timestamp "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAlgorithmMeta: null ParallelTaskDataParameter with timestamp "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/xiaomi/camera/core/MiviMetadataParser;->parse(Lcom/xiaomi/engine/ResultData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAlgorithmMeta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setExtraInfo(Ljava/lang/String;)V

    const-string v1, "MiSnapshotFusion:1"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->setSiqeType(B)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setSiqeType(B)V

    :cond_2
    return-void
.end method

.method private processCropRegionMeta(Lcom/xiaomi/engine/ResultData;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getCropRegion()[I

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v0, :cond_1

    .line 4
    array-length v8, v0

    if-ne v8, v7, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gtz v8, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v7, [Ljava/lang/Object;

    aget v11, v0, v6

    .line 6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    aget v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    aget v11, v0, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    aget v11, v0, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "crop region is [%d,%d,%d,%d]"

    .line 7
    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error get crop region"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_2

    .line 10
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$2602(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    .line 11
    :cond_2
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    aget v11, v0, v6

    aget v12, v0, v5

    aget v13, v0, v4

    aget v0, v0, v3

    invoke-direct {v10, v11, v12, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2502(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "both reprocessData and cropRegion are ready"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v10

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getActiveRegion()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getZoomRatio()F

    move-result p1

    invoke-static {v8, v9, v10, v11, p1}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z

    new-array p1, v7, [I

    .line 19
    iget v7, v8, Landroid/graphics/Rect;->left:I

    aput v7, p1, v6

    iget v6, v8, Landroid/graphics/Rect;->top:I

    aput v6, p1, v5

    iget v5, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    aput v5, p1, v4

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    aput v4, p1, v3

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setCropRegion([I)V

    .line 20
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not reprocess timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 24
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    throw p1

    .line 27
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "reprocessData not ready, should wait"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    .line 28
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no parallelTaskData with timestamp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public isAnyFrontProcessing(Lcom/xiaomi/camera/core/ImageProcessor;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->isAnyFrontProcessingByProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)Z

    move-result p0

    return p0
.end method

.method public onImageProcessFailed(JLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string p3, "onImageProcessFailed: timestamp=%d, reason=%s"

    invoke-static {v1, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    return-void
.end method

.method public onImageProcessStart(JI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageProcessStart: get parallelTaskData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_device_multi_capture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v2, "algo_device_capture"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_process_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p0

    invoke-interface {p0, v0, p3}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public onImageProcessed(Landroid/media/Image;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v9

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[2] onImageProcessed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x4

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-ne v8, v13, :cond_0

    .line 4
    invoke-static {v8, v14}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/camera/base/ImageUtil;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v0

    .line 6
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-interface {v1, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    goto/16 :goto_6

    .line 7
    :cond_0
    invoke-virtual {v1, v9, v10}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v15

    if-nez v15, :cond_2

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] onImageProcessed: no parallelTaskData with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 10
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jpeg process start, timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide v2, v9

    invoke-static/range {v2 .. v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 13
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    if-nez v2, :cond_3

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[2] onImageProcessed: null capture result"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[2] onImageProcessed: captureResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    const v4, 0x48454946

    .line 17
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v5

    const/4 v7, 0x1

    if-ne v4, v5, :cond_4

    move v4, v7

    goto :goto_0

    :cond_4
    move v4, v14

    .line 18
    :goto_0
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v5

    if-eqz v4, :cond_8

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v5}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 20
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSupportIspHeif()Z

    move-result v3

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportIspHeif = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v4, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    .line 22
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v11

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/camera/core/PostProcessor;->access$2100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "heif imagewriter"

    invoke-static {v12, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_6

    .line 26
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-static {v3, v0, v7}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v3

    .line 27
    iget-object v4, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    move-object v0, v3

    :cond_6
    const/4 v3, -0x1

    .line 28
    invoke-static {v2, v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    .line 29
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v15, v4}, Lcom/android/camera/storage/ImageSaver;->addHeif(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;)V

    .line 30
    invoke-static {v5}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void

    .line 32
    :cond_8
    invoke-static {v5}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 33
    invoke-virtual {v2, v9, v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setTimeStamp(J)V

    .line 34
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v11

    move v0, v7

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/camera/core/PostProcessor;->access$2100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    .line 35
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_9

    .line 36
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v12}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$2502(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    .line 37
    :cond_9
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_a

    .line 39
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v12}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$2602(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    .line 40
    :cond_a
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 41
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[2] onImageProcessed: both reprocessData and cropRegion are ready"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v4

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v5

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getActiveRegion()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getZoomRatio()F

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z

    new-array v4, v12, [I

    .line 44
    iget v5, v3, Landroid/graphics/Rect;->left:I

    aput v5, v4, v14

    iget v6, v3, Landroid/graphics/Rect;->top:I

    aput v6, v4, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    aput v0, v4, v13

    const/4 v0, 0x3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    aput v3, v4, v0

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setCropRegion([I)V

    .line 45
    :try_start_1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_2
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 48
    :try_start_2
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 49
    :goto_3
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    throw v0

    .line 52
    :cond_b
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[2] onImageProcessed: crop region not ready, should wait"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    move v3, v7

    const/16 v4, 0xd

    if-eq v5, v4, :cond_14

    .line 53
    invoke-static {v5}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_5

    .line 54
    :cond_d
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    invoke-static {v2, v14}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v8

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/camera/base/ImageUtil;->getBytesFromImage(Landroid/media/Image;)[B

    move-result-object v4

    if-eqz p3, :cond_e

    .line 58
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 59
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 60
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImageProcessed: processCvWatermark getYuvData cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v15, v4, v14}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    const-string v0, "JPEG"

    .line 62
    invoke-virtual {v15, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz v0, :cond_f

    goto :goto_4

    .line 63
    :cond_f
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[2] onImageProcessed: yuv data isn\'t ready, save action has been ignored."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 64
    :cond_10
    :goto_4
    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    invoke-virtual {v15, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setMemDebug(Z)V

    .line 65
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] onImageProcessed: save yuv nv21 start. dataLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide v2, v9

    invoke-static/range {v2 .. v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 67
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v8, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result v0

    .line 68
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    if-eqz v0, :cond_11

    .line 69
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 70
    :cond_11
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v15}, Lcom/xiaomi/camera/core/PostProcessor;->access$2900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 71
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 72
    :cond_12
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] onImageProcessed: parallelTaskHashMap remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3108(Lcom/xiaomi/camera/core/PostProcessor;)I

    .line 74
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v9, v10}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    .line 75
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$3100(Lcom/xiaomi/camera/core/PostProcessor;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$3200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 76
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3300(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 77
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v14}, Lcom/xiaomi/camera/core/PostProcessor;->access$3102(Lcom/xiaomi/camera/core/PostProcessor;I)I

    goto :goto_6

    .line 78
    :cond_13
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v11

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/camera/core/PostProcessor;->access$2100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    .line 79
    invoke-static {v8, v14}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    .line 80
    :try_start_3
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 81
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 82
    :cond_14
    :goto_5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[2] onImageProcessed: raw algo 2nd, try to encode jpeg"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_15

    .line 83
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v2

    .line 84
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 85
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v9, v10, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V

    goto :goto_6

    .line 86
    :cond_15
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1, v9, v10, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V

    :cond_16
    :goto_6
    return-void
.end method

.method public onMetadataReceived(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected meta type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lcom/xiaomi/engine/ResultData;

    invoke-direct {p0, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->processAlgorithmMeta(Lcom/xiaomi/engine/ResultData;)V

    goto :goto_0

    .line 3
    :cond_1
    check-cast p2, Lcom/xiaomi/engine/ResultData;

    .line 4
    invoke-direct {p0, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->processCropRegionMeta(Lcom/xiaomi/engine/ResultData;)V

    :goto_0
    return-void
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageProcessor onOriginalImageClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    return-void
.end method
