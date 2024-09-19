.class public Lcom/android/camera/fragment/film/FragmentFilmPreview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFilmPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentFilmPreview"


# instance fields
.field public mAudioController:Lcom/android/camera/module/AudioController;

.field public mFilmList:Lcom/android/camera/fragment/film/FilmList;

.field public mOldControlStream:I

.field public mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mPreviewIndex:I

.field public mPreviewLayout:Landroid/view/ViewGroup;

.field public mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

.field public mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mOldControlStream:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmResourceSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/BaseFragmentPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    return-object p0
.end method

.method private initViewPager()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070893

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 5
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070897

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v0, v2

    const/4 v10, 0x2

    .line 9
    div-int/2addr v4, v10

    .line 10
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;-><init>(Lcom/android/camera/fragment/film/FragmentFilmPreview;)V

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 11
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/camera/fragment/film/FragmentFilmPreview$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview$2;-><init>(Lcom/android/camera/fragment/film/FragmentFilmPreview;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/android/camera/fragment/film/FilmPreviewTransformer;

    invoke-direct {v3}, Lcom/android/camera/fragment/film/FilmPreviewTransformer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move v12, v11

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    if-ge v12, v3, :cond_1

    .line 16
    new-instance v13, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;

    invoke-direct {v13}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v3, v12}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/camera/fragment/film/FilmItem;

    iget v9, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewIndex:I

    move-object v3, v13

    move v4, v12

    move v6, v2

    move v7, v1

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/fragment/film/FragmentFilmPreviewItem;->setData(ILcom/android/camera/fragment/film/FilmItem;IILandroid/view/View$OnClickListener;I)V

    .line 18
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewIndex:I

    invoke-virtual {v0, p0, v11}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private restoreOuterAudio()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mOldControlStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mOldControlStream:I

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method private silenceOuterAudio()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mOldControlStream:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method private transformToGallery(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const v0, 0xfffff3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {p2}, Lcom/android/camera/fragment/film/FragmentFilmGallery;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->setPreviewData(I)V

    .line 8
    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p0

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->setPreviewData(I)V

    .line 11
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 14
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->getFragmentInto()I

    move-result p1

    const/16 p2, 0x8

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {p0, v0, p1, p2, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->updateCurrentFragments(III[I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff4

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00cb

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a04ce

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a04e9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->initViewPager()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->transformToGallery(ILandroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04c8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FragmentFilmPreview"

    const-string/jumbo v1, "vv_preview_item_collapsing"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v1, 0x7f0a04ca

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->transformToGallery(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->restoreOuterAudio()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->silenceOuterAudio()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public setPreviewData(ILcom/android/camera/fragment/film/FilmList;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mPreviewIndex:I

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    return-void
.end method

.method public setResourceSelectedListener(Lcom/android/camera/fragment/film/FilmResourceSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method
