.class public Lcom/android/camera/CameraWorkExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "CameraWorkExecutor.java"


# static fields
.field public static final NORMAL_WORK_EXECUTOR:Lcom/android/camera/CameraWorkExecutor;

.field public static final NORMAL_WORK_EXECUTOR_CORE_POOL_SIZE:I = 0x4

.field public static final NORMAL_WORK_EXECUTOR_KEEP_ALIVE_TIME:I = 0x1e

.field public static final NORMAL_WORK_EXECUTOR_MAX_POOL_SIZE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CameraWorkExecutor"

.field public static final mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDefaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field public static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/camera/CameraWorkExecutor;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    new-instance v0, Lcom/android/camera/CameraWorkExecutor$1;

    invoke-direct {v0}, Lcom/android/camera/CameraWorkExecutor$1;-><init>()V

    sput-object v0, Lcom/android/camera/CameraWorkExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Lcom/android/camera/CameraWorkExecutor;->sDefaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 4
    new-instance v0, Lcom/android/camera/CameraWorkExecutor;

    invoke-direct {v0}, Lcom/android/camera/CameraWorkExecutor;-><init>()V

    sput-object v0, Lcom/android/camera/CameraWorkExecutor;->NORMAL_WORK_EXECUTOR:Lcom/android/camera/CameraWorkExecutor;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/android/camera/CameraWorkExecutor;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/android/camera/CameraWorkExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v8, Lcom/android/camera/CameraWorkExecutor;->sDefaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v1, 0x4

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute, work queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/CameraWorkExecutor;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraWorkExecutor"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
