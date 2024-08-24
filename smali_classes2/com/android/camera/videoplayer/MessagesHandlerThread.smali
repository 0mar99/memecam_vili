.class public Lcom/android/camera/videoplayer/MessagesHandlerThread;
.super Ljava/lang/Object;
.source "MessagesHandlerThread.java"


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String; = "MessagesHandlerThread"


# instance fields
.field public mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

.field public final mPlayerMessagesQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/camera/videoplayer/player_messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

.field public final mQueueProcessingThread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    .line 3
    new-instance v0, Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-direct {v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;-><init>(Lcom/android/camera/videoplayer/MessagesHandlerThread;)V

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueProcessingThread:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    return v0
.end method

.method public static synthetic access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/videoplayer/MessagesHandlerThread;Lcom/android/camera/videoplayer/player_messages/Message;)Lcom/android/camera/videoplayer/player_messages/Message;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

    return-object p1
.end method


# virtual methods
.method public addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V
    .locals 4

    const-string v0, "<< addMessage, unlock "

    .line 1
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> addMessage, lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted when addMessage."

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 10
    :goto_1
    sget-boolean v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 12
    :cond_5
    throw v1
.end method

.method public addMessages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/camera/videoplayer/player_messages/Message;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<< addMessages, unlock "

    .line 1
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> addMessages, lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted when addMessage."

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    sget-boolean v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 10
    :goto_1
    sget-boolean v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 12
    :cond_5
    throw v1
.end method

.method public clearAllPendingMessages(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clearAllPendingMessages, mPlayerMessagesQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 4
    sget-boolean p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< clearAllPendingMessages, mPlayerMessagesQueue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot perform action, you are not holding a lock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pauseQueueProcessing(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseQueueProcessing, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string p1, "Interrupted when pauseQueueProcessing."

    invoke-static {p0, p1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resumeQueueProcessing(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeQueueProcessing, unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public terminate()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v1, ">> terminate lock"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted when try to terminate."

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    :cond_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v2, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 9
    :cond_1
    throw v0
.end method
