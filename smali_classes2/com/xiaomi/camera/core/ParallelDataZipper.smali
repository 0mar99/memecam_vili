.class public Lcom/xiaomi/camera/core/ParallelDataZipper;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelDataZipper$CancelRunnable;,
        Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;,
        Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;,
        Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;
    }
.end annotation


# static fields
.field public static final MAX_WAITING_BUFFER_AND_META_TIME_MS:I = 0x3a98

.field public static final MAX_WAITING_BUFFER_AND_META_TIME_MS_TEST:I = 0x4e20

.field public static final MSG_CAPTURE_FAIL:I = 0x2

.field public static final MSG_CHECK_TIMEOUT_TASK:I = 0x4

.field public static final MSG_RELEASE_DATA:I = 0x1

.field public static final MSG_START_TASK:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ParallelDataZipper"


# instance fields
.field public final mCaptureDataArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/CaptureData;",
            ">;"
        }
    .end annotation
.end field

.field public mCaptureDataBeanArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ParallelDataZipperThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lcom/xiaomi/camera/core/ParallelDataZipper$1;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/core/ParallelDataZipper$1;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/ReleaseDataParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->releaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->startTask(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToCancel(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$Token;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->checkTimeoutTask(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToConfirm(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method private checkImageAvailable(Lcom/xiaomi/camera/core/CaptureData;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    .line 4
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image is invalid ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p0
.end method

.method private checkTimeoutTask(Lcom/xiaomi/camera/core/CaptureData$Token;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$Token;->getTimestamp()J

    move-result-wide v1

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release timeout task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->collectAndRemoveUnreadyDataBean(JLcom/xiaomi/camera/core/CaptureData;Z)Ljava/util/List;

    move-result-object v4

    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDispatchedDataNum()I

    move-result p0

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    move v3, p0

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v5

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataTimeout(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V

    :cond_2
    return-void
.end method

.method private collectAndRemoveUnreadyDataBean(JLcom/xiaomi/camera/core/CaptureData;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xiaomi/camera/core/CaptureData;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectAndRemoveUnreadyDataBean: E. firstTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6
    iget-object v4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 7
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v5, v5, p1

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_1

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    :cond_1
    sget-object v5, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "collectAndRemoveUnreadyDataBean: frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 12
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStartTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 13
    sget-object v5, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "collectAndRemoveUnreadyDataBean: timeout frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 15
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 16
    iget-object p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_3

    .line 17
    :cond_5
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectAndRemoveUnreadyDataBean: X. num = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private filterCaptureDataBeanWithNoData(JLjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 4
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 9
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterCaptureDataBeanWithNoData: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getFirstFrameTimestamp(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstFrameTimestamp: return current timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Long;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 5
    array-length v2, v0

    if-eqz v2, :cond_5

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 7
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 8
    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 9
    :cond_1
    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v2

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-gez v2, :cond_3

    .line 12
    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result p0

    if-le p0, v3, :cond_5

    .line 14
    array-length p0, v0

    sub-int/2addr p0, v3

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 15
    :cond_5
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstFrameTimestamp: return the owner timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method public static getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;->INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;

    return-object v0
.end method

.method private getStreamNumberByTimestamp(J)I
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide v0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result p0

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStreamNumberByTimestamp: returned an error result with timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getTimeout()J
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x4e20

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "handleDataBeanIfReady: dataBean with timestamp %d is ready"

    .line 4
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToCallback(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    :cond_0
    return-void
.end method

.method private releaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->getTimestamp()J

    move-result-wide v1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseData: E. firstTimestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->collectAndRemoveUnreadyDataBean(JLcom/xiaomi/camera/core/CaptureData;Z)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->isFailCase()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getDispatchedDataNum()I

    move-result v3

    .line 10
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    :cond_3
    iget-object v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getToken()Lcom/xiaomi/camera/core/CaptureData$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->removeCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    goto :goto_1

    :cond_4
    move-object v6, v5

    :cond_5
    :goto_1
    if-nez v5, :cond_6

    .line 17
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v5, "releaseData: using default DataListener"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 19
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->isFailCase()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object v5, v6

    .line 20
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataFailed(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V

    goto :goto_3

    .line 21
    :cond_7
    invoke-interface {v0, v1, v2, v4}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAbandoned(JLjava/util/List;)V

    .line 22
    :goto_3
    sget-object p1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseData: X. CaptureDataBeanArray.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    .line 23
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | CaptureDataArray.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    .line 24
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sendCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getTimeout()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private sendStartTaskMessage(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private startTask(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getToken()Lcom/xiaomi/camera/core/CaptureData$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->sendCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->updateCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method private tryToCallback(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 13

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v2

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v4

    .line 21
    iget-object v6, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v6, :cond_0

    .line 22
    sget-object v6, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v9, [Ljava/lang/Object;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v7

    const-string v12, "No capture data found for timestamp: %d|%d"

    .line 24
    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v6, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v10, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0o0;

    invoke-direct {v10, v1}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0o0;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v6, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0oO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0oO;

    .line 27
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v6, 0x0

    .line 29
    invoke-virtual {v1, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v4

    .line 31
    invoke-virtual {p1, v4, v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 32
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update data bean\'s first timestamp to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v6, :cond_1

    .line 33
    invoke-virtual {v6, p1}, Lcom/xiaomi/camera/core/CaptureData;->putCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    .line 34
    invoke-direct {p0, v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToCallback(Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_0

    .line 35
    :cond_1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "No task found with sequenceId: %d, timestamp: %d|%d"

    .line 37
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    :goto_0
    return-void
.end method

.method private tryToCallback(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v1, "tryToCallback:"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v1, "tryToCallback: checkStatus"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataReady(Lcom/xiaomi/camera/core/CaptureData;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V

    new-instance v2, Lcom/xiaomi/camera/core/ParallelDataZipper$CancelRunnable;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$CancelRunnable;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {v2, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getToken()Lcom/xiaomi/camera/core/CaptureData$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->removeCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToConfirm(Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private tryToCancel(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryToCancel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v3, "tryToCancel: ready"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAbandoned(JLjava/util/List;)V

    .line 7
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getToken()Lcom/xiaomi/camera/core/CaptureData$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->removeCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    :cond_0
    return-void
.end method

.method private tryToConfirm(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryToConfirm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->checkImageAvailable(Lcom/xiaomi/camera/core/CaptureData;)Z

    move-result v3

    const/4 v4, 0x4

    .line 5
    sget-object v5, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data ready and all of the images are available="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v4

    const-string v5, "shot_device_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isAbandoned()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v3

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    .line 11
    invoke-interface {v2, v3, v4, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAbandoned(JLjava/util/List;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getToken()Lcom/xiaomi/camera/core/CaptureData$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->removeCheckTimeoutTaskMessage(Lcom/xiaomi/camera/core/CaptureData$Token;)V

    return-void
.end method

.method private updateCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->filterCaptureDataBeanWithNoData(JLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCaptureDataBean: no data beans size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 6
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v4

    .line 7
    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(LOooO0OO/OooO0OO;)V

    const/4 v6, 0x1

    .line 11
    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    .line 13
    sget-object v7, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v6

    const-string v4, "updateCaptureDataBean: update CaptureDataBean[%d] with captureData[%d]"

    .line 15
    invoke-static {v8, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->handlePendingImage()V

    .line 17
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    sget-object v5, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "printDataForDebug: mCaptureDataArray key: %d values: %s"

    invoke-static {v6, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v4

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "printDataForDebug: mCaptureDataBeanArray key: %d values: %s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public doStartTask(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->startTask(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public getCaptureDataByTimestamp(J)Lcom/xiaomi/camera/core/CaptureData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaptureDataByTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isAnyFrontProcessingByProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: isAnyFrontProcessingByProcessor: ImageProcessor is null! captureData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized join(Landroid/media/Image;IIZ)V
    .locals 8

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaomi/camera/core/ParallelDataZipper$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelDataZipper$3;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IIZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/camera/core/ParallelDataZipper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper$2;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Thread already die!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postCaptureFail(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postCaptureFail: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v1, "postCaptureFail: worker thread has died"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->releaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public postReleaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postReleaseData: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ReleaseDataParameter;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v1, "postReleaseData: worker thread has died"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->releaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized postStartTask(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 2
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postStartTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->sendStartTaskMessage(Lcom/xiaomi/camera/core/CaptureData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Thread already die!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public printDataForDebug()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0o;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
