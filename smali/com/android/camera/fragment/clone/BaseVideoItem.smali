.class public abstract Lcom/android/camera/fragment/clone/BaseVideoItem;
.super Ljava/lang/Object;
.source "BaseVideoItem.java"

# interfaces
.implements Lcom/android/camera/videoplayer/manager/VideoItem;
.implements Lcom/android/camera/visibilityutils/items/ListItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;
    }
.end annotation


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "BaseVideoItem"


# instance fields
.field public final mCurrentViewRect:Landroid/graphics/Rect;

.field public final mIsLand:Ljava/lang/Boolean;

.field public final mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mIsLand:Ljava/lang/Boolean;

    return-void
.end method

.method private viewIsPartiallyHiddenBottom(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

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

.method private viewIsPartiallyHiddenEnd()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private viewIsPartiallyHiddenStart(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

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
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

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
.method public createView(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/VideoViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 5
    new-instance v1, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p2, v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->addMediaPlayerListener(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextureViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTitle1:Landroid/widget/TextView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTitle2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTitle3:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    :cond_1
    return-object p1
.end method

.method public deactivate(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0, p1}, Lcom/android/camera/videoplayer/manager/VideoItem;->stopPlayback(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    return-void
.end method

.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public getVisibilityPercents(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mIsLand:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/BaseVideoItem;->viewIsPartiallyHiddenEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int p0, p1, p0

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/BaseVideoItem;->viewIsPartiallyHiddenStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    :cond_1
    :goto_0
    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/BaseVideoItem;->viewIsPartiallyHiddenTop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int p0, p1, p0

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/BaseVideoItem;->viewIsPartiallyHiddenBottom(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mCurrentViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr p0, v1

    div-int v1, p0, p1

    :cond_4
    :goto_1
    return v1
.end method

.method public setActive(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    .line 2
    new-instance v1, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;

    invoke-direct {v1, p2, p1}, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;-><init>(ILandroid/view/View;)V

    iget-object p1, v0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object p2, p0, Lcom/android/camera/fragment/clone/BaseVideoItem;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/camera/videoplayer/manager/VideoItem;->playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    return-void
.end method

.method public abstract update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
.end method
