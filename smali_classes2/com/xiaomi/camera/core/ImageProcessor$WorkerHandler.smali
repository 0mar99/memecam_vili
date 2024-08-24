.class public Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;
.super Landroid/os/Handler;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkerHandler"
.end annotation


# instance fields
.field public final mProcessorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->flushTaskSession(J)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/ImageProcessor;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->flushTaskSession(J)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->access$200(Lcom/xiaomi/camera/core/ImageProcessor;J)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$WorkerHandler;->mProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->access$100(Lcom/xiaomi/camera/core/ImageProcessor;)V

    :cond_5
    :goto_0
    return-void
.end method
