.class public Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;
.super Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;
.source "SetUrlDataSourceMessage.java"


# instance fields
.field public final mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    .line 2
    iput-object p2, p0, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

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

    move-result-object p1

    check-cast p1, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
