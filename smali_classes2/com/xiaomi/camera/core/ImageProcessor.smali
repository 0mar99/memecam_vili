.class public abstract Lcom/xiaomi/camera/core/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;,
        Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;,
        Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;,
        Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;,
        Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_IMAGE_BUFFER_QUEUE_SIZE:I = 0x4

.field public static final DISPATCH_STATUS_OK:I = 0x0

.field public static final DISPATCH_STATUS_SESSION_ERROR:I = -0x1

.field public static final MSG_CHECK_TIMEOUT_TASK:I = 0x3

.field public static final MSG_FLUSH_TASK_SESSION:I = 0x4

.field public static final MSG_IMAGE_DOFILTER:I = 0x2

.field public static final MSG_IMAGE_RECEIVED:I = 0x1

.field public static final MSG_QUICK_FINISH:I = 0x5

.field public static final POST_PROCESSING_ERROR:Ljava/lang/String; = "engine error"

.field public static final POST_PROCESSING_TIMEOUT:Ljava/lang/String; = "engine timeout"

.field public static final PROCESS_TASK_TIMEOUT_MS:I = 0x7530

.field public static final PROCESS_TASK_TIMEOUT_MS_TEST:I = 0x9c40

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_STOPPED:I = 0x3

.field public static final STATE_STOPPING:I = 0x2

.field public static final STATE_WORKING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ImageProcessor"


# instance fields
.field public mBlockVariable:Landroid/os/ConditionVariable;

.field public mDepthImageReaderHolder:Landroid/media/ImageReader;

.field public mEffectImageReaderHolder:Landroid/media/ImageReader;

.field public mEffectImageReaderHolder2:Landroid/media/ImageReader;

.field public mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

.field public mImageBufferQueueSize:I

.field public mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field public mImageReaderHandler:Landroid/os/Handler;

.field public final mImageReaderThread:Landroid/os/HandlerThread;

.field public final mInFlightTaskList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsBokehMode:Z

.field public mMaxParallelRequestNumber:I

.field public mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mRawImageReaderHolder:Landroid/media/ImageReader;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public final mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/core/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskDataLock:Ljava/lang/Object;

.field public mTaskSession:Lcom/xiaomi/engine/TaskSession;

.field public mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

.field public final mTaskSessionLock:Ljava/lang/Object;

.field public mWorkHandler:Landroid/os/Handler;

.field public final mWorkHandlerLock:Ljava/lang/Object;

.field public final mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    .line 8
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    .line 11
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 12
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    .line 13
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mStateLock:Ljava/lang/Object;

    .line 14
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    .line 15
    iput v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 16
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 17
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getProcessorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 18
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "_%s_%dx%d_%d"

    .line 19
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ImageProcessor"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkerThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReaderThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    .line 23
    new-instance p1, Lcom/xiaomi/camera/core/FilterProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>(Landroid/os/ConditionVariable;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 24
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    .line 25
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/engine/GraphDescriptorBean;->getOperationModeID()I

    move-result p1

    const p2, 0x8002

    if-ne p1, p2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->processImage()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/core/ImageProcessor;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->calculateAndRemoveTimeoutTask(J)V

    return-void
.end method

.method private calculateAndRemoveTimeoutTask(J)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    iget-object v6, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    .line 5
    iget-wide v7, v6, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v7, p1, v7

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getTimeout()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 6
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8
    sget-object v5, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v7, "task %d is timeout. cost: %dms"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v9, v6, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    iget-wide v9, v6, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v9, p1, v9

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v3

    .line 10
    invoke-static {v5, v7, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v5, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    const-string v0, "engine timeout"

    .line 13
    invoke-direct {p0, p2, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->clearAbnormalInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private clearAbnormalInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAbnormalInFlightTask: E. timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v0, :cond_0

    .line 5
    iget-wide v1, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-wide v1, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-interface {p0, v1, v2, p2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessFailed(JLjava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object p0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->clearDepartedTask(Ljava/lang/String;)V

    .line 8
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "clearAbnormalInFlightTask: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getTimeout()J
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x9c40

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    return-wide v0
.end method

.method private isAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "mockProcessImage: skip image processor"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    const/4 v2, 0x1

    move v3, v2

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {p0, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;

    move-result-object p1

    .line 11
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    .line 12
    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-direct {v1, p1, v0, v2}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    .line 14
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageDone(J)V

    return-void

    .line 15
    :cond_2
    :goto_1
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "mockProcessImage: dataBeans is empty!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processImage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "processImage: task session has died"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/TaskData;

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage: timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->processImageInner(Lcom/xiaomi/camera/core/TaskData;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private processImageInner(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->processImage(Lcom/xiaomi/camera/core/TaskData;)V

    :goto_0
    return-void
.end method

.method private releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCaptureDataBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 11
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 14
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz p0, :cond_5

    .line 15
    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 16
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_6
    return-void
.end method

.method private releaseInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/TaskData;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 3
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private releaseResource()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 13
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method private sendCheckTimeoutTaskMessage()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E: sendCheckTimeoutTaskMessage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "sendCheckTimeoutTaskMessage: worker thread is dead"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "X: sendCheckTimeoutTaskMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private sendProcessImageMessage()V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E: sendProcessImageMessage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "sendProcessImageMessage"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v3, "sendProcessImageMessage: failed. %s has died!"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_1

    const-string p0, "WorkThread"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v2, v4

    .line 10
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "X: sendProcessImageMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 3
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
.method public abstract configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
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
.end method

.method public configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .locals 4
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

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v3

    .line 4
    invoke-static {v1, v2, p1, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/core/ImageProcessor$1;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 9
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    .line 10
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E: dispatchFilterTask"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 8
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "dispatchFilterTask: failed. %s has died!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v4, :cond_1

    const-string p0, "WorkThread"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v2, v3

    .line 10
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "X: dispatchFilterTask"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: E. processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-nez v0, :cond_0

    .line 8
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "dispatchTask: task session has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 9
    monitor-exit v2

    return p0

    .line 10
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: send image to engine. taskNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->isPartialTask()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: send partial to busy engine. taskNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 17
    :cond_2
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchTask: skip. taskNum = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "dispatchTask: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 19
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->image:Landroid/media/Image;

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 3
    iget v3, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->target:I

    .line 4
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 5
    invoke-interface {v4, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_0

    if-ne v5, v3, :cond_2

    .line 6
    :cond_0
    sget-boolean v6, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_RENDER:Z

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v6

    invoke-static {v6}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    sget-object v6, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {v1, v4, v0, v3}, Lcom/xiaomi/camera/core/FilterProcessor;->doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v2, "prop skip render"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 12
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doFilter: no task data found for image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v5

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    invoke-interface {v2, v0, v3, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    goto :goto_2

    .line 14
    :cond_4
    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    if-eqz p1, :cond_5

    .line 15
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFilter: release pool image "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 17
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_5
    move v1, v5

    .line 18
    :goto_2
    sget-boolean p1, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez p1, :cond_9

    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    if-eq v3, v5, :cond_7

    const/4 p1, 0x2

    if-eq v3, p1, :cond_6

    .line 19
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_3

    .line 22
    :cond_8
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 23
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V

    return-void
.end method

.method public flushTaskSession(J)V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushTaskSession: E, ts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    if-eqz v3, :cond_1

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v2

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long p0, p1, v3

    if-lez p0, :cond_3

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/engine/TaskSession;->quickFinish(J)V

    :cond_2
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/engine/TaskSession;->quickFinish(J)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/engine/TaskSession;->flushCurrentTask()V

    :cond_4
    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/xiaomi/engine/TaskSession;->flushCurrentTask()V

    .line 12
    :cond_5
    :goto_1
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "flushTaskSession: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getImageBufferQueueSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return p0
.end method

.method public getImageReaderHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getProcessorName()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTaskSession2()Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAlgorithmEngineBusy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBokekMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return p0
.end method

.method public abstract isIdle()Z
.end method

.method public isImageValid(Landroid/media/Image;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopping()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needSlowDown(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int v2, v0, v1

    add-int/2addr v2, p1

    .line 5
    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    const/4 v3, 0x0

    if-le v2, p0, :cond_0

    .line 6
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "slow down. processingTaskNum = %d, pendingTaskNum = %d, inFlightTaskNum = %d"

    .line 8
    invoke-static {p0, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    return v3

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onPreProcessImage: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v7

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v9, "onPreProcessImage: timestamp=%d, startTime=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v9, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    new-instance v9, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V

    .line 8
    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    .line 12
    sget-object v5, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v6, "onPreProcessImage: timestamp=%d, taskDataNum=%d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v1, v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 14
    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 15
    :cond_2
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreProcessImage: no record found with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendCheckTimeoutTaskMessage()V

    .line 19
    :cond_3
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "onPreProcessImage: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProcessImageDone(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onProcessImageDone: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendCheckTimeoutTaskMessage()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProcessImageDone: timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    sget-object p2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessImageDone: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    .line 11
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "onProcessImageDone: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_0
    return-void
.end method

.method public onTaskSessionDied()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskSessionDied: E. processor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 5
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 10
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    .line 11
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 12
    iget-wide v4, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    .line 14
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 15
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove in flight task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 17
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/TaskData;

    .line 19
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 22
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_2

    .line 23
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 24
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove pending task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 25
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onTaskSessionDied: X"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 28
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onTaskSessionError(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {p2, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskSessionError: processor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "engine error"

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->clearAbnormalInFlightTask(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public postFlushTaskSession(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: postFlushTaskSession, ts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "postFlushTaskSession"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_1
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p2, "postFlushTaskSession: failed. %s has died!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_2

    const-string p0, "WorkThread"

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    aput-object p0, v1, v2

    .line 11
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "X: postFlushTaskSession"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract processImage(Lcom/xiaomi/camera/core/TaskData;)V
.end method

.method public queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    const/4 p0, 0x2

    .line 1
    invoke-static {p1, p2, p0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method public setImageBufferQueueSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 11
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "setTaskSession: worker thread has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public setTaskSession2(Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 11
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "setTaskSession2: worker thread has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public startWork()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E: init WorkerHandler"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/camera/core/ImageProcessor;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "X: init WorkerHandler"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->setState(I)V

    .line 10
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "startWork: %s started"

    invoke-static {v2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopWork()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWork: E. processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->setState(I)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ImageProcessor: %s stopped"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWork: E. release WorkerHandler"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWork: X. release WorkerHandler"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz v0, :cond_2

    .line 17
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 21
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    if-eqz v3, :cond_4

    .line 23
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v3

    .line 24
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    move-object v2, v3

    .line 25
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Lcom/xiaomi/engine/TaskSession;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 27
    invoke-virtual {v2}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 28
    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseResource()V

    .line 29
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "stopWork: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 30
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 31
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public stopWorkWhenIdle()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWorkWhenIdle: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->setState(I)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V

    return-void
.end method

.method public tryToReuse()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToReuse: failed! processor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "tryToReuse: failed. TaskSession is null! processor: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return v1

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object p0, v2, v3

    const-string v1, "tryToReuse: state = %d, processor: %s"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 9
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/ImageProcessor;->setState(I)V

    return v3

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public tryToStopWork()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToStopWork: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    :cond_0
    return-void
.end method
