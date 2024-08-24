.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/protocols/TopAlert;
.implements Lcom/android/camera/protocol/protocols/SnapShotIndicator;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "FragmentTopConfig"

.field public static final TIP_HINT_DURATION_1S:I = 0x3e8

.field public static final TIP_HINT_DURATION_2S:I = 0x7d0

.field public static final TIP_HINT_DURATION_3S:I = 0xbb8

.field public static final TIP_HINT_DURATION_5S:I = 0x1388


# instance fields
.field public flashOldValue:Ljava/lang/String;

.field public mCaptureDelayNumber:Landroid/widget/TextView;

.field public mCaptureNumberAutoHibernationOffset:Z

.field public mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentAiSceneLevel:I

.field public mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

.field public mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

.field public mDefaultMenuLandHeight:I

.field public mDeferAnimVerticalOffset:Z

.field public mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

.field public mDisplayRectTopMargin:I

.field public mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

.field public mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

.field public mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field public mImageViewBack:Landroid/widget/ImageView;

.field public mIsExtraMenuShowing:Z

.field public mIsRTL:Z

.field public mIsShowExtraReferenceLineMenu:Z

.field public mIsShowExtraTimerMenu:Z

.field public mIsShowTopLyingDirectHint:Z

.field public mIsVideoCastIntent:Z

.field public mLayoutCount:Landroid/view/View;

.field public mLayoutInterval:Landroid/view/View;

.field public mLiveShotAnimator:Landroid/animation/ObjectAnimator;

.field public mLlTimerMenu:Landroid/widget/LinearLayout;

.field public mMultiSnapNum:Landroid/widget/TextView;

.field public mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

.field public mReferenceLineTitle:Landroid/widget/TextView;

.field public mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mReferencelineBack:Landroid/widget/ImageView;

.field public mReferencelineMenu:Landroid/widget/LinearLayout;

.field public mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field public mSpacesItemWidth:I

.field public mStringBuilder:Landroid/text/SpannableStringBuilder;

.field public mSupportedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field public mTipsState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mTopAlertLayout:Landroid/widget/FrameLayout;

.field public mTopBackgroundHeight:I

.field public mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

.field public mTopConfigMenu:Landroid/view/View;

.field public mTopConfigMenuHeight:I

.field public mTopConfigViewGroup:Landroid/view/ViewGroup;

.field public mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

.field public mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

.field public mTopExtraMenuHeight:I

.field public mTopReferenceToolHight:I

.field public mTopTimerBurstToolHight:I

.field public mTvShotCount:Landroid/widget/TextView;

.field public mTvShotInterval:Landroid/widget/TextView;

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field public mZoomInAnimator:Landroid/animation/AnimatorSet;

.field public mZoomOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    const-string v0, "0"

    .line 5
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->flashOldValue:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    return-void
.end method

.method public static synthetic OooO00o(ILjava/util/List;Landroid/widget/ImageView;)V
    .locals 2

    .line 13
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-eqz v1, :cond_0

    .line 15
    check-cast v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_2

    .line 17
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result v0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-eqz p0, :cond_2

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/List;Landroid/widget/ImageView;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/fragment/top/ExtraAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/fragment/top/ExtraAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/top/FragmentTopConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private alertHDR(IZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShowMoonSelector()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_3

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    const/16 p2, 0xc2

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    :cond_3
    :goto_0
    const p2, 0x7f120441

    const-string p3, "hdr"

    .line 7
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;II)V

    return-void
.end method

.method private alertTopMusicHint(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicTip(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private animatorExtraMenuBackground(IZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 3
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 6
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 7
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ShapeBackGroundView;->cancelAnimation()V

    .line 8
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ShapeBackGroundView;->getBlackOriginHeight()I

    move-result v3

    const/16 v4, 0xff

    const/4 v6, 0x0

    if-nez v3, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x99

    :goto_1
    if-nez p2, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move v8, v4

    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v4

    move v8, v7

    .line 10
    :goto_2
    new-instance v9, Lcom/android/camera/fragment/top/FragmentTopConfig$4;

    invoke-direct {v9, v0, v1, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$4;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;ZI)V

    const/4 v4, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    .line 11
    iget-object v12, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v12}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 12
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    iget-object v13, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-nez v3, :cond_6

    move v3, v6

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v1, :cond_7

    .line 21
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    sget v3, Lcom/android/camera/ui/ShapeBackGroundView;->RADIUS:I

    invoke-virtual {v1, v8, v3, v5}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlphaAndRadius(III)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 22
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v5, "expand_start"

    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v7, -0x3f97000000000000L    # -200.0

    .line 23
    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v7, v1

    .line 24
    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 25
    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 26
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v5, "expand_end"

    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 27
    invoke-virtual {v3, v5, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v7, v14

    .line 28
    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 29
    invoke-virtual {v3, v5, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v5, v15, [Landroid/view/View;

    .line 30
    iget-object v7, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    aput-object v7, v5, v6

    iget-object v7, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    aput-object v7, v5, v2

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    .line 31
    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    .line 32
    invoke-interface {v5, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v5, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v15, [F

    fill-array-data v8, :array_0

    .line 33
    invoke-virtual {v7, v4, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-interface {v1, v3, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v1, v15, [Landroid/view/View;

    .line 34
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    aput-object v3, v1, v6

    iget-object v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "expand_start_alpha"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 36
    invoke-virtual {v1, v3, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "expand_end_alpha"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v2, v6

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_4

    .line 38
    :cond_7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v10, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v12

    move/from16 v5, p1

    move v6, v7

    move v7, v8

    move v8, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getExtraMenuAnimator(Ljava/lang/Boolean;Landroid/view/ViewGroup;Lcom/android/camera/ui/ShapeBackGroundView;IIIIILandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 39
    :cond_8
    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    new-array v3, v2, [Landroid/view/View;

    .line 45
    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v7, "shrink_start_alpha"

    invoke-direct {v5, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 47
    invoke-virtual {v5, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v7, "shrink_end_alpha"

    invoke-direct {v5, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 48
    invoke-virtual {v5, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    new-array v7, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v2, [F

    const/high16 v12, 0x43480000    # 200.0f

    aput v12, v9, v6

    const/4 v1, 0x6

    invoke-virtual {v8, v1, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-interface {v3, v5, v7}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v1, v2, [Landroid/view/View;

    .line 49
    iget-object v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    aput-object v0, v1, v6

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "shrink_start"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 51
    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "shrink_end"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 52
    invoke-virtual {v1, v3, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v15, [F

    fill-array-data v5, :array_1

    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    .line 53
    :cond_9
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 54
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 55
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v4, 0xc8

    .line 56
    invoke-virtual {v1, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v10, 0x64

    invoke-virtual {v1, v10, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 57
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_a

    new-array v1, v15, [F

    .line 58
    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    .line 59
    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfig$5;

    invoke-direct {v2, v0, v3, v7, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig$5;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;III)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    :cond_a
    iget-object v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private changeTopAlertForAccessibility(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopAlertLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopAlertLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method private checkFeatureState()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 8
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOoo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOoo;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private configBottomPopupTips(Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipState(I)V

    return-void
.end method

.method private configDetectionRectState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->motionViewState(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x8

    .line 7
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->motionViewState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private configTopCoverBackground(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setBlackOriginHeight(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    .line 6
    :goto_1
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xff

    goto :goto_2

    :cond_3
    const/16 v0, 0x99

    .line 7
    :goto_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentRadius(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v1

    .line 10
    :goto_3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlpha(I)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2, v0, p4}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 12
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_5

    .line 13
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, p1, :cond_b

    .line 14
    :cond_5
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p4}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result p4

    const/4 v0, 0x1

    if-le p1, p4, :cond_6

    move p4, v0

    goto :goto_4

    :cond_6
    move p4, v1

    :goto_4
    if-nez p4, :cond_9

    const/16 p4, 0xfe

    if-ne p3, p4, :cond_7

    goto :goto_5

    :cond_7
    if-nez p2, :cond_b

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_8

    move v1, v0

    :cond_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    goto :goto_6

    .line 17
    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_a

    move v1, v0

    :cond_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method private configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentTopVerticalOffset()I

    move-result v3

    if-ne p1, v3, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-ge p1, v3, :cond_2

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    move p4, v0

    :goto_0
    if-eqz p4, :cond_3

    return-void

    :cond_3
    sub-int p4, p1, v3

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-le p1, v3, :cond_4

    .line 5
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v5

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimateHeight(I)V

    if-eqz p3, :cond_6

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 11
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    new-instance p3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance p3, Lcom/android/camera/fragment/top/FragmentTopConfig$6;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig$6;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;IIII)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_5

    .line 15
    new-instance p3, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    invoke-direct {p3, p1}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopVerticalOffset(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    add-int/2addr v5, p4

    invoke-virtual {p1, v5}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentHeight(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr v6, p4

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    .line 22
    invoke-virtual {p1, p2, v6, p3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 26
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    .line 29
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 30
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 31
    :cond_8
    :goto_1
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    .line 32
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0295

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_9
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private directHiddenExtraMenu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getBlackOriginHeight()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentHeight(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentRadius(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlpha(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    .line 19
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->changeTopAlertForAccessibility(Z)V

    .line 20
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 21
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    .line 22
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    return-void
.end method

.method private enableAllDisabledMenuItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method private getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getAiArrays()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getAiSceneShadowDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getAiArraysShadow()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getInitialMargin(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getConfigsSize(Ljava/util/List;)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getIndex()I

    move-result v2

    .line 3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v4, 0x800005

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    const/4 v6, 0x2

    const v7, 0x800003

    if-eq v0, v6, :cond_4

    if-nez v2, :cond_2

    .line 5
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_2
    sub-int/2addr v0, v5

    if-ne v2, v0, :cond_3

    .line 8
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 9
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getConfigsSize(Ljava/util/List;)I

    move-result p2

    mul-int/2addr p2, p3

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    mul-int/2addr p1, v2

    mul-int/2addr v2, p3

    add-int/2addr p1, v2

    return p1

    :cond_4
    if-nez v2, :cond_6

    .line 12
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result v7

    :goto_1
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_6
    if-ne v2, v5, :cond_8

    .line 14
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result v4

    :goto_2
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result p1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getConfigsSize(Ljava/util/List;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int/2addr p1, v2

    sub-int/2addr v0, v5

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    .line 17
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    .line 18
    :cond_9
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getGravity()I

    move-result v4

    :goto_4
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method private getMenuViewBackgroundHeight(Landroid/view/View;)I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    const v2, 0x7f0a0295

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const v2, 0x7f0a0293

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    :cond_1
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    const/16 v3, 0xb4

    const/4 v4, 0x0

    if-ne v1, v2, :cond_6

    .line 8
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 9
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 11
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    div-int/lit8 v1, v0, 0x2

    :goto_1
    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 12
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 13
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    :cond_5
    :goto_2
    return v0

    .line 14
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 17
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 19
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v7, v7

    invoke-static {p1, v7}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 20
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v7, :cond_b

    const/16 v4, 0x5a

    if-eq v7, v4, :cond_a

    if-eq v7, v3, :cond_8

    const/16 v4, 0x10e

    if-eq v7, v4, :cond_7

    goto :goto_5

    :cond_7
    sub-int v4, v2, v5

    int-to-float v4, v4

    .line 21
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    add-int v4, v1, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    .line 22
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    .line 23
    :cond_8
    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v4, :cond_9

    int-to-float v4, v1

    .line 24
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_3

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_3
    add-int v4, v0, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 26
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    .line 27
    :cond_a
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v4

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    sub-int v4, v5, v2

    int-to-float v4, v4

    .line 28
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    .line 29
    :cond_b
    iget-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v6, :cond_c

    .line 30
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-static {p1, v6}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_4

    .line 31
    :cond_c
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 32
    :goto_4
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 33
    :goto_5
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p0, :cond_e

    if-ne p0, v3, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v1, v5

    sub-int v0, v1, v2

    :cond_e
    :goto_6
    return v0
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v1, 0x0

    const-string v2, "FragmentTopConfig"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopAlert(): fragment is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopAlert(): fragment is not added yet"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object p0
.end method

.method private initExtraMenu(Z)V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v7

    .line 4
    :goto_0
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopVerticalOffset(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v9, v8, v0

    .line 6
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget-object v3, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 8
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-eqz p1, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AppController;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/fragment/modeui/IModeUI;->getExtraTopConfigItems()Ljava/util/List;

    move-result-object v2

    .line 10
    new-instance v10, Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, v6, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v0, v10

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/ExtraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V

    iput-object v10, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v10, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v1

    .line 12
    iget-object v2, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v2

    .line 13
    iget-object v4, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v4

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0707f7

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v9

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0707f1

    invoke-interface {v12, v13, v14}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/2addr v11, v1

    add-int/2addr v5, v11

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const v15, 0x7f0707fb

    invoke-interface {v12, v13, v15}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v5, v11

    iput v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    .line 17
    iget-object v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v12, v13, v14}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-interface {v13, v14, v15}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 20
    invoke-virtual {v5, v1, v4, v11, v12}, Lcom/android/camera/fragment/top/ExtraAdapter;->setRowHeightLists(IIII)V

    .line 21
    iget-object v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 22
    iget-object v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 23
    iget-object v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 24
    iget-object v5, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0b0007

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 26
    new-instance v11, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 27
    new-instance v12, Lcom/android/camera/fragment/top/FragmentTopConfig$1;

    invoke-direct {v12, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;I)V

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 28
    iget-object v12, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    iget-object v11, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 30
    iget-object v11, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-boolean v12, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v12, :cond_2

    move v12, v7

    goto :goto_1

    :cond_2
    iget v12, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    iget v13, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v8

    :goto_1
    invoke-virtual {v11, v12}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimateHeight(I)V

    .line 31
    iget-object v8, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v9

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0707f1

    invoke-interface {v10, v11, v12}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v15}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    .line 35
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    .line 36
    iget-object v9, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v1, 0x438

    .line 38
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 39
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 40
    :cond_3
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_4

    if-ge v2, v5, :cond_4

    .line 41
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    mul-int/2addr v0, v2

    .line 43
    iget-object v1, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    mul-int/2addr v1, v3

    add-int v8, v0, v1

    .line 45
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 46
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    :cond_4
    add-int/2addr v1, v4

    if-ne v1, v5, :cond_5

    move v7, v0

    :cond_5
    const/4 v0, -0x1

    .line 47
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 48
    :goto_2
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0293

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 49
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0295

    iget v2, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 50
    iget-object v0, v6, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0294

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private initExtraTimerBurstMenu()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0707f1

    invoke-interface {v5, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0707fb

    invoke-interface {v5, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    iget v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 11
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v1

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v9

    .line 14
    iget v2, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v3, 0x7f1209b2

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v3, 0x7f1209b3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    const v4, 0x7f0600e9

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotCount:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    const v4, 0x7f060384

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 20
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0;

    invoke-direct {v3, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    :cond_2
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    sget-object v3, Lcom/android/camera/timerburst/TimerBurstController;->timeInterval:[I

    const-string/jumbo v4, "pref_camera_timer_burst_interval"

    .line 23
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getTimerBurstViewX(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v8

    const-string v7, "S"

    move v4, v9

    .line 25
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initSeekBarConfig([IIFILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V

    .line 26
    div-int/lit8 v12, v1, 0xa

    .line 27
    iget-object v10, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    sget-object v11, Lcom/android/camera/timerburst/TimerBurstController;->shotCount:[I

    const-string/jumbo v2, "pref_camera_timer_burst_total_count"

    .line 28
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getTimerBurstViewX(Ljava/lang/String;)F

    move-result v13

    const/16 v14, 0xa

    .line 29
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v16

    const-string v15, ""

    .line 30
    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initSeekBarConfig([IIFILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V

    .line 31
    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000a

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10000b

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0707c4

    invoke-interface {v3, v4, v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0707c6

    invoke-interface {v3, v4, v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0707c5

    invoke-interface {v3, v4, v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0707c7

    invoke-interface {v3, v4, v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0293

    iget v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 38
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0295

    iget v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 39
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0294

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateTextViewTitle()V

    return-void
.end method

.method private initReferenceLineMenu(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceLineTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600e9

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060384

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0o;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getSubTopConfigItems()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 13
    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 14
    new-instance v7, Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v0, v7

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/ExtraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V

    iput-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;I)V

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070739

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070734

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    .line 26
    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0707f1

    invoke-interface {v4, v5, v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    .line 27
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0707fb

    invoke-interface {v3, v4, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0707f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0293

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0295

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 34
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0294

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private initSnapNumAnimator()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private initTopView()V
    .locals 5

    const/16 v0, 0xd

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget v3, v1, v2

    .line 4
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    .line 5
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigTint(Landroid/view/View;)V

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0a041b
        0x7f0a041c
        0x7f0a041d
        0x7f0a041e
        0x7f0a041f
        0x7f0a0420
        0x7f0a0421
        0x7f0a0422
        0x7f0a0423
        0x7f0a0424
        0x7f0a0425
        0x7f0a0426
        0x7f0a0427
    .end array-data
.end method

.method private notifyExtraMenuVisibilityChange(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->impl2()Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->onExtraMenuVisibilityChange(Z)V

    :cond_0
    return-void
.end method

.method private onClickByExtraMenu(Landroid/view/View;Lcom/android/camera/protocol/protocols/ConfigChanges;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    const-string v2, "FragmentTopConfig"

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extra menu click exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    check-cast v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v5, "pref_speech_shutter"

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0xd1

    const/16 v6, 0x106

    const/4 v7, -0x1

    if-eq v0, v5, :cond_5

    const/16 v5, 0xed

    if-eq v0, v5, :cond_4

    const/16 v5, 0xfb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xff

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    move v5, v4

    move v9, v5

    move v8, v7

    goto :goto_1

    :cond_1
    const v5, 0x7f12094b

    move v9, v3

    move v8, v5

    move v5, v1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v8

    .line 9
    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, v9}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v5

    move v9, v3

    goto :goto_1

    :cond_3
    const v5, 0x7f12059d

    .line 10
    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v8

    goto :goto_0

    :cond_4
    const v5, 0x7f12077f

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v8, v9}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v8

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getDisplayTitleString()I

    move-result v5

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v8

    :goto_0
    move v9, v3

    move v11, v8

    move v8, v5

    move v5, v11

    .line 14
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eq v0, v6, :cond_6

    if-eqz v1, :cond_8

    if-eqz v9, :cond_8

    :cond_6
    if-eq v8, v7, :cond_9

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AppController;

    .line 16
    invoke-interface {v1}, Lcom/android/camera/AppController;->getTTSHelper()Lcom/android/camera/tts/TTSHelper;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    const v5, 0x7f120041

    goto :goto_2

    :cond_7
    const v5, 0x7f12008f

    .line 17
    :goto_2
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v1, v5}, Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_8
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOOo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOOo;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    :cond_9
    :goto_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v5, "top config onClickByExtraMenu, ConfigItem=0x%x"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0376

    const/16 v2, 0xaa

    if-eq v0, v2, :cond_b

    const/16 v2, 0xdb

    if-eq v0, v2, :cond_a

    goto :goto_4

    .line 21
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v1, :cond_c

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showExtraReferenceLineMenu(Landroid/view/View;)V

    .line 23
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo p1, "pref_camera_referenceline_key"

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 24
    invoke-interface {p2, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    return-void

    .line 25
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 26
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showExtraTimerBurstMenu()V

    .line 27
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    .line 28
    invoke-interface {p2, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    return-void

    .line 29
    :cond_c
    :goto_4
    invoke-interface {p2, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p1, :cond_d

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    :cond_d
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p0, :cond_e

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_e
    return-void
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private reConfigTipOfAiEnhancedVideo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->isSwitchOn(I)Z

    move-result v0

    const v1, 0x7f1207e3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiEnhancedVideoHint(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiEnhancedVideoHint(II)V

    :goto_0
    return-void
.end method

.method private reConfigTipOfFlash(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->flashOldValue:Ljava/lang/String;

    const-string v2, "1"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    const-string v3, "101"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "2"

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {p0, v4, v3, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_2

    :cond_3
    const-string v3, "5"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "104"

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isFlashShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->isFlashActivated(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0, v0, v2, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_2

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p0, v4, v3, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_2

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p0, v4, v2, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method private reConfigTipOfMusicHint(Z)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    const/16 p1, 0x8

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopMusicHint(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 6
    aget-object p1, p1, v0

    invoke-direct {p0, v1, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopMusicHint(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private reConfigTipOfSubtitle()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result v0

    const v1, 0x7f1208c3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSubtitleHint(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSubtitleHint(II)V

    :goto_0
    return-void
.end method

.method private reInitAlertAction(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfMusicHint(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(IILjava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateLyingDirectHint(ZZ)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->impl()Ljava/util/Optional;

    move-result-object p1

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo00o;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showTips(Lcom/android/camera/protocol/protocols/ConfigChanges;Z)V

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoUltraClearTip()V

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideo4KHDR10P()V

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckSuperNightVideo4KTip()V

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoHDR10Tip()V

    .line 14
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    .line 15
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoLog()V

    .line 17
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckRaw()V

    .line 18
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckFastMotion(Z)V

    .line 19
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->recheckVideoFps(Z)V

    .line 20
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckDocumentMode()V

    .line 21
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckDualVideoMode()V

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckHanGestureDescTip()V

    .line 23
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudioSingleDescTip()V

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudioNewDescTip()V

    .line 25
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckSpeechShutterDescTip()V

    .line 26
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAmbilight()V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetTipsWidth()V

    :cond_1
    return-void
.end method

.method private rotateExtraMenu()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->setDegree(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_3

    .line 9
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->setDegree(I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    const p0, 0x7f0a0294

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getScaleValue()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getScaleValue()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 16
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    .line 18
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 19
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_1
    return v3

    :cond_5
    return v1
.end method

.method private setShadowBackgroundResource(Landroid/widget/ImageView;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setTopImageResource(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;IZZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v1, 0xaf

    const/4 v2, 0x1

    const/16 v3, 0xc1

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_1

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_4

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfSubtitle()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    .line 4
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result p4

    xor-int/2addr p4, v2

    invoke-virtual {p1, p4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->setEnable(Z)V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfAiEnhancedVideo()V

    .line 7
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;->updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p4

    goto :goto_1

    :cond_5
    move-object p4, v0

    :goto_1
    if-eqz p4, :cond_1c

    .line 9
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v1

    if-lez v1, :cond_1c

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewImageResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;I)I

    move-result v1

    .line 12
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    if-lez v1, :cond_7

    .line 13
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v7, 0x800003

    or-int/2addr v6, v7

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    iget-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v6, :cond_6

    .line 15
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 16
    :cond_6
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 18
    :goto_2
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getTopSelectedAnimID()I

    move-result v1

    const/16 v4, 0xc2

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    if-eq v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    if-eq v1, v4, :cond_9

    if-eqz p5, :cond_8

    .line 21
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {p5, p2, p1, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V

    goto/16 :goto_3

    .line 22
    :cond_8
    move-object p5, p2

    check-cast p5, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p5

    if-nez p5, :cond_f

    .line 23
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p5

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/android/camera/customization/ThemeResource;->getShadowBackgroundResource(I)I

    move-result p5

    invoke-direct {p0, p2, p5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setShadowBackgroundResource(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p5

    check-cast p5, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 26
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    .line 27
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p5

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    if-ne v6, v3, :cond_a

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isShowFlashAnim()Z

    move-result v6

    if-nez v6, :cond_b

    .line 29
    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    if-ne v6, v4, :cond_e

    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isShowHdrAnim()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 30
    :cond_b
    invoke-virtual {p2}, Landroid/widget/ImageView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 31
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_d

    .line 32
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->isExpendViewVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 33
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;

    invoke-direct {v0, p0, p2, v1, p5}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V

    const-wide/16 v6, 0x64

    invoke-virtual {p2, v0, v6, v7}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 34
    :cond_c
    invoke-virtual {p0, p2, v1, p5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showHdrOrFlashAnim(Landroid/view/View;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V

    goto :goto_3

    .line 35
    :cond_d
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setEnableFlashAnim(Z)V

    .line 36
    invoke-virtual {p5, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setEnableHdrAnim(Z)V

    goto :goto_3

    .line 37
    :cond_e
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p5

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getNewBackgroundResourceId()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/android/camera/customization/ThemeResource;->getShadowBackgroundResource(I)I

    move-result p5

    invoke-direct {p0, p2, p5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setShadowBackgroundResource(Landroid/widget/ImageView;I)V

    .line 39
    :cond_f
    :goto_3
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isColoring()Z

    move-result p5

    if-nez p5, :cond_11

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated()Z

    move-result p5

    if-nez p5, :cond_10

    goto :goto_4

    .line 40
    :cond_10
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_6

    .line 41
    :cond_11
    :goto_4
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated()Z

    move-result p5

    if-eqz p5, :cond_12

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopTintColor()I

    move-result p5

    goto :goto_5

    :cond_12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigColor()I

    move-result p5

    :goto_5
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 42
    :goto_6
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p5

    if-ne p5, v3, :cond_15

    .line 43
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result p3

    const p5, 0x3ecccccd    # 0.4f

    if-eqz p3, :cond_13

    .line 44
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 45
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iput-boolean v5, p3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mFlashEnabled:Z

    goto :goto_7

    .line 46
    :cond_13
    invoke-virtual {p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result p3

    cmpl-float p3, p3, p5

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iget-boolean p3, p3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mFlashEnabled:Z

    if-nez p3, :cond_15

    :cond_14
    const/high16 p3, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 48
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iput-boolean v2, p3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mFlashEnabled:Z

    .line 49
    :cond_15
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result p3

    const/high16 p5, 0x42b40000    # 90.0f

    if-eqz p3, :cond_18

    .line 50
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p1

    const/16 p3, 0xd9

    if-ne p1, p3, :cond_16

    .line 51
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_9

    .line 52
    :cond_16
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 p3, 0xb4

    if-ge p1, p3, :cond_17

    goto :goto_8

    :cond_17
    const/high16 p5, 0x43870000    # 270.0f

    :goto_8
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_9

    .line 53
    :cond_18
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result p3

    if-nez p3, :cond_19

    .line 54
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_9

    .line 55
    :cond_19
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p1

    const/16 p3, 0xa9

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_9

    .line 57
    :cond_1a
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 58
    :goto_9
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getmContentDescriptionStringId()I

    move-result p1

    if-lez p1, :cond_1b

    .line 59
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getmContentDescriptionStringId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 60
    :cond_1b
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getContentDescriptString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 61
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getContentDescriptString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 62
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    :goto_a
    return-void
.end method

.method private setTopTipMarin(Landroid/view/View;Z)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getTopHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const v3, 0x3fa9db23    # 1.327f

    mul-float/2addr v2, v3

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v3, v2, v1

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-long v4, v0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3f8e4f765fd8adacL    # 0.0148

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_0
    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_1

    .line 6
    :cond_0
    iget v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-nez v4, :cond_1

    int-to-long v4, v0

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fad63886594af4fL    # 0.0574

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_0

    :cond_1
    int-to-long v4, v0

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fb6c226809d4952L    # 0.0889

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_0

    :goto_1
    sub-int/2addr v0, v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDelayNumber: topMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", topHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getTopHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fontHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewHeight = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentTopConfig"

    .line 11
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0700eb

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    add-int/2addr v0, p2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-lez p0, :cond_3

    int-to-float p0, p0

    .line 15
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_3
    return-void
.end method

.method private showExtraReferenceLineMenu(Landroid/view/View;)V
    .locals 2

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v1, "showExtraReferenceLineMenu"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initReferenceLineMenu(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenu()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->changeTopAlertForAccessibility(Z)V

    return-void
.end method

.method private showExtraTimerBurstMenu()V
    .locals 2

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v1, "showExtraTimerBurstMenu"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initExtraTimerBurstMenu()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenu()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->changeTopAlertForAccessibility(Z)V

    return-void
.end method

.method private showTips(Lcom/android/camera/protocol/protocols/ConfigChanges;Z)V
    .locals 4

    const-string/jumbo p2, "ultra_pixel"

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckModuleUltraPixel()V

    const-string/jumbo p2, "video_beautify"

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoBeautify()V

    :cond_1
    const-string p2, "ai_watermark"

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 11
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAIWatermark(Z)V

    :cond_2
    const-string p2, "hdr"

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 14
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoHdr()V

    :cond_3
    const-string/jumbo p2, "super_eis"

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 17
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckSuperEIS()V

    :cond_4
    const-string/jumbo p2, "super_eis_pro"

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 20
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckSuperEISPro()V

    :cond_5
    const-string p2, "cvtype"

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 23
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckCvType()V

    :cond_6
    const-string p2, "live_shot"

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 26
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckLiveShot()V

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_8

    .line 28
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckColorEnhance()V

    :cond_8
    const-string/jumbo p2, "ultra_wide_bokeh"

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 31
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckUltraWideBokeh()V

    :cond_9
    const-string p2, "ai_audio"

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 34
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    :cond_a
    const-string p2, "live_duration"

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 37
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    .line 38
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p2

    .line 39
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa2

    if-eq v0, v3, :cond_c

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_d

    :cond_c
    if-eqz p2, :cond_d

    .line 40
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_0

    :cond_d
    move v2, v1

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_e

    if-nez v2, :cond_e

    const-string p2, "macro"

    .line 42
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 43
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMacroMode()V

    .line 44
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_f

    const-string/jumbo p2, "timer_burst"

    .line 45
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    .line 46
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckTimerBurst()V

    .line 47
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_10

    .line 48
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckFrontBokenTip()V

    .line 49
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_11

    .line 50
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckHandGesture()V

    .line 51
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_12

    .line 52
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckSubtitleMode()V

    .line 53
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_13

    .line 54
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    .line 55
    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_14

    .line 56
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudioSingle()V

    .line 57
    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object p2

    .line 58
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 59
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 60
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckVideoCastPauseState()V

    .line 61
    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_16

    .line 62
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 63
    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    .line 64
    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_17

    .line 65
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiEnhancedVideo()V

    .line 66
    :cond_17
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->impl2()Lcom/android/camera/protocol/protocols/CameraModuleSpecial;

    move-result-object p2

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p2, :cond_18

    .line 68
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->isStartCountCapture()Z

    move-result p2

    if-nez p2, :cond_19

    .line 69
    :cond_18
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckTilt()V

    .line 70
    :cond_19
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProPhotoHistogramOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    if-eqz p2, :cond_1b

    .line 72
    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHistogram(I)V

    .line 73
    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 74
    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioMap(I)V

    .line 75
    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVolumeControlPanel()Lcom/android/camera/VolumeControlPanel;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getGainValueReset()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/VolumeControlPanel;->gainValueResetHorizontal(F)V

    .line 76
    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapVisibility(I)V

    .line 77
    :cond_1c
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 78
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_1d
    return-void
.end method

.method private switchExtraReferenceLineMenu()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->scaleExtraSubMenu(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private switchExtraReferenceLineMenuAndNotify()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenu()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private switchExtraTimerBurstMenu()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v4, "goto_timer_burst_menu"

    .line 2
    invoke-static {v4, v0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->scaleExtraSubMenu(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private switchExtraTimerBurstMenuAndNotify()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenu()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateTextViewTitle()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600e9

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0707c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v4, 0x7f1209b1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr p0, v2

    mul-float/2addr v1, v3

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 10
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoo;

    invoke-direct {p0, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p0, 0x0

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public synthetic OooO00o(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/widget/ImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showHdrOrFlashAnim(Landroid/view/View;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlertAction(Z)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Landroid/widget/ImageView;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Landroid/widget/ImageView;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0oO(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alert960FpsDirectOverheatHint(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v1

    const/16 v2, 0xac

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS960Direct(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const v1, 0x7f12059b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public alertAiAudio(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudio(IIZ)V

    return-void
.end method

.method public alertAiAudioBGHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method public alertAiAudioMutexToastIfNeed(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioMutexToastIfNeed(I)V

    return-void
.end method

.method public alertAiAudioNewDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioSingleBGHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioSingleBGHint(II)V

    return-void
.end method

.method public alertAiAudioSingleDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiDetectTipHint(IIJ)V
    .locals 0

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertAiDetectTipHint(ILjava/lang/String;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertAiEnhancedVideoHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiEnhancedVideoHint(II)V

    return-void
.end method

.method public alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    if-nez p2, :cond_3

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_1

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_3

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    .line 6
    :cond_2
    iput-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    .line 9
    :cond_4
    iput-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    :goto_0
    return-void
.end method

.method public alertCastVideoHint(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    :cond_0
    return-void
.end method

.method public alertDocumentTip(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertDocumentTip(I)V

    return-void
.end method

.method public alertDualVideoHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertDualVideoHint(IIZ)V

    return-void
.end method

.method public alertESPFeatureTip(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertESPFeatureTip(Z)V

    return-void
.end method

.method public alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public alertFastmotionProValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionProTip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public alertFastmotionValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionTip(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;ZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const/16 p3, 0xc1

    .line 4
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(ILjava/lang/String;)V

    return-void
.end method

.method public alertFocusViewDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFocusViewDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    return-void
.end method

.method public alertHandGestureHint(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHandGestureHint(I)V

    return-void
.end method

.method public alertLightingTip(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertLightingTip(I)V

    return-void
.end method

.method public alertLiveShotHint(II)V
    .locals 1

    const-string v0, "live_shot"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;II)V

    return-void
.end method

.method public alertMacroModeHint(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xff

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopConfig(I)Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMacroModeHint(IIZ)V

    return-void
.end method

.method public alertMimojiFaceDetect(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMimojiFaceDetect(ZI)V

    return-void
.end method

.method public alertMotionDetectionTip(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120598

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMotionDetectionHint(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public alertMusicClose(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicClose(Z)V

    :cond_0
    return-void
.end method

.method public alertParameterDescriptionTip(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertParameterDescriptionTip(IIZ)V

    return-void
.end method

.method public alertParameterResetTip(ZII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070740

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int v4, v2, p0

    xor-int/lit8 v5, v1, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertParameterResetTip(ZIIIZ)V

    return-void
.end method

.method public alertProColourHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertProColourHint(II)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 6

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public alertRecommendTipHint(ILjava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertSlideSwitchLayout(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSlideSwitchLayout(ZI)V

    return-void
.end method

.method public alertSlowMotionDisableRecordTip(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThermalDetector;->getCameraHalThermalResult()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x2e

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f12059c

    .line 4
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    :cond_0
    if-eqz v0, :cond_1

    const/16 v3, 0x14

    .line 5
    invoke-static {v3}, Lcom/android/camera/Util;->isLowPower(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f12059a

    .line 7
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public alertSubtitleHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSubtitleHint(II)V

    return-void
.end method

.method public alertSuperNightSeTip(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSuperNightOwlDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isZhCn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120968

    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    goto :goto_1

    .line 6
    :cond_1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1205e8

    goto :goto_0

    :cond_2
    const v0, 0x7f12096a

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    :goto_1
    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;IIIJ)V
    .locals 7

    .line 4
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const-wide/16 v5, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertTimerBurstHint(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xaa

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopConfig(I)Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTimerBurstHint(IIZ)V

    return-void
.end method

.method public alertTopHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(II)V

    return-void
.end method

.method public alertTopHint(IIJ)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(IIJ)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(ILjava/lang/String;)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;J)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertUpdateValue(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(IILjava/lang/String;)V

    return-void
.end method

.method public alertVideoOverheatHint(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120a13

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public alertVideoUltraClear(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(IIZ)V

    return-void
.end method

.method public alertVideoUltraClear(ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    .line 6
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(ILjava/lang/String;Z)V

    return-void
.end method

.method public animTopBlackCover()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public clearAlertStatus()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearAlertStatus()V

    return-void
.end method

.method public clearAllTipsState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearFastmotionValue()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearFastmotionTip()V

    return-void
.end method

.method public clearVideoUltraClear()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearVideoUltraClear()V

    return-void
.end method

.method public containShortDurationDescriptionTips(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->containShortDurationDescriptionTips(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public directHideLyingDirectHint()V
    .locals 0

    return-void
.end method

.method public varargs disableMenuItem(Z[I)V
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 3
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enableFlashAnim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "0"

    if-eq p1, p0, :cond_0

    if-ne p2, p0, :cond_1

    :cond_0
    if-eq p1, p2, :cond_1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->enableFlashAnim(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs enableMenuItem(Z[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    .line 3
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public enableSwitch()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public endTopExpendAnim()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->endTopExpendAnim()V

    :cond_0
    return-void
.end method

.method public expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;)V

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->setAnchorViewX(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result p1

    const/16 v1, 0x5a

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v3, 0xb4

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x10e

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    goto :goto_2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->setAdapter(Lcom/android/camera/fragment/top/TopExpandAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOooO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOooO;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iput-object v0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mReverseLeft:I

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->hideOtherViews(ILjava/util/List;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iput-object p2, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mAnchorView:Landroid/view/View;

    .line 17
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    iput p0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->spacesItemWidth:I

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->showExpendView()V

    return-void
.end method

.method public getAlertIsShow()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p0

    return p0
.end method

.method public getConfigsSize(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getCurrentAiSceneLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf4

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00bf

    return p0
.end method

.method public getTipsState(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTag()Lcom/android/camera/ui/VideoTagView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVideoTag()Lcom/android/camera/ui/VideoTagView;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTagContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVideoTagContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAlert()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear(Z)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideConfigMenu(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public hideDelayNumber()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->hideDelayNumber()V

    :cond_1
    return-void
.end method

.method public hideExtraMenu()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public hideRecommendDescTip(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    return-void
.end method

.method public hideSwitchTip()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideSwitchTip()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    .line 2
    new-instance v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    const v0, 0x7f0a047d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    const v0, 0x7f0a0476

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    const v0, 0x7f0a0428

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a041a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a00fc

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a042a

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a042b

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v0, 0x7f0a021c

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a021d

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a037a

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceLineTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0379

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    .line 16
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0464

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v0, 0x7f0a0463

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotCount:Landroid/widget/TextView;

    const v0, 0x7f0a010d

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    const v0, 0x7f0a010c

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    const v0, 0x7f0a0254

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    const v0, 0x7f0a0255

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    const v0, 0x7f0a0419

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopAlertLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0429

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/top/TopExpendView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    .line 28
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initTopView()V

    .line 29
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    return-void
.end method

.method public isContainAlertLightingTip(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->parseLightingRes(I)I

    move-result p1

    aput p1, p0, v1

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isContainAlertRecommendTip([I)Z

    move-result p0

    return p0
.end method

.method public varargs isContainAlertRecommendTip([I)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isContainAlertRecommendTip([I)Z

    move-result p0

    return p0
.end method

.method public isCurrentRecommendTipText(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isCurrentRecommendTipText(I)Z

    move-result p0

    return p0
.end method

.method public isExtraMenuShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    return p0
.end method

.method public isHDRShowing()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isHDRShowing()Z

    move-result p0

    return p0
.end method

.method public isShowBacklightSelector()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShowBacklightSelector()Z

    move-result p0

    return p0
.end method

.method public isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTopConfig(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isTopExpendAnimRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->isTopExpendAnimRuning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomTipShowing()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isZoomTipShowing()Z

    move-result p0

    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->notifyAfterFrameAvailable(I)V

    .line 5
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v3, 0xd1

    if-eq p1, v3, :cond_2

    const/16 v3, 0xd2

    if-eq p1, v3, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xb8

    if-ne p1, v3, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->clearVideoUltraClear()V

    .line 9
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    .line 10
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfMusicHint(Z)V

    .line 11
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(IILjava/lang/String;)V

    .line 12
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xcc

    if-eq p1, v3, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animTopBlackCover()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-nez p1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    :cond_7
    :goto_0
    return-void

    .line 22
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    .line 23
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v1, :cond_9

    if-eqz p1, :cond_9

    .line 24
    invoke-direct {p0, p1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showTips(Lcom/android/camera/protocol/protocols/ConfigChanges;Z)V

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/android/camera/protocol/protocols/DollyZoomProcess;->impl2()Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v1

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v4

    if-nez v4, :cond_d

    .line 30
    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v4, :cond_a

    if-eqz p1, :cond_a

    .line 31
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStateRecording()Z

    move-result p1

    if-nez p1, :cond_d

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    .line 33
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DollyZoomProcess;->isPreviewResult()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_b
    if-eqz v1, :cond_c

    .line 34
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    .line 35
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 36
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->checkFeatureState()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a0419

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-eqz p2, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    .line 5
    invoke-direct/range {v3 .. v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 7
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverBackground(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;II)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpendView;->updateTheme()V

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->notifyThemeChanged(ILjava/util/List;I)V

    :cond_4
    const/16 p0, 0xa2

    if-ne p1, p0, :cond_5

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result p0

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v0

    invoke-virtual {p3, p1, p0, p2, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    :cond_5
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/16 v3, 0xbc

    if-ne v0, v3, :cond_0

    if-ne p1, v1, :cond_0

    const v0, 0x7f120961

    const-wide/16 v3, -0x1

    .line 2
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 4
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xb4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const-string/jumbo v4, "pref_audio_map_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAudioMapVisibilityState()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeHandlerCallBack()V

    .line 7
    invoke-virtual {v0, v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapVisibility(I)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setVolumeControlAnimationViewVisibility(I)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setVolumeControlPanelVisibility(I)V

    :cond_1
    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    .line 10
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showRecordingTime()V

    return v5

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v5

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_13

    .line 15
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_13

    :cond_8
    const/4 v4, 0x7

    const/4 v7, -0x1

    if-eq p1, v5, :cond_c

    const/4 v8, 0x2

    if-eq p1, v8, :cond_a

    if-eq p1, v3, :cond_9

    const/4 v8, 0x6

    if-eq p1, v8, :cond_9

    if-eq p1, v4, :cond_10

    .line 16
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    :goto_3
    move v0, v6

    goto :goto_4

    .line 17
    :cond_9
    invoke-direct {p0, v7, v5, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_3

    .line 18
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_b

    return v6

    .line 19
    :cond_b
    invoke-direct {p0, v7, v5, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_3

    .line 20
    :cond_c
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_d

    return v6

    .line 21
    :cond_d
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    if-eqz v0, :cond_e

    .line 22
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenuAndNotify()V

    return v5

    .line 23
    :cond_e
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-eqz v0, :cond_f

    .line 24
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenuAndNotify()V

    return v5

    .line 25
    :cond_f
    invoke-direct {p0, v7, v5, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_3

    :cond_10
    :goto_4
    if-eq p1, v3, :cond_11

    if-eq p1, v4, :cond_11

    .line 26
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlert(Z)V

    .line 27
    :cond_11
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    .line 28
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4, v6, v6, v6}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBackEvent ShowExtraMenuTemp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FragmentTopConfig"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_12

    if-eq p1, v1, :cond_12

    .line 31
    invoke-direct {p0, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->changeTopAlertForAccessibility(Z)V

    .line 32
    invoke-direct {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->notifyExtraMenuVisibilityChange(Z)V

    .line 33
    iput-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    .line 34
    iput-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_12
    return v5

    :cond_13
    return v6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v1, "top config onclick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0210

    if-eq v1, v2, :cond_d

    const v2, 0x7f0a0379

    if-eq v1, v2, :cond_c

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl2()Lcom/android/camera/protocol/protocols/MoreModePopupController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->shrink(Z)Z

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ModeChangeController;->modeChanging()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p0, "onClick: mode changing"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 12
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 14
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-eqz v3, :cond_6

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onClickByExtraMenu(Landroid/view/View;Lcom/android/camera/protocol/protocols/ConfigChanges;)V

    return-void

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 17
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    return-void

    .line 19
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "top config item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    instance-of v3, v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-nez v3, :cond_8

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main menu click exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_8
    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 24
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "top config onclick, ConfigItem=0x%x"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_9

    .line 26
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v6

    const-string/jumbo v1, "top config onclick is disabled, ConfigItem=0x%x"

    invoke-static {p0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_a

    .line 29
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xe1

    if-eq v0, v2, :cond_a

    .line 30
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_a

    .line 31
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xb3

    if-eq v0, v2, :cond_a

    .line 32
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo00;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo00;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_a
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 34
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo p1, "onClick reference line back"

    .line 35
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenuAndNotify()V

    return-void

    :cond_d
    const-string/jumbo p1, "onClick timer burst back"

    .line 37
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenuAndNotify()V

    return-void
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showRecordingTime()V

    :cond_2
    const/4 v2, 0x1

    if-ne p2, p3, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v3

    const-string v4, "FragmentTopConfig"

    const/16 v5, 0xc1

    const/16 v6, 0xc2

    const-string v7, "0"

    const-wide/16 v8, 0x190

    const/4 v10, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    .line 10
    :sswitch_0
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    new-array p1, v2, [I

    const/16 p2, 0xc6

    aput p2, p1, v10

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->impl2()Lcom/android/camera/protocol/protocols/LiveSpeedChanges;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    int-to-long v3, p3

    invoke-interface {p1, v3, v4}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->setMaxDuration(J)V

    .line 14
    :cond_5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckLiveDurationTip()V

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 17
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 18
    :sswitch_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackHdrChanged(ILjava/lang/String;)V

    new-array p1, v2, [I

    aput v6, p1, v10

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    const-string p1, "e"

    .line 20
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreMutexFlash(Ljava/lang/String;)V

    .line 21
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isNeenExpand()Z

    move-result p1

    if-nez p1, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->enableFlashAnim(Ljava/lang/String;)V

    :cond_6
    new-array p1, v2, [I

    aput v5, p1, v10

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 25
    :cond_7
    invoke-interface {v1, p3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configHdr(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 28
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOo;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOo;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const-string p1, "hdr change"

    .line 29
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 30
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    const v3, 0x7f12070b

    if-ne p1, v3, :cond_b

    const-string p1, "5"

    if-eq p2, p1, :cond_9

    if-ne p3, p1, :cond_a

    :cond_9
    if-eq p3, v7, :cond_a

    const-string p1, "200"

    if-eq p3, p1, :cond_a

    .line 31
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configBackSoftLightSwitch(Ljava/lang/String;)V

    .line 32
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, v7}, Lcom/android/camera/statistic/CameraStatUtils;->trackFlashChanged(ILjava/lang/String;)V

    .line 33
    :cond_a
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 34
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p1

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v3, v10, v10, v10}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 35
    :cond_b
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackFlashChanged(ILjava/lang/String;)V

    new-array p1, v2, [I

    aput v5, p1, v10

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v3, p2, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHDRIfFlashChanged(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 39
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget v11, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v11}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_10

    .line 40
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isNeenExpand()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 41
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "3"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    const-string p1, "1"

    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "2"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 43
    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    const-string/jumbo v0, "off"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->enableHdrAnim(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_e
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->enableHdrAnim(Ljava/lang/String;)V

    :cond_f
    :goto_1
    new-array p1, v2, [I

    aput v6, p1, v10

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_10
    const-string p1, "flash change"

    .line 46
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {v1, p3, p2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configFlash(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 50
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoO;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoO;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 51
    :sswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->setComponentPreValue(Ljava/lang/String;)V

    new-array p1, v2, [I

    const/16 p2, 0xa5

    aput p2, p1, v10

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 54
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 57
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo000;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo000;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 58
    :sswitch_4
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "auto_exposure"

    invoke-static {p1, p2, p3}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-array p1, v2, [I

    const/16 p2, 0xd6

    aput p2, p1, v10

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 60
    invoke-interface {v1, p3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configMeter(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 63
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo00O;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo00O;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :sswitch_5
    new-array p1, v2, [I

    const/16 p2, 0xa8

    aput p2, p1, v10

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 65
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 66
    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIAudio(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 69
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoOO;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoOO;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 70
    :sswitch_6
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string/jumbo p2, "vivid"

    goto :goto_2

    :cond_11
    const-string p2, "classic"

    :goto_2
    const-string p3, "attr_color_type"

    .line 72
    invoke-static {p1, p3, p2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-array p1, v2, [I

    const/16 p2, 0xbe

    aput p2, p1, v10

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 74
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 77
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOo0;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOOo0;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_12
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120344 -> :sswitch_6
        0x7f120667 -> :sswitch_5
        0x7f120681 -> :sswitch_4
        0x7f1206b8 -> :sswitch_3
        0x7f12070b -> :sswitch_2
        0x7f120721 -> :sswitch_1
        0x7f120841 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFlashClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_2
    const/4 v1, 0x0

    const-string v2, "attr_feature_name"

    const-string v3, "flash_out_button"

    .line 7
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->disableUpdate()Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isNeenExpand()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    if-ne p1, v1, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 12
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->enableFlashAnim(Ljava/lang/String;)V

    .line 13
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xc1

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDisableReasonString()I

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0x50

    invoke-static {p0, p1, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    :cond_6
    const-string p0, "FragmentTopConfig"

    const-string p1, "ignore click flash for disable update"

    .line 18
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public onHdrClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    const/4 v1, 0x0

    const-string v2, "attr_feature_name"

    const-string v3, "hdr_out_button"

    .line 5
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isNeenExpand()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "off"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 10
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->enableHdrAnim(Ljava/lang/String;)V

    .line 11
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xc2

    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    return-void
.end method

.method public onTopAnimClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 3
    instance-of v0, v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra menu click exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentTopConfig"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd4

    if-eq v0, v2, :cond_1

    const/16 v2, 0xfb

    if-eq v0, v2, :cond_2

    const/16 v2, 0xff

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa2

    if-ne v0, v2, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, v1, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, v1, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopExpendAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->endTopExpendAnim()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v5

    if-nez v5, :cond_2

    if-ne p3, v1, :cond_3

    .line 6
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    .line 7
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setSnapNumVisible(ZZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideDelayNumber()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->isExpendViewVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    const/16 v5, 0xa1

    if-eq v0, v5, :cond_9

    const/16 v5, 0xa2

    if-eq v0, v5, :cond_8

    const/16 v5, 0xa9

    if-eq v0, v5, :cond_7

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_6

    const/16 v5, 0xb7

    if-eq v0, v5, :cond_5

    goto :goto_3

    :cond_5
    if-ne p1, v5, :cond_b

    goto :goto_2

    :cond_6
    if-ne p1, v5, :cond_b

    goto :goto_2

    :cond_7
    if-ne p1, v5, :cond_b

    goto :goto_2

    :cond_8
    if-ne p1, v5, :cond_b

    if-eqz v1, :cond_a

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v5, "provideAnimateElement: skipAnimOut"

    .line 10
    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    if-ne p1, v5, :cond_b

    :cond_a
    :goto_2
    move v0, v3

    goto :goto_4

    :cond_b
    :goto_3
    move v0, v2

    :goto_4
    if-nez v0, :cond_c

    const/16 v0, 0x8

    if-ne p3, v0, :cond_e

    :cond_c
    const/4 v0, 0x7

    if-ne p3, v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x4

    .line 11
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    .line 12
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 13
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverBackground(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;II)V

    .line 14
    iget-boolean v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    if-nez v5, :cond_10

    if-eqz p2, :cond_f

    goto :goto_6

    :cond_f
    move v5, v3

    goto :goto_7

    :cond_10
    :goto_6
    move v5, v2

    .line 15
    :goto_7
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    if-eqz p2, :cond_11

    move v6, v2

    goto :goto_8

    :cond_11
    move v6, v3

    .line 16
    :goto_8
    invoke-direct {p0, v0, p2, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V

    if-eqz v4, :cond_12

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->enableAllDisabledMenuItem()V

    .line 18
    :cond_12
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;I)V

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v4, :cond_14

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 22
    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    .line 23
    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v4, :cond_16

    if-eqz v0, :cond_16

    .line 24
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStateRecording()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v0, -0x1

    .line 25
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 26
    :cond_16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x5

    if-ne p3, v0, :cond_17

    .line 27
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->flashOldValue:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->enableFlashAnim(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_17
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/AppController;

    invoke-interface {p3}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/fragment/modeui/IModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object p3

    .line 29
    invoke-static {p3}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    move p3, v3

    .line 30
    :goto_9
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_22

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 33
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 34
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 35
    invoke-virtual {v10}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v4

    const/16 v5, 0xb0

    if-ne v4, v5, :cond_18

    move v4, v3

    goto :goto_b

    :cond_18
    if-eqz p2, :cond_19

    move v8, v2

    goto :goto_a

    :cond_19
    move v8, v3

    :goto_a
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move-object v6, v0

    move v7, p1

    .line 36
    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;IZZ)V

    move v4, v2

    :goto_b
    if-eqz v11, :cond_1a

    .line 37
    invoke-virtual {v11}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v5

    invoke-virtual {v10}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    if-ne v5, v6, :cond_1a

    .line 38
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 39
    :cond_1a
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v4, :cond_1b

    .line 40
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1b

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    .line 41
    invoke-virtual {v10}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_d

    .line 42
    :cond_1b
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configDetectionRectState()V

    if-nez p2, :cond_1d

    if-eqz v4, :cond_1c

    .line 43
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_d

    .line 44
    :cond_1c
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_d

    :cond_1d
    const/16 v5, 0x96

    if-eqz v4, :cond_20

    .line 45
    new-instance v4, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v4, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 46
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa7

    if-ne v0, v6, :cond_1f

    const/16 v0, 0xc1

    .line 47
    invoke-virtual {v10}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    if-ne v0, v6, :cond_1f

    .line 48
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_c

    :cond_1e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    :goto_c
    invoke-virtual {v4, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setTargetAlpha(F)V

    .line 50
    :cond_1f
    invoke-virtual {v4, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 52
    invoke-static {v4}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    if-eqz v1, :cond_21

    .line 53
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_d

    .line 54
    :cond_21
    new-instance v4, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v4, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    .line 55
    invoke-virtual {v4, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_9

    :cond_22
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
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->rotateExtraMenu()Z

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoO0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoO0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOooo;

    invoke-direct {v1, p2, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOooo;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideRotateItem(Ljava/util/List;I)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/TopExpendView;->provideRotateItem(Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public reInitAlert(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getHandGestureRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlertAction(Z)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoo0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOoo0;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Z)V

    .line 6
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-eqz p0, :cond_2

    const-wide/16 p0, 0x78

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x0

    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v0, v1, p0, p1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshHistogramStatsView()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->refreshHistogramStatsView()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public removeExtraMenu(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public resetTipsWidth()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkTipsWidth()V

    return-void
.end method

.method public reverseExpandTopBar(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->reverse(Z)Z

    move-result p0

    return p0
.end method

.method public setAiSceneImageLevel(I)V
    .locals 5

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    const/16 p1, 0x17

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneShadowDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0803a0

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigBgRes(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    const/16 v2, 0xc9

    .line 6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    if-nez v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-static {p1}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configBottomPopupTips(Z)V

    .line 10
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f120021

    goto :goto_0

    :cond_5
    const v0, 0x7f120020

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_6

    if-lez p1, :cond_6

    array-length v1, v0

    if-ge p1, v1, :cond_6

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12001f

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setAlertAnim(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertAnim(Z)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public setConfigMenuResetWhenRestartmode()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setRecordingTimeState(IZ)V

    return-void
.end method

.method public setRecordingTimeState(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPendingRecordingState(I)V

    :goto_0
    return-void
.end method

.method public setShow(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_0
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130175

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSnapNumVisible(ZZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initSnapNumAnimator()V

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setSnapNumValue(I)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x1f4

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public setTipsState(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVolumeValue([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapMoveVolumeValue([F)V

    :cond_0
    return-void
.end method

.method public showConfigMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public showDelayNumber(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->showDelayNumber(IZ)V

    :cond_1
    return-void
.end method

.method public showDocumentStateButton(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showDocumentStateButton(I)V

    return-void
.end method

.method public showExtraMenu()V
    .locals 3

    const-string v0, "FragmentTopConfig"

    const-string v1, "config showExtraMenu"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideSwitchTip()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideAlert()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initExtraMenu(Z)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsExtraMenuShowing:Z

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->changeTopAlertForAccessibility(Z)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->notifyExtraMenuVisibilityChange(Z)V

    .line 11
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    :cond_0
    return-void
.end method

.method public showHdrOrFlashAnim(Landroid/view/View;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 3
    instance-of v0, v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-nez v0, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extra menu click exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentTopConfig"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;->updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v2, 0xc2

    if-ne v0, v2, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getTopSelectedAnimID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->getTopSelectedAnimID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_3
    :goto_0
    const v0, 0x7f0703f2

    const v1, 0x3ec28f5c    # 0.38f

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    const v0, 0x3dcccccd    # 0.1f

    .line 13
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 14
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 17
    new-instance v6, Lcom/android/camera/fragment/top/FragmentTopConfig$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;)V

    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    return-void
.end method

.method public startLiveShotAnimation()V
    .locals 3

    const/16 v0, 0xce

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    const-string v2, "level"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method public toSlideSwitch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigValueChanged(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string/jumbo p2, "pref_speech_shutter"

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/AppController;

    .line 8
    invoke-interface {p0}, Lcom/android/camera/AppController;->getTTSHelper()Lcom/android/camera/tts/TTSHelper;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 4
    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;Landroid/widget/ImageView;IZZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateContentDescription()V
    .locals 2

    const/16 v0, 0xc4

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f12005b

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateHistogramStatsData([I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateHistogramStatsData([I)V

    return-void
.end method

.method public updateHistogramStatsData([I[I[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateHistogramStatsData([I[I[I)V

    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateLyingDirectHint(Z)V

    return-void
.end method

.method public updateProVideoRecordingSimpleView(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateProVideoRecordingSimpleView(Z)V

    return-void
.end method

.method public updateRGBHistogramSwitched(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTimeStyle(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTimeStyle(Z)V

    :cond_0
    return-void
.end method

.method public updateTopAlertLayout()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopAlertLayout()V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getTopCoverHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 p1, 0x1

    invoke-static {}, Lcom/android/camera/display/Display;->getBackgroundLeftMargin()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopFloating(ZI)V

    :cond_0
    return-void
.end method
