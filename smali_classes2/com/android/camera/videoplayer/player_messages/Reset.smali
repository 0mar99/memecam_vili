.class public Lcom/android/camera/videoplayer/player_messages/Reset;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "Reset.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method public performAction(Ljava/lang/ref/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->reset()V

    return-void
.end method

.method public stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method
