.class public Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;
.super Lcom/android/camera/fragment/BaseViewPagerFragment;
.source "FragmentFilmPreviewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mCollapsing:Landroid/widget/ImageView;

.field public mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field public mFirstPreviewItem:Z

.field public mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

.field public mImageHeight:I

.field public mImageWidth:I

.field public mIndex:I

.field public mIsPlaying:Z

.field public mPreviewStart:Landroid/widget/ImageView;

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mTransitionHide:Z

.field public mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;-><init>()V

    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "%02d"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a04ca

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04c8

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mCollapsing:Landroid/widget/ImageView;

    const v1, 0x7f0a04cc

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mPreviewStart:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a04d5

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/TextureVideoView;

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setImportantForAccessibility(I)V

    const v1, 0x7f0a04c9

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mCollapsing:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mCollapsing:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageWidth:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageHeight:I

    if-lez p1, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageWidth:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 14
    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageHeight:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageWidth:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 17
    iget v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageHeight:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 22
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object v2, v2, Lcom/android/camera/fragment/film/FilmItem;->coverPath:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 27
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 29
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FilmItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private pausePlay()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->pause()V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    return-void
.end method

.method private startPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object v1, v1, Lcom/android/camera/fragment/film/FilmItem;->previewVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    return-void
.end method

.method private stopPlay()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIsPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04c8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->stopPlay()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00cc

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->stopPlay()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xd3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->startPlay()V

    :cond_0
    return-void
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mVisible:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->stopPlay()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mCollapsing:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mVisible:Z

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFirstPreviewItem:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFirstPreviewItem:Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mCollapsing:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->startPlay()V

    return-void
.end method

.method public setData(ILcom/android/camera/fragment/film/FilmItem;IILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mIndex:I

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageWidth:I

    .line 4
    iput p4, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mImageHeight:I

    .line 5
    iput-object p5, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mClickListener:Landroid/view/View$OnClickListener;

    sub-int p2, p1, p6

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mTransitionHide:Z

    if-ne p1, p6, :cond_1

    move p3, p4

    .line 7
    :cond_1
    iput-boolean p3, p0, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->mFirstPreviewItem:Z

    return-void
.end method
