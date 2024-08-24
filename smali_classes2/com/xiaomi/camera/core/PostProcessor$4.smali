.class public Lcom/xiaomi/camera/core/PostProcessor$4;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/CaptureDataListener;


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
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "[1] %s: no more data to process!"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v8

    if-nez v8, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v8

    .line 9
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "set result for reprocess"

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v8

    invoke-static {v6, p1, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 13
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v2

    const-string v8, "[1] %s: no task data with timestamp %d"

    .line 14
    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p2, v10, v1

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v2

    const-string v6, "[1] %s: partial data. ts = %d"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v8

    .line 18
    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v6, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "partial set result for reprocess"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v7, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v8

    invoke-static {v7, p1, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto/16 :goto_0

    .line 21
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "[1] %s: no partial task data with timestamp %d"

    .line 23
    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    goto/16 :goto_0

    :cond_6
    :goto_1
    if-eqz v5, :cond_8

    .line 24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 25
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p2, p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1800(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "noTaskFound = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",return."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v3

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 29
    iget-object v4, v3, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 30
    :cond_9
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p0

    if-eq v3, p0, :cond_a

    .line 31
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    const-string v6, "[1] %s: image processor switched"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 33
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string v5, "[1] %s: resend to algoengine"

    invoke-static {p1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/TaskData;->setProcessSessionType(I)V

    :cond_b
    if-eqz v3, :cond_c

    .line 35
    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    move-result p0

    .line 36
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "[1] %s: dispatchTask status is %d"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "imageProcessor NULL."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .line 38
    :cond_d
    :goto_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "[1] %s: no result to process!"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    if-ne v1, v0, :cond_5

    .line 3
    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 6
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v5

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[1] onCaptureDataAvailable: timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 10
    iget-object v9, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v9, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 11
    iget-object v9, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v9, v5, v6, v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_1
    if-ne v1, v0, :cond_4

    .line 12
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v1, v0, :cond_a

    .line 20
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz v0, :cond_6

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[1] onCaptureDataAvailable: start process multi-shot image..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 23
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 26
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 27
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->shouldReprocessBurstShotPicture()Z

    move-result v1

    const-string v9, "algo_process_"

    if-eqz v1, :cond_8

    .line 28
    new-instance p0, Lcom/xiaomi/camera/core/TaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    .line 29
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v5

    .line 30
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v6

    move-object v0, p0

    move v2, v3

    move-wide v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/core/TaskData;-><init>(Ljava/util/List;ZJZLOooO0OO/OooO0OO;)V

    .line 31
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p1

    .line 32
    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez v0, :cond_7

    .line 33
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 34
    :cond_7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algo_device_multi_capture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 35
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    goto/16 :goto_1

    .line 37
    :cond_8
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p1

    invoke-interface {p1, v7, v8, v3}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(JI)V

    .line 38
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 39
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algo_reprocess_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p1

    invoke-interface {p1, v0, v3, v3}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    .line 41
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 42
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_1

    .line 43
    :cond_9
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[1] onCaptureDataAvailable: no captureResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_1

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    const-string v1, "onCaptureDataAvailable"

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isUltraPixel()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 48
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 49
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    .line 50
    invoke-static {v5, v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v6

    .line 51
    invoke-static {v6}, Lcom/android/camera2/CaptureResultParser;->isMiviAlgoBypassRequired(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v6

    .line 52
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[1] onCaptureDataAvailable: isAlgoBypassRequired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_b

    .line 53
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 55
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v0

    .line 57
    new-instance v2, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    .line 58
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    .line 59
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 60
    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_1

    .line 61
    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_c
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 63
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No multi-frame process result!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOriginalImageClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 1

    const-string v0, "onPartialDataAvailable"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    return-void
.end method
