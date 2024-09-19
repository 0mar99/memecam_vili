.class public Lcom/xiaomi/camera/liveshot/util/HandlerHelper;
.super Ljava/lang/Object;
.source "HandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;,
        Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HandlerHelper"


# instance fields
.field public final mPendingMessageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingMessageQueueLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;

    .line 3
    invoke-static {v1}, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->access$100(Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 4
    :try_start_1
    iput-boolean v3, v1, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->releaseRequested:Z

    .line 5
    invoke-static {v1}, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->access$100(Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResponseReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v2, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;Lcom/xiaomi/camera/liveshot/util/HandlerHelper$1;)V

    .line 5
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 9
    new-instance v5, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;

    invoke-direct {v5, v3, v2}, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 12
    monitor-enter v1

    :goto_1
    if-nez v4, :cond_1

    .line 13
    :try_start_1
    iget-boolean p1, v2, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->releaseRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    const-wide/16 v5, 0xa

    .line 14
    :try_start_2
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 15
    iget-object v4, v2, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->reply:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_3
    sget-object v3, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_4
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 21
    monitor-exit p1

    return-object v4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 22
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 23
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
