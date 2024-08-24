.class public Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# instance fields
.field public final mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p0, :cond_11

    .line 2
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_e

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x63

    if-eq v0, v2, :cond_6

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 6
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 7
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p1

    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    .line 8
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_3

    .line 10
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnInfo(II)Z

    return-void

    .line 13
    :cond_4
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnError(II)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnCompletion()V

    .line 16
    :cond_5
    invoke-static {p0, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    return-void

    .line 17
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_7

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    goto :goto_1

    .line 19
    :cond_7
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkTimedText;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v2, p1}, Ltv/danmaku/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    :goto_1
    return-void

    .line 21
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 22
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 23
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p1

    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    .line 24
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    .line 25
    invoke-virtual {p0, p1, v0, v1, v2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void

    .line 26
    :cond_9
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnSeekComplete()V

    return-void

    .line 27
    :cond_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_b

    move-wide v0, v2

    .line 28
    :cond_b
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v4

    cmp-long p1, v4, v2

    const-wide/16 v6, 0x64

    if-lez p1, :cond_c

    mul-long/2addr v0, v6

    .line 29
    div-long v2, v0, v4

    :cond_c
    cmp-long p1, v2, v6

    if-ltz p1, :cond_d

    goto :goto_2

    :cond_d
    move-wide v6, v2

    :goto_2
    long-to-int p1, v6

    .line 30
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnBufferingUpdate(I)V

    return-void

    .line 31
    :cond_e
    invoke-static {p0, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    .line 32
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnCompletion()V

    return-void

    .line 33
    :cond_f
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->notifyOnPrepared()V

    :cond_10
    :goto_3
    return-void

    .line 34
    :cond_11
    :goto_4
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IjkMediaPlayer went away with unhandled events"

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
