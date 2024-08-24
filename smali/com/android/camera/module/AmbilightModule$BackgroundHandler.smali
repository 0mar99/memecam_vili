.class public Lcom/android/camera/module/AmbilightModule$BackgroundHandler;
.super Landroid/os/Handler;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundHandler"
.end annotation


# static fields
.field public static final MSG_NEW_IMAGE_ARRIVE:I = 0x0

.field public static final MSG_START_CAPTURE:I = 0x2

.field public static final MSG_STOP_CAPTURE:I = 0x1


# instance fields
.field public mCaptureStarted:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processImage(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/ambilight/AmbilightEngine;->prepareData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ambilight/AmbilightEngine;->frameProc()I

    move-result p0

    if-nez p0, :cond_0

    .line 3
    iget-object p0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2800(Lcom/android/camera/module/AmbilightModule;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2900(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    const/4 p3, 0x4

    if-gt p2, p3, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2908(Lcom/android/camera/module/AmbilightModule;)I

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    goto/16 :goto_2

    .line 3
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/AmbilightModule;

    if-eqz p0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$2200(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$2200(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 9
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/ambilight/AmbilightEngine;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/ambilight/AmbilightEngine;->postProc()I

    move-result v0

    .line 11
    sget-object v2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "on PostProc done."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    .line 12
    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$2200(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$2200(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {p0, v1}, Lcom/android/camera/module/AmbilightModule;->access$2202(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ambilight/AmbilightEngine;->destroy()V

    goto/16 :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    .line 18
    iget-boolean v4, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 22
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 23
    sget-object v5, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stride: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v3, v6, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/camera/ambilight/AmbilightEngine;->initData(I)V

    .line 25
    :cond_6
    invoke-direct {p0, v0, v4, v2, v1}, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->processImage(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 26
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 27
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 28
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$800(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto :goto_2

    .line 29
    :cond_7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_8
    :goto_2
    return-void
.end method
