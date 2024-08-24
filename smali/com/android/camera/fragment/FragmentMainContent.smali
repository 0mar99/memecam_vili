.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/MainContentProtocol;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf3

.field public static final TAG:Ljava/lang/String; = "FragmentMainContent"


# instance fields
.field public mActiveIndicator:I

.field public mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

.field public mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mDisplayRectLeftMargin:I

.field public mDisplayRectTopMargin:I

.field public mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field public mHandler:Landroid/os/Handler;

.field public mIsRecording:Z

.field public mIvIdPhotoBox:Landroid/widget/ImageView;

.field public mLastCameraId:I

.field public mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mMaskCover:Landroid/view/View;

.field public mMoreModeMaskView:Landroid/view/View;

.field public mPreviewFrame:Landroid/view/View;

.field public mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field public mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/ShapeBackGroundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    return-object p0
.end method

.method private adjustViewHeight()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    if-eq v2, v3, :cond_2

    .line 5
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    .line 6
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getAIWatermarkScaleSize()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_0

    move p0, v0

    :cond_0
    const/4 v0, 0x4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAIWatermarkScaleSize previewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentMainContent"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x40311173

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p0, v0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getPixelDensity()F

    move-result v0

    div-float/2addr p0, v0

    return p0
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;II)V
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p1, p3}, Lcom/android/camera/ui/FocusIndicator;->showStart(I)V

    :goto_0
    return-void
.end method

.method private updateThemeStyle(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFaceAnimationView()Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mIsValid:Z

    return-void
.end method

.method public synthetic OooO00o(IILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v0

    .line 9
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    int-to-float v2, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, p3

    add-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentWidth(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-ne v0, p2, :cond_0

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/HaloProtocol;->impl2()Lcom/android/camera/protocol/protocols/HaloProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 13
    invoke-interface {p0, p1, p1}, Lcom/android/camera/protocol/protocols/HaloProtocol;->showHalo(ZZ)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getTrackInfo()Lcom/android/camera/statistic/CameraTrackInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->setCameraTrackInfo(Lcom/android/camera/statistic/CameraTrackInfo;)V

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public animBlackCover()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4
    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v5, v1

    int-to-double v7, v4

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v9

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    double-to-int v1, v5

    .line 6
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;

    invoke-direct {v5, p0, v0, v1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;II)V

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(Ljava/util/List;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public clearFocusView(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    :cond_0
    return-void
.end method

.method public clearIndicator(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "not allowed call in this method"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clear()V

    :goto_0
    return-void
.end method

.method public createFaceAnimationView()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFaceBeautyAnimatorPlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 4
    :cond_1
    new-instance v0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v2, 0x7f0a017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v1}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    return-void
.end method

.method public destroyEffectCropView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    return-void
.end method

.method public getActiveIndicator()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return p0
.end method

.method public getFaceAnimationView()Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    return-object p0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object p0

    return-object p0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unexpected type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentMainContent"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getFocusX()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getFocusX()I

    move-result p0

    return p0
.end method

.method public getFocusY()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getFocusY()I

    move-result p0

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method public getHorCoverSize(ZLandroid/graphics/Point;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 7
    iput v1, p2, Landroid/graphics/Point;->y:I

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 8
    :cond_1
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 9
    iput v1, p2, Landroid/graphics/Point;->y:I

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0098

    return p0
.end method

.method public getMaskCoverIsVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVerCoverSize(ZLandroid/graphics/Point;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 6
    :cond_2
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 7
    iput v1, p2, Landroid/graphics/Point;->y:I

    :goto_2
    const/4 p0, 0x1

    return p0

    .line 8
    :cond_3
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 9
    iput v1, p2, Landroid/graphics/Point;->y:I

    const/4 p0, 0x0

    return p0
.end method

.method public getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public hideFaceAnimator()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect(J)V

    :cond_0
    return-void
.end method

.method public initEffectCropView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a021f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a036f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a042d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a00a1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a02d9

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const v0, 0x7f0a028e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    const v0, 0x7f0a047b

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v0, 0x7f0a0478

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    const v0, 0x7f0a0479

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const v0, 0x7f0a047a

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f0a047c

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    const v0, 0x7f0a0431

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trackfocus/TrackFocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    const v0, 0x7f0a004e

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/AfRegionsView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->createFaceAnimationView()V

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    :cond_0
    return-void
.end method

.method public isEffectViewMoved()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result p0

    return p0
.end method

.method public isEffectViewVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isEvAdjusted(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result p0

    return p0
.end method

.method public isFaceExists(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isFaceStable(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p0

    return p0
.end method

.method public isFocusViewMoving()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isFocusViewMoving()Z

    move-result p0

    return p0
.end method

.method public isFocusViewVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndicatorVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public isNeedExposure(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result p0

    return p0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isSplitFocusExposureDown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTrackFocusViewVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->reInit()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackFocusView;->clear()V

    .line 8
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd5

    if-ne p1, v0, :cond_3

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateFocusMode(Ljava/lang/String;)V

    .line 12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->animBlackCover()V

    .line 14
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0

    :cond_5
    const-string p0, "FragmentMainContent"

    const-string/jumbo p1, "notifyAfterFrameAvailable: FaceView reset failed!"

    .line 16
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-ne p2, v1, :cond_1

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v0, 0x7f1200a6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v0, 0x7f12006e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v0, 0x7f120024

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    const/4 v2, 0x2

    if-ne p2, v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    if-eq p1, v2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 17
    invoke-static {}, Lcom/android/camera/Util;->updateCoveredBlackView()V

    goto :goto_2

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    :goto_2
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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->notifyThemeChanged(ILjava/util/List;I)V

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateThemeStyle(II)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->setMaskCoverVisibility(Z)Z

    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    return-void
.end method

.method public onEffectViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000oOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000oOoO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFaceAnimationView()Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFaceAnimationView()Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public processingFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->processingFinish()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    return-void
.end method

.method public processingStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->processingStart()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v1, p3}, Lcom/android/camera/fragment/FragmentMainContent;->updateThemeStyle(II)V

    :cond_1
    const/16 v2, 0xfe

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    move v1, v3

    .line 4
    :cond_2
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    invoke-virtual {p0, v1, p2, v4}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentMainContent;->setIdPhotoBoxVisible(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AfRegionsView;->clear()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/TrackFocusView;->clear()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/camera/trackfocus/TrackFocusView;->setSkipDraw(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOOO;

    invoke-direct {v5, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOOO;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    if-ne p1, v2, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 16
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getLeftMaskWidth()I

    move-result v5

    .line 17
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/16 v7, 0x8

    if-eqz v6, :cond_5

    .line 18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_9

    .line 19
    :cond_5
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    move v6, v3

    goto :goto_1

    :cond_6
    move v6, v4

    :goto_1
    if-nez v6, :cond_7

    if-nez v2, :cond_7

    if-ne p3, v7, :cond_9

    .line 21
    :cond_7
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_8

    move v8, v3

    goto :goto_2

    :cond_8
    move v8, v4

    :goto_2
    invoke-virtual {v6, v5, p2, v8}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 22
    :cond_9
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getRightMaskWidth()I

    move-result v5

    .line 23
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    .line 24
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_e

    .line 25
    :cond_a
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v6

    if-le v5, v6, :cond_b

    move v6, v3

    goto :goto_3

    :cond_b
    move v6, v4

    :goto_3
    if-nez v6, :cond_c

    if-nez v2, :cond_c

    if-ne p3, v7, :cond_e

    .line 27
    :cond_c
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_d

    move v8, v3

    goto :goto_4

    :cond_d
    move v8, v4

    :goto_4
    invoke-virtual {v6, v5, p2, v8}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    .line 28
    :cond_e
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result v5

    .line 29
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_f

    .line 30
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_13

    .line 31
    :cond_f
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 32
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v6}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v6

    if-le v5, v6, :cond_10

    move v6, v3

    goto :goto_5

    :cond_10
    move v6, v4

    :goto_5
    if-nez v6, :cond_11

    if-nez v2, :cond_11

    if-ne p3, v7, :cond_13

    .line 33
    :cond_11
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_12

    move v8, v3

    goto :goto_6

    :cond_12
    move v8, v4

    :goto_6
    invoke-virtual {v6, v5, p2, v8}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 34
    :cond_13
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    move-result v1

    .line 35
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_14

    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_19

    .line 37
    :cond_14
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0xcc

    if-ne p1, v5, :cond_15

    if-ne v0, v5, :cond_15

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result p1

    if-nez p1, :cond_15

    .line 39
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0, v1, p2, v4}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    return-void

    .line 40
    :cond_15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result p1

    if-le v1, p1, :cond_16

    move p1, v3

    goto :goto_7

    :cond_16
    move p1, v4

    :goto_7
    if-nez p1, :cond_17

    if-nez v2, :cond_17

    if-ne p3, v7, :cond_19

    .line 41
    :cond_17
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_18

    goto :goto_8

    :cond_18
    move v3, v4

    :goto_8
    invoke-virtual {p0, v1, p2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    .line 42
    invoke-static {}, Lcom/android/camera/protocol/protocols/HaloProtocol;->impl2()Lcom/android/camera/protocol/protocols/HaloProtocol;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 43
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/HaloProtocol;->updateHaloViewSize()V

    :cond_19
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v1, p2, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/AfRegionsView;->setOrientation(IZ)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p2, v2}, Lcom/android/camera/trackfocus/TrackFocusView;->setOrientation(IZ)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reShowFaceRect()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    :cond_0
    return-void
.end method

.method public recreateFaceAnimationView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFaceAnimationView()Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO00o;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooOO0;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    return-void
.end method

.method public setActiveIndicator(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO0;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/AfRegionsView;->setAfRegionRect([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AfRegionsView;->setCameraDisplayOrientation(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->setCameraDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    :goto_0
    return-void
.end method

.method public setEvAdjustVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->setEVVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    return-void
.end method

.method public setEvMappingValue(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->setEvMappingValue(F)V

    return-void
.end method

.method public setFaces(I[Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    array-length v0, p2

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFaceBeautyAnimatorPlayed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p2, p4, p3, v2}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->updateFaceInfo([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-virtual {p3}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceAnimationView:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->setVisibility(I)V

    :cond_2
    :goto_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    return v1

    .line 9
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p3, 0xa6

    if-eq p1, p3, :cond_6

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isFocusViewVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 12
    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    const-string p0, "FragmentMainContent"

    const-string/jumbo p1, "panorama mode or isIntentIDPhoto, return false"

    .line 13
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setFocusViewPosition(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    :cond_0
    return-void
.end method

.method public setIdPhotoBoxVisible(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO0O;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO0O;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMaskCoverVisibility(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPinFace(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setPinFace(Z)V

    :cond_0
    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    :cond_0
    return-void
.end method

.method public setSkipDrawTrackFocus(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->setSkipDraw(Z)V

    :cond_0
    return-void
.end method

.method public showIndicator(III)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;II)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;II)V

    :goto_0
    return-void
.end method

.method public startEvShowAgainAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->startEvShowAgainAnimation()V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public updateContentDescription()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    const v1, 0x7f12006e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-lez p5, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    if-eqz p4, :cond_3

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->resume()V

    :cond_3
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateMaskCover(ZI)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    move-result p1

    if-le p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p1, Lmiuix/animation/controller/AnimState;

    sget-object p2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 6
    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 7
    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 8
    new-instance p2, Lmiuix/animation/controller/AnimState;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 9
    invoke-virtual {p2, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    new-array v2, v0, [Landroid/view/View;

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    aput-object p0, v2, v1

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v2, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x6

    new-array v0, v0, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v0, v1

    .line 13
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v2, v1

    .line 14
    invoke-interface {p0, p1, p2, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    new-array p1, v0, [Landroid/view/View;

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMaskCover:Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-void
.end method

.method public updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/trackfocus/TrackFocusView;->setTrackResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    return-void
.end method
