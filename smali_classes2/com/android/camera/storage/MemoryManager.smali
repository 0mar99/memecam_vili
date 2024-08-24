.class public Lcom/android/camera/storage/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"

# interfaces
.implements Lcom/android/camera/storage/Storage$StorageListener;


# static fields
.field public static final DELAY_SECTION:I = 0x64

.field public static final MAX_MEMORY_LIMIT_RATIO:F = 0.95f

.field public static final MTK_SPEED_DOWN_RATIO:F = 0.66f

.field public static final ONE_MB:J = 0x100000L

.field public static final PHONE_SAVE_TASK_MEMORY_LIMIT_RATIO:F = 0.6f

.field public static final SAVE_QUEUE_MEMORY_RATIO:F = 1.3f

.field public static final SDCARD_SAVE_TASK_MEMORY_LIMIT:I = 0x3c00000

.field public static final SDCARD_SAVE_TASK_MEMORY_LIMIT_RATIO:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "MemoryManager"


# instance fields
.field public mMaxMemory:J

.field public mMaxTotalMemory:I

.field public mRuntime:Ljava/lang/Runtime;

.field public mSaveTaskMemoryLimit:I

.field public mSavedQueueMemoryLimit:I

.field public mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private getBaseMemory()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x438

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3c00000

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x2800000

    return-wide v0

    :cond_2
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method private getTotalUsedMemory()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLeftMemory: maxMemory="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/camera/storage/MemoryManager;->mMaxMemory:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", free="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalUsed="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/MemoryManager;->log(Ljava/lang/String;)V

    long-to-int p0, v4

    return p0
.end method

.method private initLimit()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/storage/MemoryManager;->mMaxMemory:J

    invoke-direct {p0}, Lcom/android/camera/storage/MemoryManager;->getBaseMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    const/high16 v1, 0x3c00000

    if-ge v1, v0, :cond_1

    .line 5
    iput v1, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    .line 6
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/MemoryManager;->mSavedQueueMemoryLimit:I

    .line 7
    sget-object v0, Lcom/android/camera/storage/MemoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLimit: mSavedQueueMemoryLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/storage/MemoryManager;->mSavedQueueMemoryLimit:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isReachedMemoryLimit()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReachedMemoryLimit: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/MemoryManager;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/storage/MemoryManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addUsedMemory(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public getBurstDelay()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/MemoryManager;->isNeedSlowDown()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x5

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v5, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v5, v5, 0x7

    div-int/2addr v5, v2

    if-lt v0, v5, :cond_0

    move v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_1

    move v1, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v4

    if-lt v0, v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/2addr v2, v1

    div-int/2addr v2, v3

    if-lt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBurstDelay: delayMultiple="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/MemoryManager;->log(Ljava/lang/String;)V

    mul-int/lit8 v1, v1, 0x64

    return v1
.end method

.method public initMemory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/MemoryManager;->mMaxMemory:J

    long-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iput v0, p0, Lcom/android/camera/storage/MemoryManager;->mMaxTotalMemory:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/storage/MemoryManager;->initLimit()V

    .line 5
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V

    .line 6
    sget-object v0, Lcom/android/camera/storage/MemoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMemory: maxMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/storage/MemoryManager;->mMaxMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isNeedSlowDown()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSlowDown: return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSaverMemoryUse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveTaskMemoryLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaveTaskMemoryLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/MemoryManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method public isNeedStopCapture()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/storage/MemoryManager;->isReachedMemoryLimit()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/storage/MemoryManager;->mMaxTotalMemory:I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/MemoryManager;->getTotalUsedMemory()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 4
    sget-object v0, Lcom/android/camera/storage/MemoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedStopCapture: needStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public isSaveQueueFull()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/camera/storage/MemoryManager;->mSavedQueueMemoryLimit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveQueueIsFull, usedMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/MemoryManager;->mSavedQueueMemoryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/MemoryManager;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public onStoragePathChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/MemoryManager;->initMemory()V

    return-void
.end method

.method public reduceUsedMemory(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/MemoryManager;->mSaverMemoryUse:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method
