.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFastMotion.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;


# static fields
.field public static final ANNOUNCE_TIP:I = 0x2

.field public static final FRAGMENT_INFO:I = 0xfffff1

.field public static final HIDE_TIP:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

.field public mCurrentState:I

.field public mFastMotionTipSpeedDesc:Landroid/widget/TextView;

.field public mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

.field public mFastMotionTipsSaveTime:Landroid/widget/TextView;

.field public mFastMotionTipsTitle:Landroid/widget/TextView;

.field public mFastMotionTipslayout:Landroid/view/View;

.field public mFastmotionTipContentDescription:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mRootView:Landroid/view/View;

.field public mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    .line 3
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastmotionTipContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->resetSlideTip()V

    return-void
.end method

.method private initFastMotionType()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initViewPager()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initFastMotionType(Ljava/lang/String;Z)V

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->setViewPagerPageByType(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckFastMotion(Z)V

    :cond_0
    return-void
.end method

.method private initFastMotionType(Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->setCurrentType(Ljava/lang/String;)V

    return-void
.end method

.method private initSlideTipRotation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0702cf

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0702d1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initViewPager()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;

    invoke-direct {v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;-><init>()V

    .line 6
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v4, v5, v3, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;)V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;

    invoke-direct {v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;-><init>()V

    .line 10
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v4, v5, v3, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;)V

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00ooo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00ooo/OooO00o;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onDismissFinished(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->resetFragment()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->resetTips()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckFastMotion(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearFastmotionValue()V

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 p1, 0x1

    .line 9
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckFastMotion(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    :cond_0
    return-void
.end method

.method private resetSlideTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private resetTips()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 4
    :cond_0
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_2
    return-void
.end method

.method private setViewPagerPageByType(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput v3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array v1, v2, [I

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->onDismissFinished(I)V

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff1

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0082

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    const v0, 0x7f0a0193

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const v1, 0x7f0a018e

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FastmotionIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    .line 9
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 10
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 11
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    const v0, 0x7f0a017f

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initFastMotionType()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->setClosed(Z)V

    .line 2
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->dismiss(II)Z

    move-result p0

    return p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->resetSlideTip()V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->setClosed(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v2, 0xfffff1

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->onBackEvent(I)Z

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
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
    iget p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->onBackEvent(I)Z

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragment;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initSlideTipRotation()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initFastMotionType()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mRootView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    return-void
.end method

.method public showFastmotionTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipslayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initSlideTipRotation()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastmotionTipContentDescription:Ljava/lang/String;

    const/16 v0, 0x8

    if-eqz p4, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

    const/4 v7, 0x0

    const-string v4, ""

    move-object v3, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/ui/FastmotionIndicatorView;->showFastmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastmotionTipContentDescription:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsIndicator:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mFastMotionTipsSaveTime:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public switchType(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mComponentFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->initFastMotionType(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->setViewPagerPageByType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public visibleHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method
