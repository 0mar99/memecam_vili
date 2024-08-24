.class public abstract Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;,
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;,
        Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;
    }
.end annotation


# static fields
.field public static final ANIM_TAG_DISMISS:Ljava/lang/String; = "dismiss"

.field public static final ANIM_TAG_INIT:Ljava/lang/String; = "init"

.field public static final FLOATING_BG_DIM:F = 0.3f

.field public static final MOVE_DISTANCE_RATIO:F = 0.5f


# instance fields
.field public final PANEL_SHOW_DELAY_TIME:I

.field public mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field public mAnimationDoing:Z

.field public mBg:Landroid/view/View;

.field public mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

.field public mEnableSwipToDismiss:Z

.field public mFloatingActivityFinishingFlag:I

.field public final mFloatingActivitySlidDownHandler:Landroid/os/Handler;

.field public mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field public mFloatingRadius:F

.field public mFloatingRoot:Landroid/view/View;

.field public mHandle:Landroid/view/View;

.field public mIsFloatingWindow:Z

.field public mLastMoveY:F

.field public mMoveMaxY:F

.field public mOffsetY:F

.field public mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

.field public mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

.field public mPanel:Landroid/view/View;

.field public mPanelParent:Landroid/view/View;

.field public mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

.field public mTouchDownY:F


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;-><init>()V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->PANEL_SHOW_DELAY_TIME:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 7
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const v0, 0x1010054

    .line 9
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    return-void
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isEnableFirstFloatingTranslationY()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->singleFloatingSlipExit(ZI)V

    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V

    return-void
.end method

.method private backOneByOne(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isEnableFirstFloatingTranslationY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerBottomExit(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dimBg(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    sub-float/2addr v0, p1

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private executeFolme(ZI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    float-to-int p1, p1

    const/4 v2, 0x0

    const-string v3, "dismiss"

    goto :goto_0

    :cond_1
    const v2, 0x3e99999a    # 0.3f

    const-string v3, "init"

    move p1, v1

    :goto_0
    const/4 v4, 0x0

    .line 4
    invoke-static {v0, v4}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v6, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 5
    new-instance v7, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;

    invoke-direct {v7, p0, p2, v4}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 6
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v6, p1

    invoke-virtual {p2, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 7
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v6, v2

    invoke-virtual {p2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-array v2, v0, [Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v5, v3, v1

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array p1, v0, [Landroid/view/View;

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private firstFloatingTranslationTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance v1, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0Oo;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private folmeShow()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x1

    new-array v4, v2, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 3
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v4, v5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v1, v5

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method

.method private getAnimPanel()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method private getPageCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->getPageCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSnapShotAndSetPanel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-interface {v0, p0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_0
    return-void
.end method

.method private handleFingerMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 3
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    sub-float v2, p1, v2

    add-float/2addr v0, v2

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->movePanel(F)V

    .line 5
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->dimBg(F)V

    .line 6
    :cond_1
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    sub-float/2addr p1, v0

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v0

    .line 9
    :goto_0
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    if-eqz p1, :cond_6

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_1

    .line 12
    :cond_6
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_1

    .line 13
    :cond_7
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragStart()V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mTouchDownY:F

    .line 15
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mLastMoveY:F

    .line 16
    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOffsetY:F

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    :goto_1
    return-void
.end method

.method private isEnableFirstFloatingTranslationY()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private makeDownMoveMaxY()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mMoveMaxY:F

    return-void
.end method

.method private movePanel(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getAnimPanel()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private notifyDragEnd()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragEnd()V

    :cond_0
    return-void
.end method

.method private notifyDragStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragStart()V

    :cond_0
    return-void
.end method

.method private notifyPageHide()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onHideBehindPage()V

    :cond_0
    return-void
.end method

.method private onEnd(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "init"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragEnd()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    return-void
.end method

.method private panelDelayShow()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    new-instance v2, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0O0;

    invoke-direct {v2, p0, v0}, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0O0;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;F)V

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPanelParent(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanelParent:Landroid/view/View;

    return-void
.end method

.method private singleFloatingSlipExit(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mAnimationDoing:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    :cond_0
    return-void
.end method

.method private triggerBottomExit(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    return-void
.end method

.method private triggerFinishCallback(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->onFinish(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, v0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    :goto_0
    return-void
.end method

.method private updateFloatingActivityFinishingFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivityFinishingFlag:I

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isEnableFirstFloatingTranslationY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->folmeShow()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 p1, 0x1

    const/4 v0, 0x2

    .line 6
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->triggerFinishCallback(ZI)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 7
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->handleFingerMove(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public delegateFinishFloatingActivityInternal()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingActivitySlidDownHandler:Landroid/os/Handler;

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    const-wide/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 6
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->access$200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public executeCloseEnterAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseEnterAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public executeCloseExitAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseExitAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenEnterAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public executeOpenExitAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenExitAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public exitFloatingActivityAll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->makeDownMoveMaxY()V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyPageHide()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->executeFolme(ZI)V

    return-void
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    return-object p0
.end method

.method public getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method public hideFloatingBrightPanel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideFloatingDimBackground()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View;Z)V
    .locals 2

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    .line 2
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mBg:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 5
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_floating_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    .line 6
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 8
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRoot:Landroid/view/View;

    new-instance p2, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0OO;

    invoke-direct {p2, p0}, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO0OO;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    new-instance p2, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO00o;

    invoke-direct {p2, p0}, LOooO0o0/OooO0O0/OooO00o/OooO0o/OooO0O0/OooO00o;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->firstFloatingTranslationTop()V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 13
    iget-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->getSnapShotAndSetPanel()V

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->backOneByOne(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_floating_window:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Lmiuix/appcompat/R$id;->sliding_drawer_handle:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 8
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 10
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/4 p2, -0x2

    .line 12
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 17
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 18
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_3
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 20
    new-instance p2, Lmiuix/internal/widget/RoundFrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p2, v1}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    invoke-virtual {p1, p2}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->panelDelayShow()V

    .line 25
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->setPanelParent(Landroid/view/View;)V

    return-object v0
.end method

.method public setEnableSwipToDismiss(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mEnableSwipToDismiss:Z

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mHandle:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/SplitUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/view/CompatViewMethod;->setActivityTranslucent(Landroid/app/Activity;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mFloatingRadius:F

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mRoundFrameLayout:Lmiuix/internal/widget/RoundFrameLayout;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius(F)V

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingActivityCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;

    return-void
.end method

.method public showFloatingBrightPanel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
