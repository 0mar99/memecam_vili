.class public Lcom/android/camera/fragment/clone/FragmentCloneProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentCloneProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/protocol/protocols/CloneProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentCloneProcess"


# instance fields
.field public mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCancelCapture:Landroid/widget/ImageView;

.field public mCaptureHint:Landroid/widget/TextView;

.field public mCaptureHintPined:Z

.field public mCloneRootView:Landroid/view/View;

.field public mDetectedPersonInPreview:Z

.field public mExitDialog:Landroid/view/View;

.field public mExitDialogCancel:Landroid/widget/TextView;

.field public mExitDialogConfirm:Landroid/widget/TextView;

.field public mExitDialogMessage:Landroid/widget/TextView;

.field public mExitToDummyClone:Z

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field public mGiveUpToPreview:Landroid/widget/ImageView;

.field public mIsPendingShowComposeResult:Z

.field public mLandscapeHint:Landroid/widget/TextView;

.field public mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public mOldControlStream:I

.field public mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field public mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field public mPaused:Z

.field public mPendingShare:Z

.field public mPlayButton:Landroid/widget/ImageView;

.field public mResetEdit:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSaveAndShare:Landroid/widget/ImageView;

.field public mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSaveContentValues:Landroid/content/ContentValues;

.field public mSavedPath:Ljava/lang/String;

.field public mSavedUri:Landroid/net/Uri;

.field public mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSnapViewProgress:Landroid/widget/ImageView;

.field public mStatus:Lcom/android/camera/fragment/clone/Status;

.field public mStopCapture:Landroid/widget/ImageView;

.field public mVVShare:Landroid/view/View;

.field public mVVShareMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mOldControlStream:I

    .line 3
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$1;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method public static synthetic OooO00o(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr p0, v2

    float-to-double v2, p0

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method private addViewForGestureRecognize(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "FragmentCloneProcess"

    const-string v1, "addViewForGestureRecognize: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0O0;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v2

    add-int/2addr p0, v2

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showShareSheet()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private fitThin(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x3f59999a    # 0.85f

    if-lez p1, :cond_0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private isProcessing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private refreshRootViewLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCloneRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getTopHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 11
    :goto_2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCloneRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private restoreVolumeControlStream()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mOldControlStream:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->adjustProgressAndGetDrawable(ILcom/android/camera/ui/CameraSnapView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_2
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 8
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setVolumeControlStream(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mOldControlStream:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVolumeControlStream "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentCloneProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private showCloneUseGuide()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x17

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    return-void
.end method

.method private showShareSheet()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showShareSheet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentCloneProcess"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isVideoMode()Z

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v1}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v3, 0x10000

    .line 7
    invoke-virtual {v6, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->fitThin(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->fitThin(Landroid/view/View;)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->fitThin(Landroid/view/View;)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShareMessage:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->fitThin(Landroid/view/View;)V

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x4

    div-int/lit8 v9, v2, 0x4

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 18
    :cond_4
    :goto_0
    new-instance v2, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, v2

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    .line 19
    new-instance v2, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    .line 20
    new-instance v3, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 22
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v3, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v5, :cond_5

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v0, :cond_6

    .line 26
    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShareMessage:Landroid/widget/TextView;

    const v1, 0x7f12092e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShareMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneProcess$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$5;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :goto_2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_7
    :goto_3
    const-string/jumbo p0, "no IntentActivities"

    .line 33
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUiOnOrientationChanged()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUiOnOrientationChanged isLandScape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentCloneProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    sget-object v2, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v0, v2, :cond_0

    const-string p0, "ignore updateUiOnOrientationChanged when not capturing"

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    .line 10
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/protocols/CloneAction;->onTouchUp(FF)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public alphaAnimateIn(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public alphaAnimateOut(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public canMultiCaptureByRunningCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canMultiCaptureByStableCondition()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public canSnap()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkModeValidation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->quit()V

    :cond_0
    return-void
.end method

.method public enableUseGuideMenu(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa4

    aput v2, v0, v1

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    :cond_0
    return-void
.end method

.method public fakeLandscapeShowFrameLayoutSubView(Landroid/view/View;III)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 6
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v4, p3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070190

    .line 8
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p4, v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, p3

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 13
    :cond_1
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, p3

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    :goto_0
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public getDurationVideoRecording()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/16 p0, 0x2710

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffff3

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0069

    return p0
.end method

.method public getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object p0
.end method

.method public getStatus()Lcom/android/camera/fragment/clone/Status;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    return-object p0
.end method

.method public hiddenPlayButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideCaptureMessage()V
    .locals 0

    return-void
.end method

.method public hideExitDialog()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideShareSheet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initShutterButton(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    const/16 v0, 0xb9

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initShutterButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentCloneProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa3

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setCameraSnapView(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->startSpeech()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech(Z)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setCameraSnapView(I)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech(Z)V

    :goto_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 11

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mRootView:Landroid/view/View;

    const v0, 0x7f0a00e6

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCloneRootView:Landroid/view/View;

    const v0, 0x7f0a00eb

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a00e9

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00ea

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    const v2, 0x7f0a00d2

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08044b

    invoke-interface {v3, v4, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    const v4, 0x7f060387

    invoke-interface {v2, v3, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->setVectorColor(Landroid/widget/ImageView;I)V

    const v2, 0x7f0a00e7

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0804a8

    invoke-interface {v3, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->setVectorColor(Landroid/widget/ImageView;I)V

    const v2, 0x7f0a00ec

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0803de

    invoke-interface {v3, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a00e4

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    .line 17
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0804a5

    invoke-interface {v3, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a00cf

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ScrollTextview;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    const/4 v3, 0x0

    .line 19
    invoke-static {v2, v3, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080149

    invoke-interface {v3, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v2, 0x7f0a00e5

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    .line 22
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08049b

    invoke-interface {v3, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a00d0

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    .line 24
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->setVectorColor(Landroid/widget/ImageView;I)V

    const v2, 0x7f0a00e8

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a00df

    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const v2, 0x7f0a00d1

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    .line 29
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->setGuideToastTextSize(Landroid/widget/TextView;)V

    .line 30
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-interface {v2, v3, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->setGuideToastBgColor(Landroid/widget/TextView;Z)V

    const v2, 0x7f0a04ac

    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    const v3, 0x7f0a04b0

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogMessage:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    const v3, 0x7f0a04b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    const v3, 0x7f0a04b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogCancel:Landroid/widget/TextView;

    const v2, 0x7f0a04dc

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04dd

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShareMessage:Landroid/widget/TextView;

    .line 37
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 39
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    .line 40
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    new-array v5, v4, [Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    const/4 v9, 0x4

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    const/4 v10, 0x5

    aput-object v6, v5, v10

    invoke-interface {v2, v3, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setImageViewSize(Landroid/content/Context;[Landroid/widget/ImageView;)V

    .line 50
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object v5, v3, v9

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    aput-object v5, v3, v10

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->handleTouch([Landroid/view/View;)V

    new-array v2, v8, [Landroid/view/View;

    .line 51
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogCancel:Landroid/widget/TextView;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShareMessage:Landroid/widget/TextView;

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    new-array v0, v0, [Landroid/view/View;

    .line 52
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    const v0, 0x7f0a04c6

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f0a04c7

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->checkModeValidation()V

    return-void
.end method

.method public isLandscapeOrientation()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p0

    return p0
.end method

.method public isVideoMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

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

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitToDummyClone:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitToDummyClone:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstUseClonePhoto()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCloneUseGuide()V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFirstUseClonePhoto(Z)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v1, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstUseCloneVideo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCloneUseGuide()V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFirstUseCloneVideo(Z)V

    return-void

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v1, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstUseCloneFreezeFrame()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCloneUseGuide()V

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFirstUseCloneFreezeFrame(Z)V

    :cond_3
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideExitDialog()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPress()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showExitConfirm(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "FragmentCloneProcess"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a023e

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p0, "ignore onClick, dialog show"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "ignore onClick, rootView hidden"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onClick(Landroid/view/View;Lcom/xiaomi/fenshen/FenShenCam$Mode;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "onClick: live_share_item"

    .line 11
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    .line 13
    iput-boolean v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitToDummyClone:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isVideoMode()Z

    move-result v5

    .line 16
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo p1, "onClick: clone_stop_capture"

    .line 19
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_5

    const-string p0, "ignore stop capture"

    .line 21
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo p1, "value_clone_click_stop_capture"

    .line 22
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->stopCaptureToPreviewResult(Z)V

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p1, "onClick: clone_save_button"

    .line 24
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_7

    .line 26
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneAction;->onSaveEditClicked()V

    .line 28
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    const-string/jumbo p0, "value_save_edit_click"

    .line 29
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSaveButtonClick(Z)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo p1, "onClick: clone_save_and_share"

    .line 31
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "value_clone_click_share"

    .line 32
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_e

    .line 34
    iput-boolean v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSaveButtonClick(Z)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo p1, "onClick: clone_resume_play"

    .line 36
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 39
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneAction;->onPlayClicked()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo p0, "onClick: clone_reset_edit"

    .line 40
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 42
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneAction;->onResetEditClicked()V

    :cond_8
    const-string/jumbo p0, "value_reset_edit_click"

    .line 43
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :sswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick: clone_give_up_to_preview, sIsEdit="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_a

    .line 46
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 47
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneAction;->onGiveUpEditClicked()V

    .line 48
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    const-string/jumbo p0, "value_cancel_edit_click"

    .line 49
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string/jumbo p1, "value_clone_click_giveup"

    .line 50
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showExitConfirm(Z)V

    goto :goto_0

    :sswitch_7
    const-string/jumbo p1, "onClick: clone_cancel_capture"

    .line 52
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_b

    const-string p0, "ignore cancel capture"

    .line 54
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string/jumbo p1, "value_clone_click_cancel"

    .line 55
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->enableUseGuideMenu(Z)V

    .line 57
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 58
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneAction;->onCancelClicked()V

    .line 59
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    goto :goto_0

    :sswitch_8
    const-string/jumbo p1, "onClick: clone_adjust"

    .line 60
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    .line 62
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 63
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneAction;->onAdjustClicked()V

    .line 64
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showResetAndSaveEdit()V

    const-string/jumbo p0, "value_adjust_click"

    .line 65
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    :cond_e
    :goto_0
    return-void

    .line 66
    :cond_f
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore onClick, progress show "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00cf -> :sswitch_8
        0x7f0a00d0 -> :sswitch_7
        0x7f0a00d2 -> :sswitch_6
        0x7f0a00e4 -> :sswitch_5
        0x7f0a00e5 -> :sswitch_4
        0x7f0a00e7 -> :sswitch_3
        0x7f0a00e8 -> :sswitch_2
        0x7f0a00ec -> :sswitch_1
        0x7f0a023e -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;Lcom/xiaomi/fenshen/FenShenCam$Mode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCountDownFinished()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onFilmRatioChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onFrameAvailable()V
    .locals 0

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateUiOnOrientationChanged()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideExitDialog()Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneChooser;->impl2()Lcom/android/camera/protocol/protocols/CloneChooser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/CloneChooser;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "skip prepare when show choose dialog"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->restoreVolumeControlStream()V

    return-void
.end method

.method public onPreviewPrepare(Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public onReplayPause()V
    .locals 0

    return-void
.end method

.method public onReplayResume()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resumeFragment()V

    return-void
.end method

.method public onSaveButtonClick(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object v0

    const-string v1, "FragmentCloneProcess"

    if-nez v0, :cond_1

    const-string/jumbo p0, "onSaveButtonClick: no clone action"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "onSaveButtonClick"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->enableUseGuideMenu(Z)V

    :cond_2
    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    .line 12
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneAction;->onSaveClicked()V

    return-void
.end method

.method public onSaveFinish(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSaveFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentCloneProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSaveFinish(Lcom/xiaomi/fenshen/FenShenCam$Mode;Landroid/net/Uri;)V

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showShareSheet()V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    return-void
.end method

.method public onSaveFinish(Lcom/xiaomi/fenshen/FenShenCam$Mode;Landroid/net/Uri;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/camera/storage/MediaProviderUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_1

    const-string p2, "_data"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSnapClick()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentCloneProcess"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onSnapClick: disabled"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "onSnapClick ignore click case 2"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_3

    const-string/jumbo p0, "onSnapClick: no context"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo p0, "onSnapClick ignore click case 3"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "onSnapClick performClick mSaveButton"

    .line 14
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 16
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    if-eqz v0, :cond_6

    const-string/jumbo p0, "onSnapClick ignore click case 4"

    .line 17
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v0, "onSnapClick"

    .line 18
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 20
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSnapClick(Lcom/android/camera/protocol/protocols/CameraAction;)V

    return-void

    :cond_8
    :goto_0
    const-string/jumbo p0, "onSnapClick ignore click case 1"

    .line 21
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSnapClick(Lcom/android/camera/protocol/protocols/CameraAction;)V
    .locals 1

    .line 22
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    .line 23
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/CameraAction;->onShutterButtonClick(I)Z

    :goto_0
    return-void
.end method

.method public onSnapDragging()V
    .locals 0

    return-void
.end method

.method public onSnapLongPress()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 0

    return-void
.end method

.method public onThumbnailResult([BIII)V
    .locals 0

    return-void
.end method

.method public onTimeFreezeStateChange(I)V
    .locals 0

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 0

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 0

    return-void
.end method

.method public prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 4

    const-string v0, "FragmentCloneProcess"

    if-nez p1, :cond_0

    const-string/jumbo p0, "prepare:mode is null "

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLandScape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideExitDialog()Z

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->initShutterButton(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 10
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    if-nez p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->enableUseGuideMenu(Z)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    .line 24
    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0, v1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, p2, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    .line 31
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepare X "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p1, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    return-void
.end method

.method public processingFinish()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f120037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    return-void
.end method

.method public processingPrepare()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    return-void
.end method

.method public processingStart()V
    .locals 3

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "processingResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->getDurationVideoRecording()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->setSpecifiedDuration(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(I)V
    .locals 2

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eqz v0, :cond_0

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "provideAnimateElement restore ui"

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateUiOnOrientationChanged()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
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
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provideAnimateElement mCurrentMode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mIsPendingShowComposeResult "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FragmentCloneProcess"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->refreshRootViewLayoutParams()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->provideAnimateElement(I)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
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
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore provideRotateItem newDegree "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentCloneProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateUiOnOrientationChanged()V

    return-void
.end method

.method public quit()V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "quit"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-void
.end method

.method public realLandscapeShowFrameLayoutSubView(Landroid/view/View;III)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f070190

    .line 7
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr p4, p3

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sub-int/2addr v0, p4

    .line 10
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/CloneProcess;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public resetToPreview()V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "resetToPreview"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "resetToPreview error, action null"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->onReviewDoneClicked()V

    return-void
.end method

.method public resetToPreview(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    return-void
.end method

.method public resumeFragment()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb9

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneAction;->onFragmentResume()V

    :cond_0
    return-void
.end method

.method public setCameraSnapView(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setTargetUiStyle(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->showBottomPaintItem()V

    return-void
.end method

.method public setDetectedPersonInPreview(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mDetectedPersonInPreview:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    :cond_0
    return-void
.end method

.method public setSlideChangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V
    .locals 0

    return-void
.end method

.method public setSnapButtonEnable(ZZ)V
    .locals 3

    const-string v0, "FragmentCloneProcess"

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mDetectedPersonInPreview:Z

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo p0, "setSnapButtonEnable ignore, is not landScape"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSnapButtonEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_4

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public showAdjustButton()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    const v2, 0x7f070188

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f07018a

    .line 9
    invoke-static {v3}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v3, 0x7f070189

    .line 10
    invoke-static {v3}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showFrameLayoutSubView(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public showBackButton(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FragmentCloneProcess"

    const-string p1, "ignore showBackButton, topAlert is null"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    aput v0, p1, v1

    .line 3
    invoke-interface {p0, v2, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    aput v0, p1, v1

    .line 4
    invoke-interface {p0, v2, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    :goto_0
    return-void
.end method

.method public showCaptureHint()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v0, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    const-string/jumbo v0, "translationX"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0OO;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showExitConfirm(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isProcessing()Z

    move-result v0

    const-string v1, "FragmentCloneProcess"

    if-eqz v0, :cond_1

    const-string p0, "ignore showExitConfirm, is processing"

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showExitConfirm exitToModeList "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f12092e

    if-eqz p1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogMessage:Landroid/widget/TextView;

    const v2, 0x7f120488

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    const v2, 0x7f120487

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogMessage:Landroid/widget/TextView;

    const v2, 0x7f1202c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    const v2, 0x7f12035a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialogCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$3;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showFrameLayoutSubView(Landroid/view/View;III)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->realLandscapeShowFrameLayoutSubView(Landroid/view/View;III)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->fakeLandscapeShowFrameLayoutSubView(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public showPlayButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showResetAndSaveEdit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    const-string v2, "FragmentCloneProcess"

    if-eq v0, v1, :cond_0

    const-string/jumbo p0, "showResetAndSaveEdit ignore, not stop"

    .line 2
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showResetAndSaveEdit"

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideBottomPaintItem()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const v2, 0x7f1202ab

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateOut(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    return-void
.end method

.method public showSaveAndGiveUp(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    return-void
.end method

.method public showSaveAndGiveUp(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    const-string v2, "FragmentCloneProcess"

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    if-eq v0, v1, :cond_0

    const-string/jumbo p0, "showSaveAndGiveUp ignore, not stop or edit"

    .line 2
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveAndGiveUp showSaveButtonAnimation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setVolumeControlStream(I)V

    .line 5
    sget-object v0, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideBottomPaintItem()V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->hideReferenceGradienter()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f110059

    invoke-static {v1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->getCurrentSubjectCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showAdjustButton()V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-nez p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    .line 30
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    return-void
.end method

.method public showStopAndCancel()V
    .locals 2

    const-string v0, "FragmentCloneProcess"

    const-string/jumbo v1, "showFinishAndCancel"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    return-void
.end method

.method public stopCaptureToPreviewResult(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb9

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value_clone_play_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xd5

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "value_film_play"

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object v0

    const-string v1, "FragmentCloneProcess"

    if-nez v0, :cond_2

    const-string/jumbo p0, "stopCaptureToPreviewResult cloneAction is null"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    if-eqz v2, :cond_3

    const-string/jumbo p0, "stopCaptureToPreviewResult ignore, pending show composeResult"

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    sget-object v3, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v2, v3, :cond_4

    const-string/jumbo p0, "stopCaptureToPreviewResult ignore, not capturing"

    .line 9
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v1, "stopCaptureToPreviewResult"

    .line 10
    invoke-static {v1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v1, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    iput-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    const/16 v1, 0x8

    if-nez p1, :cond_5

    .line 12
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneAction;->onStopClicked()V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mIsPendingShowComposeResult:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updatePreviewUI()V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p1, p0}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/CloneProcess;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public updateCaptureHintBackground(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->setGuideToastTextSize(Landroid/widget/TextView;)V

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->setGuideToastBgColor(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public updateCaptureMessage(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    const-string v1, "FragmentCloneProcess"

    if-eqz v0, :cond_0

    const v0, 0x7f1202c0

    if-ne p1, v0, :cond_0

    const-string p0, "ignore updateCaptureMessage, paused"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v2, :cond_1

    const v0, 0x7f1202be

    if-ne p1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ignore updateCaptureMessage, fragment not added"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->isLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateCaptureMessage(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public updateEditPos(FF)V
    .locals 0

    return-void
.end method

.method public updatePlayPos(F)V
    .locals 0

    return-void
.end method

.method public updatePreviewUI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->isBottomVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideBottomPaintItem()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setSnapButtonEnable(ZZ)V

    .line 7
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setProgressBarVisible(Z)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->refreshRootViewLayoutParams()V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p1

    const/4 p2, 0x1

    .line 3
    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/4 v0, 0x2

    .line 7
    div-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x5a

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    int-to-float p1, p1

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 19
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 21
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 22
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 23
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 24
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitDialog:Landroid/view/View;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 25
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mVVShare:Landroid/view/View;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 26
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 27
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mRootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->addViewForGestureRecognize(Landroid/view/ViewGroup;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mBottomActionView:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eqz v3, :cond_1

    const v2, 0x800005

    .line 35
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBottomActionWidth()I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignEnd()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 38
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWide()I

    move-result v2

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v2, v0, [Landroid/view/View;

    .line 40
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v3, v2, p2

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapBottom(I[Landroid/view/View;)V

    new-array v2, v8, [Landroid/view/View;

    .line 41
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object v3, v2, v7

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapTop(I[Landroid/view/View;)V

    .line 42
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p1

    xor-int/2addr p1, p2

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v1, v2, p2

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object p2, v2, v0

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object p2, v2, v7

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object p2, v2, v8

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object p2, v2, v5

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    aput-object p2, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x50

    .line 43
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 48
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v2, v0, [Landroid/view/View;

    .line 50
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v3, v2, p2

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v2, v8, [Landroid/view/View;

    .line 51
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object v3, v2, v7

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v6, [Landroid/view/View;

    .line 52
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v1, p1, p2

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v0, p1, v7

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v0, p1, v8

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [Landroid/view/View;

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v9, v3, v1

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v9, v3, p2

    invoke-interface {p1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->alignSnapLeftByDefault(Landroid/content/Context;[Landroid/view/View;)V

    .line 54
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v8, [Landroid/view/View;

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v9, v3, v1

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v9, v3, p2

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v9, v3, v0

    iget-object v9, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object v9, v3, v7

    invoke-interface {p1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->alignSnapRightByDefault(Landroid/content/Context;[Landroid/view/View;)V

    new-array p1, v6, [Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v2, p1, v1

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v2, p1, p2

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object p2, p1, v7

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object p2, p1, v8

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    aput-object p2, p1, v5

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    aput-object p2, p1, v4

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    :goto_1
    return-void
.end method
