.class public Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;
.super Ljava/lang/Object;
.source "VVWorkspacePlayerItem.java"

# interfaces
.implements Lcom/android/camera/visibilityutils/items/ListItem;
.implements Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "VVWPI"


# instance fields
.field public mCoverImageView:Landroid/widget/ImageView;

.field public final mCurrentViewRect:Landroid/graphics/Rect;

.field public mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

.field public mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

.field public mPlayView:Landroid/widget/ImageView;

.field public mVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field public mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

.field public mVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mWaitingResultSurfaceTexture:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "VVWPI"

    const-string p2, "createFromRawInfo"

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getRawInfoPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/fragment/vv/VVItem;->createFromRawInfo(Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    if-nez p2, :cond_0

    const-string p0, "create failed"

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "c++_shared"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ffmpeg"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vvmediaeditor"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lcom/xiaomi/vlog/SystemUtil;->Init(Landroid/content/Context;I)V

    return-void
.end method

.method private prepareEffectGraph(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragments()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    new-array v2, p2, [Ljava/lang/String;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    .line 5
    invoke-virtual {v2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->SetAudioMute(Z)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddSourceAndEffectByTemplate([Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    return-void
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->prepare()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->prepareEffectGraph(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    .line 13
    new-instance v0, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/mediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    .line 14
    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    new-instance v1, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;-><init>(Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/mediaprocess/EffectNotifier;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    sget-object v0, Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetPlayLoop(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    .line 20
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StartPreView()V

    return-void
.end method

.method private viewIsPartiallyHiddenBottom(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private viewIsPartiallyHiddenTop()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public deactivate(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public getVVItem()Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public getVVWorkspaceItem()Lcom/android/camera/fragment/vv/VVWorkspaceItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVVWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    return-object p0
.end method

.method public getVisibilityPercents(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->viewIsPartiallyHiddenTop()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int p0, p1, p0

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->viewIsPartiallyHiddenBottom(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    :cond_1
    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mPlayView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mWaitingResultSurfaceTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mWaitingResultSurfaceTexture:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TextureVideoView;->setVideoSpecifiedSize(II)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->startPlay(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->stopPlay()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public setActive(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public startPlay()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setImportantForAccessibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1204af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->startPlay(Landroid/view/Surface;)V

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mWaitingResultSurfaceTexture:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCoverImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mPlayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopPlay()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setImportantForAccessibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mPlayView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mPlayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StopPreView()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    .line 11
    iput-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    .line 14
    iput-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    :cond_4
    return-void
.end method

.method public updateTargetVideoView(Landroid/widget/ImageView;Lcom/android/camera/ui/TextureVideoView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->stopPlay()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mCoverImageView:Landroid/widget/ImageView;

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mVideoView:Lcom/android/camera/ui/TextureVideoView;

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->mPlayView:Landroid/widget/ImageView;

    return-void
.end method
