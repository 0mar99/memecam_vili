.class public Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;
.super Ljava/lang/Object;
.source "ImageReceiverExecutor.java"


# static fields
.field public static final MAX_REPROCESS_CACHE_COUNT:I = 0xf

.field public static final TAG:Ljava/lang/String; = "ImageReceiverExecutor"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mIProcessor:Lcom/xiaomi/camera/mivi/IProcessor;

.field public mMockCameraListener:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

.field public mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

.field public mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaomi/camera/mivi/bean/RequestData;",
            ">;"
        }
    .end annotation
.end field

.field public mReceiveThread:Ljava/lang/Thread;

.field public mReprocessCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

.field public mReprocessSemaphore:Ljava/util/concurrent/Semaphore;

.field public mReprocessThread:Ljava/lang/Thread;

.field public mResultImageDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/xiaomi/camera/mivi/bean/ResultImageData;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mResultImageDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    .line 7
    new-instance v1, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$1;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mMockCameraListener:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

    .line 8
    new-instance v1, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageReceiveExecutor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/xiaomi/camera/mivi/ImageProcessor;

    invoke-direct {v0}, Lcom/xiaomi/camera/mivi/ImageProcessor;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mIProcessor:Lcom/xiaomi/camera/mivi/IProcessor;

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->getInstance()Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, p1, p0, v1}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->init(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private loop()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "ImageReceiverExecutor"

    const-string v2, "loop: start"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    const-string v3, "stopReceiveLoop: "

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/mivi/bean/RequestData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loop: after take receiver data from queue, the size is > "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 6
    :goto_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 7
    iget-boolean v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    const/4 p0, 0x5

    const-string v0, "loop: requestData is null"

    .line 9
    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loop: start handle data > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->getInstance()Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->take()Lcom/xiaomi/camera/mivi/ICameraImageReceiver;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "loop: break with null receiver"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .line 13
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loop: requestData > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mMockCameraListener:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

    invoke-virtual {v2, v4, v3}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->startRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;)V

    goto/16 :goto_0
.end method

.method private startReprocessLoop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0OO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0OO;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V

    const-string v2, "MockCameraReprocessThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessThread:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->getInstance()Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->release()V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->loop()V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 8

    const-string v0, "stopReprocessLoop"

    const-string v1, "ImageReceiverExecutor"

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    if-eqz v2, :cond_1

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-string v2, "startReprocessLoop: start acquire semaphore"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v2, "startReprocessLoop: acquire semaphore done"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mResultImageDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startReprocessLoop: mResultImageDataQueue size > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mResultImageDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startReprocessLoop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mIProcessor:Lcom/xiaomi/camera/mivi/IProcessor;

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/mivi/IProcessor;->process(Lcom/xiaomi/camera/mivi/bean/ResultImageData;)V

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getPictureName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getFrameNumber()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/xiaomi/camera/MIVICaptureManager;->getParallelTaskData(Ljava/lang/String;JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    instance-of v3, v3, Lcom/xiaomi/camera/mivi/CvReProcessor;

    if-nez v3, :cond_3

    .line 13
    :cond_2
    new-instance v3, Lcom/xiaomi/camera/mivi/CvReProcessor;

    invoke-direct {v3}, Lcom/xiaomi/camera/mivi/CvReProcessor;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    :cond_3
    const-string v3, "reprocess with CvReProcessor"

    .line 14
    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    instance-of v3, v3, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;

    if-nez v3, :cond_6

    .line 16
    :cond_5
    new-instance v3, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;

    invoke-direct {v3}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    :cond_6
    const-string v3, "reprocess with VtReProcessorProxy"

    .line 17
    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReProcessProxy:Lcom/xiaomi/camera/mivi/IReProcessor;

    iget-object v4, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReprocessCallback:Lcom/xiaomi/camera/mivi/IReProcessor$Callback;

    invoke-virtual {v3, v2, v4}, Lcom/xiaomi/camera/mivi/IReProcessor;->submit(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/IReProcessor$Callback;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    iget-boolean v2, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mStop:Z

    if-eqz v2, :cond_0

    .line 21
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "ImageReceiverExecutor"

    const-string v1, "release: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0O0;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0Oo;-><init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V

    const-string v2, "MockCameraReceiveThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveThread:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->startReprocessLoop()V

    return-void
.end method

.method public submit(Lcom/xiaomi/camera/mivi/bean/RequestData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit: E > requestData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageReceiverExecutor"

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "submit: size > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->mReceiveImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "submit: X"

    .line 5
    invoke-static {v2, v1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
