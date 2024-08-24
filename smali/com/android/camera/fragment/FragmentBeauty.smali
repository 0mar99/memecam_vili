.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;
.implements Lcom/android/camera/protocol/protocols/MakeupProtocol;
.implements Lio/reactivex/functions/Consumer;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BasePanelFragment;",
        "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
        "Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;",
        "Lcom/android/camera/protocol/protocols/MakeupProtocol;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfb

.field public static final LOG_TAG:Ljava/lang/String; = "FragmentBeauty"

.field public static final SEEKBAR_PROGRESS_RATIO:I = 0x1

.field public static final SEEK_BAR_LAYOUTPARAMS_BEAUTY_DEFAULT_TYPE:I = 0x0

.field public static final SEEK_BAR_LAYOUTPARAMS_BEAUTY_SUBEFFECT_TYPE:I = 0x1

.field public static final SEEK_BAR_LAYOUTPARAMS_SHINE_COMPARE_TYPE:I = 0x2


# instance fields
.field public mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

.field public mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

.field public mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

.field public mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

.field public mCompareViewLayout:Landroid/view/View;

.field public mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

.field public mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

.field public mCurrentState:I

.field public mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsSkinColorShow:Z

.field public mMakeup2TypeUIOpt:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/camera/fragment/beauty/IBeautyTypeUI;",
            ">;"
        }
    .end annotation
.end field

.field public mRootView:Landroid/view/View;

.field public mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

.field public mSeekBarMaxProgress:I

.field public mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    .line 4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/beauty/SubEffectUI;Lcom/android/camera/fragment/beauty/IBeautyTypeUI;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->setSubEffectType(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentBeauty;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/FragmentBeauty;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/BeautyItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    return-object p0
.end method

.method private adjustSeekBarLayoutParams(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070130

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/SeekBarCompat;->setValuePaddingStart(F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070129

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const p1, 0x800003

    .line 9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070135

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/SeekBarCompat;->setValuePaddingStart(F)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070134

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const p1, 0x800005

    .line 16
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070132

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/SeekBarCompat;->setValuePaddingStart(F)V

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p0

    return-object p0
.end method

.method private initShineCompareView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportShineCompare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-static {v0, v1}, Lcom/android/camera/animation/FolmeUtils;->handleTouchTint(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    .line 10
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initVideoBokehLevel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private isShineFrontMakeupsType()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "12"

    .line 2
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "13"

    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private resetTips()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->showZoomTipImage()V

    .line 4
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setAdjustSeekBarVisible(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method private setBeautyTypeSubEffectType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyItem;->makeup2SubEffect:Ljava/lang/String;

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setCurrentItemType(Lcom/android/camera/fragment/beauty/BeautyItem;)V

    :cond_0
    return-void
.end method

.method private setSeekBarMode(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    const/16 p1, 0xc8

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f08013d

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move p2, v0

    move p1, v1

    goto :goto_1

    .line 4
    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080981

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SeekBarCompat;->setSupportShowValue(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SeekBarCompat;->setCenterTwoWayMode(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "12"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMin(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDisplayNameRes()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getProgressByCurrentItem()I

    move-result p1

    mul-int/2addr p1, v1

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    return-void
.end method

.method private showOrHideCompareView(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showOrHideSkinColor(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    new-array v2, v2, [I

    const/16 v4, 0xe6

    aput v4, v2, v0

    .line 3
    invoke-interface {v1, v3, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v2, [I

    const/16 v4, 0xe0

    aput v4, v2, v0

    .line 4
    invoke-interface {v1, v3, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 5
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method private showZoomTipImage()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xad

    if-eq v0, v1, :cond_1

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :cond_0
    :pswitch_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v1, v2, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 9
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 10
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 13
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSeekBar(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDefaultProgressByCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    mul-int/2addr v0, v1

    .line 2
    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->isSupportTwoWayAdjustable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/fragment/beauty/IBeautyTypeUI;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->getSubEffectType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setCheck(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/fragment/beauty/IBeautyTypeUI;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->getSubEffectType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setCheck(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setProgressForCurrentItem(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public clearBeauty()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->clearBeauty()V

    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->dismiss(II)Z

    return-void
.end method

.method public dismiss(II)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    move-result p0

    return p0
.end method

.method public feedRotation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAnimationType()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getDistanceForWM()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x61f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f070106

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    return v0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfb

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0059

    return p0
.end method

.method public getSupportedBeautyItems(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public hideBeautyLayout(II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 4
    :cond_2
    iput v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v3, :cond_4

    return v1

    :cond_4
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p2, v4, :cond_6

    if-eq p2, v2, :cond_6

    if-eq p2, v0, :cond_6

    if-eq p2, v3, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v2

    if-eqz v2, :cond_7

    new-array v1, v1, [I

    .line 12
    invoke-interface {v2, v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 13
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    if-eq p2, v3, :cond_8

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onDismissFinished(I)V

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 16
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onShineDismiss(I)V

    :cond_8
    return v4
.end method

.method public initAdjustSeekBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080981

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$4;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method public initShineType()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->provideRotateItem(Ljava/util/List;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 10
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoSquareModule()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 17
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getMakeUpAndFilterPanelMarginBottom(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 21
    :cond_5
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 22
    :goto_1
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    if-nez v0, :cond_6

    .line 24
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySettingManager;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    .line 25
    :cond_6
    iput v6, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    .line 26
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initAdjustSeekBar()V

    .line 29
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineCompareView()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, v7}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initViewPager()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    return-void
.end method

.method public initShineType(Ljava/lang/String;Z)V
    .locals 4

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setCurrentType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 37
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    :cond_1
    const/4 p2, -0x1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x39

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x8

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xa

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x9

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x7

    goto :goto_0

    :pswitch_4
    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x2

    goto :goto_0

    :pswitch_5
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xb

    goto :goto_0

    :pswitch_6
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x5

    goto :goto_0

    :pswitch_7
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :pswitch_8
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :pswitch_9
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v3

    goto :goto_0

    :pswitch_a
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v0

    goto :goto_0

    :cond_2
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x6

    goto :goto_0

    :cond_3
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xc

    :cond_4
    :goto_0
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_2

    .line 39
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 40
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p2, :cond_6

    .line 41
    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->removeAllIndicatorViews()V

    .line 42
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    invoke-interface {p2, v0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    goto :goto_1

    .line 43
    :pswitch_b
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 44
    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_2

    .line 45
    :pswitch_c
    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_2

    .line 46
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    .line 47
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 48
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p2, :cond_5

    .line 49
    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->removeAllIndicatorViews()V

    .line 50
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    invoke-interface {p2, v3}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    .line 51
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_2

    .line 52
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_2

    .line 54
    :pswitch_f
    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentBeauty;->getBeautyBusiness(Ljava/lang/String;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_2

    .line 55
    :pswitch_10
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 56
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_2

    .line 57
    :pswitch_11
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 58
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_2

    .line 59
    :cond_6
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 60
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    .line 61
    :cond_7
    :goto_2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyShineTypeSwitch(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    const v0, 0x7f0a03e2

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    .line 6
    invoke-interface {v0, p0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setOnIndicatorChangeListener(Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;)V

    .line 7
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyItem;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    const v0, 0x7f0a0099

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const v0, 0x7f0a0088

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    return-void
.end method

.method public initViewPager()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "13"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_2

    :pswitch_3
    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :pswitch_4
    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :pswitch_5
    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :pswitch_6
    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :pswitch_7
    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :pswitch_8
    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :pswitch_9
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :pswitch_a
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :pswitch_b
    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :pswitch_c
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_2

    :pswitch_d
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_2

    .line 5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown beauty type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_e
    new-instance v2, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :pswitch_f
    new-instance v2, Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-direct {v2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :pswitch_10
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->initVideoBokehLevel(Ljava/util/List;)V

    goto/16 :goto_0

    .line 9
    :pswitch_11
    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBeauty;->registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V

    goto/16 :goto_0

    .line 12
    :pswitch_12
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :pswitch_13
    new-instance v2, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;-><init>()V

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBeauty;->registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V

    .line 16
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    goto/16 :goto_0

    .line 17
    :pswitch_14
    new-instance v2, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :pswitch_15
    new-instance v2, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :pswitch_16
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyPortraitParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyPortraitParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :pswitch_17
    new-instance v2, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;-><init>()V

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBeauty;->registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V

    goto/16 :goto_0

    .line 23
    :pswitch_18
    new-instance v2, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :pswitch_19
    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :pswitch_1a
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :pswitch_1b
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->feedRotation(Ljava/util/List;)V

    .line 28
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 29
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 30
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 31
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 32
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 33
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0O;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz v1, :cond_2

    .line 36
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/NoClipChildrenLayout;

    .line 37
    invoke-interface {v1, v4}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 39
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->updateBeautySubEffectLayout(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public isBeautyPanelShow()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHiddenBeautyPanelOnShutter()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSeekBarVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isBeautyPanelShow()Z

    move-result p0

    return p0
.end method

.method public isSkinColorShow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return p0
.end method

.method public moveAIWatermark(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needMoveUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getDistanceForWM()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->moveWatermarkLayout(II)V

    :cond_0
    return-void
.end method

.method public needViewClear()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result p0

    return p0
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    instance-of v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseViewPagerFragment;->notifyThemeChanged(ILjava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    move-result p0

    return p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBarCompat;->clean()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BasePanelFragment;->onDestroyView()V

    return-void
.end method

.method public onDismissFinished(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetTips()V

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 9
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo00;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo00;-><init>(Lcom/android/camera/fragment/beauty/SubEffectUI;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setBeautyTypeSubEffectType(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    iget-object v0, v0, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->updateSeekBar(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p0, p2, :cond_0

    .line 4
    iget-object p0, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickSubEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportShineCompare()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isShineFrontMakeupsType()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isNoneBeautyStatus()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    :goto_0
    const-string/jumbo p1, "pref_beautify_color_skin_ratio_key"

    .line 8
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :goto_1
    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iput v2, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->cameraMode:I

    .line 12
    iput-boolean p4, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->fromUser:Z

    .line 13
    iput-object p2, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyType:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    invoke-virtual {p4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;

    invoke-interface {p4}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->getSubEffectType()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->makeup2SubEffect:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    const-string/jumbo p4, "sub_makeup"

    iput-object p4, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->makeup2SubEffect:Ljava/lang/String;

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMode()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyMode:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyItem:Lcom/android/camera/fragment/beauty/BeautyItem;

    invoke-interface {p1, p4}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setCurrentItemType(Lcom/android/camera/fragment/beauty/BeautyItem;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p1, p3}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setDisplayNameRes(I)V

    const-string p1, "NONE"

    .line 20
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    return-void

    :cond_7
    const-string p1, "key_video_bokeh_blur_null"

    .line 22
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    return-void

    :cond_8
    const-string/jumbo p1, "pref_beautify_makeups_none"

    .line 24
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetBeauty()V

    .line 27
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p0, :cond_9

    .line 28
    invoke-interface {p0, v1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    :cond_9
    return-void

    .line 29
    :cond_a
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p3

    const-string p4, "13"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    .line 30
    iget-object p4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p4, :cond_c

    if-eqz p3, :cond_c

    .line 31
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p1, :cond_b

    .line 33
    invoke-interface {p1, v0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    .line 34
    :cond_b
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOoo;

    invoke-direct {p3, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOOoo;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 35
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    goto :goto_3

    .line 36
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz p1, :cond_d

    .line 37
    invoke-interface {p1, v1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    .line 38
    :cond_d
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBeauty;->updateSeekBar(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :cond_e
    :goto_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/camera/NoClipChildrenLayout;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->updateBeautySubEffectLayout(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xfb

    if-ne v2, v4, :cond_0

    .line 4
    invoke-virtual {p0, v1, v3}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getStoredFragment(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/16 v0, 0x9

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setShineComparation(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->clear()V

    :cond_1
    return-void
.end method

.method public oneKeyCloseMutexSpecifyBeautyType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->oneKeyCloseMutexSpecifyBeautyType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    iget p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x7

    if-ne p3, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa9

    if-ne p1, p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCompareViewLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->provideRotateItem(Ljava/util/List;I)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p1, :cond_4

    .line 11
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    :cond_4
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    const-class v0, Lcom/android/camera/protocol/protocols/MakeupProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method public registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetBeauty()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->resetBeauty()V

    :cond_0
    return-void
.end method

.method public resetFragment()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideCompareView(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    :cond_0
    return-void
.end method

.method public setViewPagerPageByType(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setWatermarkVisible(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needMoveUp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->setWatermarkVisible(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance4Filter(Landroid/view/View;)V

    return-void
.end method

.method public switchType(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportShineCompare()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "12"

    .line 5
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    goto :goto_0

    :cond_0
    const-string v0, "13"

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->adjustSeekBarLayoutParams(I)V

    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    const-class v0, Lcom/android/camera/protocol/protocols/MakeupProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method public updateBeautyMutex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyMutexManager:Lcom/android/camera/fragment/beauty/BeautyMutexManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->updateMutex(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBeautySubEffectLayout(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    const-string v1, "FragmentBeauty"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateBeautySubEffectLayout: BeautySubEffectLayout is NULL"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->removeAllIndicatorViews()V

    if-nez p1, :cond_1

    const-string/jumbo p0, "updateBeautySubEffectLayout: fragment is NULL"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;

    if-nez v0, :cond_2

    const-string/jumbo p0, "updateBeautySubEffectLayout: not instanceof IBeautyTypeUI"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    check-cast p1, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;

    .line 8
    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->getMakeup2SubEffectUI()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    invoke-interface {v2, v0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->addIndicatorViews(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mMakeup2TypeUIOpt:Ljava/util/Optional;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOo0;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;->selectBeautyItem()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "pref_beautify_makeups_none"

    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p0, "updateBeautySubEffectLayout: beautyType is NONE"

    .line 14
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySubEffectLayout:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;->setVisibility(Z)V

    return-void

    :cond_5
    :goto_0
    const-string/jumbo p0, "updateBeautySubEffectLayout: subEffectUIs is NULL OR subEffectUIs isEmpty()"

    .line 16
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
