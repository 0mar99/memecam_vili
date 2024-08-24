.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
.implements Lcom/android/camera/fragment/manually/ZoomValueListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/protocol/protocols/DualController;
.implements Lcom/android/camera/protocol/protocols/SnapShotIndicator;
.implements Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;
.implements Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff4

.field public static final HIDE_POPUP:I = 0x1

.field public static final HIDE_ZOOMTIP:I = 0x2

.field public static final STYPE_ZOOM_ANIMATE_INSIDE:I = 0x1

.field public static final STYPE_ZOOM_ANIMATE_NONE:I = 0x0

.field public static final STYPE_ZOOM_ANIMATE_OUTSIDE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FragmentDualCameraAdjust"


# instance fields
.field public mCurrentState:I

.field public mDualParentLayout:Landroid/view/ViewGroup;

.field public mHandler:Landroid/os/Handler;

.field public mHorizontalSlideTip:Landroid/widget/TextView;

.field public mHorizontalSlideTipLayout:Landroid/view/View;

.field public mIsHiding:Z

.field public mIsRecordingOrPausing:Z

.field public mIsVerType:Z

.field public mPassTouchFromZoomButtonToSlide:Z

.field public mPositiveSpline:Landroid/util/Spline;

.field public mRootView:Landroid/view/View;

.field public mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

.field public mSliderHeight:I

.field public mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

.field public mSpline:Landroid/util/Spline;

.field public mStypeZoomAnimate:I

.field public mTargetZoomRatio:F

.field public mUseSliderType:I

.field public mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

.field public mZoomIndexButtonsHeight:I

.field public mZoomRatio:F

.field public mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

.field public mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

.field public mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsRecordingOrPausing:Z

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    .line 5
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mTargetZoomRatio:F

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;FI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(FI)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyZooming(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private adjustBeautyModeSlideButton()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x800003

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0708ed

    goto :goto_0

    :cond_0
    const v2, 0x7f0708eb

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x11

    .line 7
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 9
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomBackgroundResource(Landroid/view/View;ILcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomBackgroundResource(Landroid/view/View;ILcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getMarginOffset()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    const v1, 0x7f0708f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 3
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5
    :cond_0
    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getViewSpecForCapturingMode(I)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const/16 v3, 0xa3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p0, v3, :cond_2

    :cond_0
    move v10, v5

    move v0, v6

    move v1, v0

    move v4, v1

    goto/16 :goto_1d

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    move v10, v5

    move v0, v6

    move v1, v0

    goto/16 :goto_1d

    :cond_3
    const/16 v2, 0xa2

    if-ne p0, v2, :cond_4

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->get8KDotType()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_0

    .line 12
    :cond_8
    sget-boolean v7, Lcom/android/camera/HybridZoomingSystem;->IS_2_OR_MORE_SAT:Z

    if-eqz v7, :cond_2

    const/16 v7, 0xbc

    if-ne p0, v7, :cond_9

    move v8, v5

    move v7, v6

    move v9, v7

    goto :goto_1

    :cond_9
    move v7, v4

    move v9, v5

    move v8, v6

    :goto_1
    const/16 v10, 0xaf

    if-ne p0, v10, :cond_c

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result p0

    if-nez p0, :cond_2

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result p0

    if-nez p0, :cond_a

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 16
    :cond_a
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_b
    :goto_2
    move v0, v5

    move v1, v0

    move v10, v1

    move v4, v6

    goto/16 :goto_1d

    :cond_c
    const/16 v10, 0xa1

    if-ne p0, v10, :cond_11

    .line 18
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz v0, :cond_e

    :cond_d
    move p0, v4

    goto :goto_3

    .line 19
    :cond_e
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result p0

    if-nez p0, :cond_d

    move p0, v6

    :goto_3
    if-ne p0, v4, :cond_f

    move v0, v6

    goto :goto_4

    :cond_f
    move v0, v5

    :goto_4
    if-ne p0, v4, :cond_10

    :goto_5
    move v1, v6

    goto :goto_6

    :cond_10
    move v1, v5

    :goto_6
    move v4, p0

    move v10, v5

    goto/16 :goto_1d

    :cond_11
    const/16 v10, 0xb7

    if-ne p0, v10, :cond_16

    .line 20
    sget-boolean v7, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz v7, :cond_13

    :cond_12
    move v7, v4

    goto :goto_7

    .line 21
    :cond_13
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v7

    if-nez v7, :cond_12

    move v7, v6

    :goto_7
    if-ne v7, v4, :cond_14

    move v8, v6

    goto :goto_8

    :cond_14
    move v8, v5

    :goto_8
    if-ne v7, v4, :cond_15

    move v9, v6

    goto :goto_9

    :cond_15
    move v9, v5

    :goto_9
    move v10, v5

    goto :goto_a

    :cond_16
    move v10, v9

    move v9, v8

    move v8, v6

    :goto_a
    if-ne p0, v2, :cond_26

    .line 22
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz v2, :cond_18

    :cond_17
    :goto_b
    move v2, v4

    goto :goto_d

    .line 23
    :cond_18
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_b

    .line 24
    :cond_19
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 25
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_c

    .line 26
    :cond_1a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oOo()Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_c
    move v2, v6

    :goto_d
    if-eq v2, v4, :cond_1e

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 27
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 28
    :cond_1b
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->get8KDotType()I

    move-result v3

    if-eq v3, v6, :cond_1e

    .line 29
    :cond_1c
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_e

    :cond_1d
    move v3, v5

    goto :goto_f

    :cond_1e
    :goto_e
    move v3, v6

    :goto_f
    if-eq v2, v4, :cond_22

    if-nez v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 30
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 31
    :cond_1f
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->get8KDotType()I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 32
    :cond_20
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_10

    :cond_21
    move v1, v5

    goto :goto_11

    :cond_22
    :goto_10
    move v1, v6

    .line 33
    :goto_11
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v10

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p0

    .line 35
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v0

    goto :goto_12

    :cond_23
    move v0, v5

    :goto_12
    if-eqz p0, :cond_25

    if-eqz v0, :cond_24

    goto :goto_13

    :cond_24
    move v4, v6

    goto :goto_13

    :cond_25
    move v4, v2

    :goto_13
    move v0, v3

    goto/16 :goto_1d

    :cond_26
    const/16 v2, 0xa9

    if-ne p0, v2, :cond_29

    .line 37
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz p0, :cond_27

    move p0, v4

    goto :goto_14

    :cond_27
    move p0, v6

    :goto_14
    if-ne p0, v4, :cond_28

    move v0, v6

    goto :goto_15

    :cond_28
    move v0, v5

    :goto_15
    if-ne p0, v4, :cond_10

    goto/16 :goto_5

    :cond_29
    if-eq p0, v3, :cond_2e

    const/16 v2, 0xba

    if-ne p0, v2, :cond_2a

    goto :goto_16

    :cond_2a
    const/16 v0, 0xad

    if-ne p0, v0, :cond_2b

    .line 38
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    :cond_2b
    const/16 v0, 0xa6

    if-ne p0, v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0xcd

    if-ne p0, v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    move v4, v7

    move v0, v8

    move v1, v9

    goto/16 :goto_1d

    .line 39
    :cond_2e
    :goto_16
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 40
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_17

    .line 41
    :cond_2f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oOo()Z

    move-result v2

    if-eqz v2, :cond_30

    :goto_17
    move v4, v6

    .line 42
    :cond_30
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-nez v2, :cond_32

    if-nez v0, :cond_31

    if-eqz v1, :cond_31

    .line 43
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_18

    :cond_31
    move v2, v5

    goto :goto_19

    :cond_32
    :goto_18
    move v2, v6

    .line 44
    :goto_19
    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-nez v3, :cond_34

    if-nez v0, :cond_33

    if-eqz v1, :cond_33

    .line 45
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_1a

    :cond_33
    move v3, v5

    goto :goto_1b

    :cond_34
    :goto_1a
    move v3, v6

    :goto_1b
    if-nez v0, :cond_35

    if-eqz v1, :cond_36

    .line 46
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_35
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-nez p0, :cond_36

    move v10, v6

    goto :goto_1c

    :cond_36
    move v10, v5

    :goto_1c
    move v0, v2

    move v1, v3

    :goto_1d
    if-eqz v10, :cond_39

    .line 47
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result p0

    if-nez p0, :cond_38

    .line 48
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_1e

    :cond_37
    const/4 p0, 0x2

    move v5, p0

    goto :goto_1f

    :cond_38
    :goto_1e
    move v5, v6

    .line 49
    :cond_39
    :goto_1f
    new-instance p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;-><init>(IZZI)V

    return-object p0
.end method

.method private initRatioToggleAnimator()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooo0o()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initSlideTipRotation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070776

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
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07077e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initSlideZoomView()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/VerStopsZoomSliderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/android/camera/fragment/manually/adapter/sat/VerStopsZoomSliderAdapter;-><init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/HorStopsZoomSliderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/android/camera/fragment/manually/adapter/sat/HorStopsZoomSliderAdapter;-><init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V

    :goto_2
    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v3, v0, p0}, Lcom/android/camera/ui/BaseHorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    iget-object v8, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSpline:Landroid/util/Spline;

    iget-object v9, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPositiveSpline:Landroid/util/Spline;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/ui/BaseHorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZLandroid/util/Spline;Landroid/util/Spline;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 7
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xbc

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v2, v1

    .line 8
    :goto_4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v0

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    sget-object v4, Lcom/android/camera/HybridZoomingSystem;->ZOOM_INDEXS_DEFAULT:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 11
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 13
    invoke-static {}, Lcom/android/camera/Util;->getMinZoomRatio()F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->getMaxZoomRatio()F

    move-result v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_5

    .line 14
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-static {}, Lcom/android/camera/Util;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setZoomIndexButtons(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setSelect(FZ)V

    return-void
.end method

.method private initiateZoomRatio()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v0

    const-string v1, "FragmentDualCameraAdjust"

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ultra"

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "wide"

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "tele"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_0

    :cond_2
    const-string v2, "macro"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    sget v0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_0

    :cond_3
    const-string v2, "Standalone"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateZoomRatio(): lens-switch-zoom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateZoomRatio(): Unknown camera lens type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 16
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 17
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xbc

    if-eq v0, v3, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMinimumOpticalZoomRatio(I)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_3

    .line 19
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa3

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 20
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    .line 21
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    goto :goto_3

    .line 22
    :cond_a
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    .line 23
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateZoomRatio(): zoom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZoomVisible(I)Z
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getViewSpecForCapturingMode(I)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;

    move-result-object p0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->visibility:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyZooming(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onDualLensZooming(Z)V

    :cond_0
    return-void
.end method

.method private requestZoomRatio(FI)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onDualZoomValueChanged(FI)V

    :cond_0
    return-void
.end method

.method private resetParentLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private setZoomBackgroundResource(Landroid/view/View;ILcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    instance-of p0, p1, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xbc

    if-eqz p0, :cond_1

    .line 2
    check-cast p1, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {p3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result p0

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setBackgroundColor(ZZ)V

    goto :goto_2

    .line 3
    :cond_1
    instance-of p0, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    if-eqz p0, :cond_3

    .line 4
    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result p0

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setBackgroundColor(ZZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private showOrHideBottomMenu(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showZoomPanel()Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomPanelVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "FragmentDualCameraAdjust"

    const-string/jumbo v2, "showZoomPanel"

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initSlideZoomView()V

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 7
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-boolean v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    if-eqz v3, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    if-eqz v3, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v3, v0

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x12c

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 9
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setDegree(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    if-eqz v0, :cond_4

    return v2

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtonsHeight:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateView(I)V

    .line 18
    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showOrHideBottomMenu(ZZ)V

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideNoDynamicTips()V

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigAiTip()Z

    .line 22
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateDynamicImageLayoutParams()V

    .line 23
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->updateSATIsZooming(Z)V

    .line 25
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, p0

    invoke-interface {v1, v2, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    :cond_7
    return v2
.end method

.method private switchCameraLens()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomRatio(I)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ultra"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "wide"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "tele"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "Standalone"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCameraLens(): Unknown camera lens type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private toHideZoomPanel(ZZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetSlideTip()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetParentLayout()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 10
    iget-object p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {p3}, Lcom/android/camera/ui/BaseHorizontalZoomView;->cancelAnimators()V

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    const/16 p3, 0x80

    invoke-virtual {p2, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->sendAccessibilityEvent(I)V

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 15
    iget-boolean p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    if-eqz p2, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showOrHideBottomMenu(ZZ)V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 18
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateDynamicImageLayoutParams()V

    :cond_4
    if-eqz p1, :cond_7

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTranslationAnimationShow()V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 21
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->updateSATIsZooming(Z)V

    :cond_5
    if-eqz p2, :cond_6

    .line 22
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_6
    if-eqz p2, :cond_7

    .line 23
    invoke-interface {p2, v0, v1}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 25
    invoke-interface {p0, v0, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    :cond_8
    return-void
.end method

.method private updateView(I)V
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mRootView:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 10
    :cond_0
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4:3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 15
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 17
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v0, 0x4

    .line 20
    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 23
    :goto_0
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getMarginOffset()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 24
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 p0, 0x13

    .line 25
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 26
    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mRootView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method private updateZoomSlider()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomSliderPosition()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateZoomSliderPosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Object;)F

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView;->setSelection(F)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPositiveSpline:Landroid/util/Spline;

    invoke-virtual {v0, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 4
    invoke-static {p2}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(FI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff4

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0080

    return p0
.end method

.method public hideAllPanel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v1, v1, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toHideZoomPanel(ZZZ)V

    :cond_1
    return-void
.end method

.method public hideZoomButton()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetSlideTip()V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->updateSATIsZooming(Z)V

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView;->cancelAnimators()V

    .line 15
    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showOrHideBottomMenu(ZZ)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetParentLayout()V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    invoke-interface {p0, v3, v3}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    :cond_2
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsVerType:Z

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0147

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTipLayout:Landroid/view/View;

    const v0, 0x7f0a0146

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    const v0, 0x7f0a0148

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0511

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    const v0, 0x7f0a0513

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;)V

    const v0, 0x7f0a0391

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a0145

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/BaseHorizontalZoomView;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSliderHeight:I

    .line 15
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    .line 16
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    .line 17
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isButtonVisible()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInteractive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isZoomPanelVisible()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->isEnable()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isZoomSliderViewIdle()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView;->isIdle()Z

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

.method public isZoomVisible()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;I)V

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa2

    if-ne p1, v4, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 4
    :goto_0
    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    if-ne v4, v1, :cond_a

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 6
    sget-object v5, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_X:[F

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_X:[F

    :goto_1
    if-eqz p1, :cond_2

    .line 7
    sget-object v6, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_Y:[F

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_Y:[F

    :goto_2
    if-eqz v4, :cond_3

    .line 8
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSatZoomSplineData(Lcom/android/camera2/CameraCapabilities;)[Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_8

    .line 9
    iput v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    .line 10
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_7

    if-nez p1, :cond_4

    .line 11
    aget-object v4, v0, v2

    iget-byte v4, v4, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    if-eq v4, v3, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    aget-object v4, v0, v2

    iget-byte v4, v4, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    if-ne v4, v1, :cond_6

    .line 12
    :cond_5
    aget-object p1, v0, v2

    iget-object v5, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    .line 13
    aget-object p1, v0, v2

    iget-object v6, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    .line 14
    aget-object p1, v0, v2

    iget-byte p1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->supportOutZoomAnimate:B

    if-ne p1, v3, :cond_7

    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    :goto_4
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSpline:Landroid/util/Spline;

    .line 17
    invoke-static {v6, v5}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPositiveSpline:Landroid/util/Spline;

    goto :goto_5

    .line 18
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOoO()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 19
    iput v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    .line 20
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSpline:Landroid/util/Spline;

    .line 21
    invoke-static {v6, v5}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPositiveSpline:Landroid/util/Spline;

    goto :goto_5

    .line 22
    :cond_9
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    goto :goto_5

    .line 23
    :cond_a
    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    :goto_5
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
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
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v1

    :cond_2
    if-ne v3, v2, :cond_9

    .line 3
    iget-boolean v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    if-eqz v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    return v1

    :cond_5
    const/16 v3, 0x8

    if-ne p1, v3, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideZoomButton()V

    return v1

    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    xor-int/lit8 p1, v0, 0x1

    .line 6
    invoke-direct {p0, p1, v2, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toHideZoomPanel(ZZZ)V

    return v1

    :cond_7
    if-ne p1, v2, :cond_8

    xor-int/lit8 p1, v0, 0x1

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toHideZoomPanel(ZZZ)V

    goto :goto_1

    :cond_8
    xor-int/lit8 p1, v0, 0x1

    .line 8
    invoke-direct {p0, p1, v2, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toHideZoomPanel(ZZZ)V

    :cond_9
    :goto_1
    return v2
.end method

.method public onClick(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isInteractive()Z

    move-result v0

    const-string v1, "FragmentDualCameraAdjust"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onClick(): ignored due to not interactive"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomPanelVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(): current zoom ratio index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(): current zoom ratio value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSuppressed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->switchCameraLens()V

    goto/16 :goto_0

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getTeleZoomRatio(I)F

    move-result p1

    .line 12
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 16
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xa2

    if-ne v0, v4, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    .line 18
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-nez v5, :cond_4

    .line 19
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mTargetZoomRatio:F

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    aput v4, v2, v3

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_4
    cmpg-float v0, v0, p1

    if-gtz v0, :cond_5

    .line 23
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 24
    iput v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mTargetZoomRatio:F

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v2, [F

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    aput v2, v0, v3

    aput v4, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 27
    :cond_5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(FI)V

    .line 29
    invoke-direct {p0, v4, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(FI)V

    goto/16 :goto_0

    .line 30
    :cond_6
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_a

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    :cond_8
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result p1

    .line 35
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mTargetZoomRatio:F

    .line 37
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStypeZoomAnimate:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 39
    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSpline:Landroid/util/Spline;

    invoke-virtual {v4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    .line 40
    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 41
    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 42
    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    aput v0, v2, v3

    aput v4, v2, v1

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00o0O/OooO00o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00o0O/OooO00o;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 48
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    aput v4, v2, v3

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    :cond_a
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0()V

    :cond_b
    const/4 p1, 0x5

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onIndexButtonClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->setIndexButtonSelection(F)V

    .line 3
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualZoomChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onManuallyDataChanged(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onDualZoomValueChanged(FI)V

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "X"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initSlideTipRotation()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTipLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 12
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->setSuperMoonTextVisibleWhileZoom(I)V

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setZoomIndexes(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onScrollEnd(ZFI)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->writeTargetZoom(F)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x4f

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(FI)V

    .line 6
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onTouchUpState(I)V

    :cond_1
    return-void
.end method

.method public onScrollStart(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeTargetZoom(F)V

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x4f

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouch(Landroid/view/MotionEvent;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    :cond_2
    return v3
.end method

.method public onTouchUpState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const-string/jumbo v0, "slider"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomAdjusted(Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->impl2()Lcom/android/camera/protocol/protocols/ZoomProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->onZoomingActionEnd(I)V

    :cond_0
    return-void
.end method

.method public onZoomItemSlideOn(IZ)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0oo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xd1

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustBeautyModeSlideButton()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtonsHeight:I

    .line 8
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb7

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 9
    iput-boolean v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsRecordingOrPausing:Z

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initRatioToggleAnimator()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initiateZoomRatio()V

    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    const/4 p3, 0x5

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    .line 12
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    .line 13
    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getViewSpecForCapturingMode(I)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;

    move-result-object p3

    .line 14
    iget v1, p3, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->visibility:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 15
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomRatioViewAttr(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v1, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    .line 17
    iget p3, p3, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->visibility:I

    .line 18
    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne p3, v1, :cond_6

    return-void

    .line 19
    :cond_6
    iput p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p3

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p3, :cond_7

    .line 23
    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p3

    if-nez p3, :cond_a

    :cond_7
    if-eqz v1, :cond_8

    .line 24
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result p3

    if-nez p3, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    .line 25
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result p3

    if-nez p3, :cond_a

    :cond_9
    iget-boolean p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsRecordingOrPausing:Z

    if-eqz p3, :cond_b

    .line 26
    :cond_a
    iput v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 27
    :cond_b
    iget p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-eq p3, v5, :cond_10

    if-eq p3, v2, :cond_c

    goto :goto_2

    .line 28
    :cond_c
    iget-object p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    iget-object p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p3}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eqz p2, :cond_f

    const/16 p3, 0xa3

    const/16 v1, 0xa7

    if-ne p1, p3, :cond_d

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eq v0, v1, :cond_d

    goto :goto_1

    :cond_d
    if-ne v0, v1, :cond_e

    .line 31
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    move-result-object p0

    .line 33
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_e
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 35
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 36
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_f
    :goto_1
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 38
    :cond_10
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 40
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_11
    :goto_2
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
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->provideRotateItem(Ljava/util/List;I)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initSlideTipRotation()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/DualController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public resetSlideTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTipLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideTip:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->setSuperMoonTextVisibleWhileZoom(I)V

    :cond_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRecordingOrPausing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsRecordingOrPausing:Z

    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setCaptureCount(I)V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->showDelayNumber(IZ)V

    :cond_0
    return-void
.end method

.method public setSnapNumVisible(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->hideDelayNumber()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideView:Lcom/android/camera/ui/BaseHorizontalZoomView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p1, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toHideZoomPanel(ZZZ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomRatio(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setZoomRatioViewAttr(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideAnimateElement(): initialized zoom ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDualCameraAdjust"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-boolean v2, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->suppress:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setCapturingMode(IZ)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setRotation(F)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setZoomRatio(FI)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->useSliderType:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setUseSliderAllowed(I)V

    .line 6
    iget p1, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->useSliderType:I

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    return-void
.end method

.method public showZoomButton()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsRecordingOrPausing:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getViewSpecForCapturingMode(I)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "FragmentDualCameraAdjust"

    const-string/jumbo v0, "showZoomButton:viewSpecForCapturingMode is null "

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_2
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->visibility:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    :cond_3
    if-ne v2, v1, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomRatioViewAttr(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;)V

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 9
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomRatio(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 11
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public toShowSlideView(Lcom/android/camera/ui/zoom/ZoomTextImageView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showZoomPanel()Z

    move-result p1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackShowZoomBarByScroll(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomSlider()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->sendHideMessage()V

    return p1
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    const-class v0, Lcom/android/camera/protocol/protocols/DualController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public updateSlideAndZoomRatio(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mUseSliderType:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showZoomPanel()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomRatio(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->sendHideMessage()V

    :cond_2
    return v0
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateView(I)V

    return-void
.end method

.method public updateZoomIndexsButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomIndexButtons:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->setSelect(FZ)V

    :cond_0
    return-void
.end method

.method public updateZoomRatio(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleProcessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    .line 4
    invoke-static {v0, v2}, Lcom/android/camera/HybridZoomingSystem;->isOpticalZoomRatio(IF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioToggleView:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:F

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setZoomRatio(FI)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomSlider()V

    :cond_3
    return-void
.end method

.method public visibleHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSliderHeight:I

    return p0
.end method
