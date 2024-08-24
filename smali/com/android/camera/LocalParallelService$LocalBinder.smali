.class public Lcom/android/camera/LocalParallelService$LocalBinder;
.super Landroid/os/Binder;
.source "LocalParallelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocalParallelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field public final mAlivePostProcessorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/PostProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

.field public final mLock:Ljava/lang/Object;

.field public mMiviEngineInited:Z

.field public final synthetic this$0:Lcom/android/camera/LocalParallelService;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocalParallelService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->init(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->updateVirtualCameraIds()V

    .line 6
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->init(Landroid/content/Context;)V

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooOOo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooOOo;-><init>(Lcom/android/camera/LocalParallelService$LocalBinder;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->initMiviEngine()V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/LocalParallelService$LocalBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->initMiviEngine()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/LocalParallelService$LocalBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onTaskSessionDied()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/LocalParallelService$LocalBinder;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onTaskSessionError(J)V

    return-void
.end method

.method private checkMiviEngine()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mMiviEngineInited:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "waiting mivi engine..."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPostProcessorByCameraToken(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/PostProcessor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/PostProcessor;->getCameraToken()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getPostProcessorByOwnerToken(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/PostProcessor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/PostProcessor;->getOwnerToken()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getPostProcessorIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/xiaomi/camera/core/PostProcessor;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initMiviEngine()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "starting mivi engine"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v2, "initMiviEngine"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/xiaomi/engine/MiCameraAlgo;->init(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v2, "initMiviEngine"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mMiviEngineInited:Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;
    .locals 4

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    .line 2
    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$800(Lcom/android/camera/LocalParallelService;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->setMaxParallelRequestNumber(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$700(Lcom/android/camera/LocalParallelService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->setSRRequireReprocess(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPostProcessor: maxParallelRequestNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v3}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", SRRequireReprocess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    .line 6
    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$700(Lcom/android/camera/LocalParallelService;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isSetsEquals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    return p0

    :cond_2
    move v0, p0

    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 10
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    return p0

    .line 11
    :cond_3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 12
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 13
    invoke-virtual {v3, v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    const/4 p0, 0x1

    :cond_6
    :goto_1
    return p0
.end method

.method private isSetsEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    return p0

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 4
    invoke-virtual {v2, v4}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p0, 0x1

    :cond_5
    :goto_1
    return p0
.end method

.method private onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostProcessorClosed: processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onTaskSessionDied()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->onTaskSessionDied()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onTaskSessionError(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->onTaskSessionError(J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public configCaptureOutputBuffer(Landroid/util/SparseArray;II)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;II)",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->checkMiviEngine()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isSetsEquals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->checkAndSetReuse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureOutputBuffer: reuse current processor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->setOwnerToken(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/PostProcessor;->setCameraToken(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/PostProcessor;->getSpecList()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCaptureOutputBuffer: active PostProcessor size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/PostProcessor;

    .line 13
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->getSpecList()Landroid/util/SparseArray;

    move-result-object v4

    .line 15
    invoke-direct {p0, p1, v4}, Lcom/android/camera/LocalParallelService$LocalBinder;->isSetsEquals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->checkAndSetReuse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCaptureOutputBuffer: reuse active processor: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v3, p2}, Lcom/xiaomi/camera/core/PostProcessor;->setOwnerToken(I)V

    .line 19
    invoke-virtual {v3, p3}, Lcom/xiaomi/camera/core/PostProcessor;->setCameraToken(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eq v0, v3, :cond_2

    .line 21
    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    .line 22
    :cond_2
    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Landroid/util/SparseArray;

    .line 23
    iput-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    .line 24
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->getSpecList()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v2, 0x1

    move-object v5, v1

    move-object v1, v0

    move v0, v2

    move-object v2, v5

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_2
    if-nez v0, :cond_6

    .line 25
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->initPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/core/PostProcessor;->setOwnerToken(I)V

    .line 27
    invoke-virtual {v0, p3}, Lcom/xiaomi/camera/core/PostProcessor;->setCameraToken(I)V

    .line 28
    iget-object p2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessorList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configCaptureOutputBuffer: new processor: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p2, :cond_5

    .line 31
    iget-object p2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    move-object v1, p2

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 32
    :goto_3
    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Landroid/util/SparseArray;

    .line 33
    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    .line 34
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->configHALOutputSurface(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v1

    move-object v1, v2

    .line 35
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PostProcessor;->destroyWhenTasksFinished()V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 38
    :cond_8
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "List is empty"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "configCaptureSession: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configCaptureSession: STATE_STOPPED. processor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    const/4 p0, 0x4

    .line 7
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCaptureSession: cost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public configMaxParallelRequestNumber(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0, p1}, Lcom/android/camera/LocalParallelService;->access$602(Lcom/android/camera/LocalParallelService;I)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor;->setMaxParallelRequestNumber(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "configMaxParallelRequestNumber: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public customizeReprocessor(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->customize(Ljava/util/HashMap;)V

    return-void
.end method

.method public getFrontProcessingCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getFrontProcessingCount()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getFrontProcessingCount: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getParallelTaskNum()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getParallelTaskNum()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getParallelTaskNum: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestBlocked()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyRequestBlocked()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isAnyRequestBlocked: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestIsHWMFNRProcessing()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyRequestIsHWMFNRProcessing()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isAnyRequestIsHWMFNRProcessing: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public needWaitProcess()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->needWaitImageClose()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->needWaitAlgorithmEngine()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "needWaitProcess: null processor"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public onCameraClosed(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraClosed: E. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorByCameraToken(I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/PostProcessor;->destroyWhenTasksFinished()V

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/PostProcessor;->clearFrontProcessingTask()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCameraClosed: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCaptureCompleted: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCaptureFailed(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureFailed(JI)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCaptureFailed: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCaptureStarted: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPreCapture(Lcom/xiaomi/engine/PreProcessData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onPreCapture(Lcom/xiaomi/engine/PreProcessData;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onPreCapture: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRepeatingCaptureEnd()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onRepeatingCaptureEnd()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onRepeatingCaptureEnd: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDestroy: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->deInit()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xiaomi/engine/MiCameraAlgo;->deInit()V

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mMiviEngineInited:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onServiceDestroy: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepareParallelCapture()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "prepareParallelCapture: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p0

    return-object p0
.end method

.method public resetParallelTaskQueue()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->resetFrontProcessingTaskQueue()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "resetParallelTaskQueue: null processor"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setImageSaver: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOnPictureTakenListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/camera/LocalParallelService;->access$002(Lcom/android/camera/LocalParallelService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setOnSessionStatusCallBackListener: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOutputPictureSpec(III)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setOutputPictureSpec(III)V

    return-void
.end method

.method public setResultDataCallbackListener(Lcom/xiaomi/camera/core/IResultDataCallbackListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setResultDataCallbackListener(Lcom/xiaomi/camera/core/IResultDataCallbackListener;)V

    :cond_0
    return-void
.end method

.method public setSRRequireReprocess(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0, p1}, Lcom/android/camera/LocalParallelService;->access$702(Lcom/android/camera/LocalParallelService;Z)Z

    .line 2
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getCurrentPostProcessor()Lcom/xiaomi/camera/core/PostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setSRRequireReprocess(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setSRRequireReprocess: null processor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public shouldBlockOneByOneCapture()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->shouldBlockOneByOneCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public stopPostProcessor(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPostProcessor: E. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->getPostProcessorByOwnerToken(I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/PostProcessor;->destroyWhenTasksFinished()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stopPostProcessor: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateVirtualCameraIds()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualBackCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualFrontCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->updateVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
