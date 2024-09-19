.class public Lcom/android/camera/fragment/FragmentWideSelfie;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentWideSelfie.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/WideSelfieProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xffe

.field public static final TAG:Ljava/lang/String; = "WideSelfie"


# instance fields
.field public mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIsShooting:Z

.field public mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

.field public mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field public mStillPreviewHeight:I

.field public mStillPreviewLayout:Landroid/widget/RelativeLayout;

.field public mStillPreviewRender:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

.field public mStillPreviewWidth:I

.field public mThumbBgHeight:I

.field public mThumbBgHeightVertical:I

.field public mThumbBgTopMargin:I

.field public mThumbBgTopMarginVertical:I

.field public mThumbBgWidth:I

.field public mThumbBgWidthVertical:I

.field public mThumbNailBackground:Landroid/view/ViewGroup;

.field public mThumbViewHeight:I

.field public mThumbViewHeightVertical:I

.field public mThumbViewTopMargin:I

.field public mThumbViewTopMarginVertical:I

.field public mThumbViewWidth:I

.field public mThumbViewWidthVertical:I

.field public mUseHint:Landroid/widget/TextView;

.field public mUseHintLeft:Landroid/widget/TextView;

.field public mUseHintRight:Landroid/widget/TextView;

.field public mViewRoot:Landroid/view/View;

.field public volatile mWaitingFirstFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mWaitingFirstFrame:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/android/camera/ui/GLTextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/FragmentWideSelfie;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mWaitingFirstFrame:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/FragmentWideSelfie;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mWaitingFirstFrame:Z

    return p1
.end method

.method private showSmallPreview(Z)V
    .locals 2

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "showSmallPreview"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getModeTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/wideselfie/DrawImageView;->setBorderColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getModeTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->setPaintColor(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mWaitingFirstFrame:Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method private updateGuideVisibility()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateProgressImageViewLayout(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewWidthVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewHeightVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewTopMarginVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewWidth:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewHeight:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewTopMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateStillPreviewLayout(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMarginVertical:I

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeightVertical:I

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMargin:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private updateThumbnailBackgroundLayout(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbNailBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgWidthVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeightVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMarginVertical:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgWidth:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeight:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 11
    iget p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    const/16 p1, 0xe

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbNailBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private updateUiLayout(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHint:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/wideselfie/DrawImageView;->setOrientation(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    const-string v1, "WideSelfie"

    if-eqz v0, :cond_3

    const-string/jumbo v0, "updateUiLayout LandScape"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateThumbnailBackgroundLayout(Z)V

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateProgressImageViewLayout(Z)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateStillPreviewLayout(Z)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "updateUiLayout Portrait"

    .line 15
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateThumbnailBackgroundLayout(Z)V

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateProgressImageViewLayout(Z)V

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateStillPreviewLayout(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffe

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d01a6

    return p0
.end method

.method public initPreviewLayout(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 2
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const-string v0, "WideSelfie"

    const-string v1, "initView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a050a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHint:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a050b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a050c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a0505

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a0506

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/wideselfie/DrawImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a0507

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a0508

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const v1, 0x7f0a0509

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbNailBackground:Landroid/view/ViewGroup;

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewWidth:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewHeight:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgWidth:I

    iget v4, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeightVertical:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/camera/wideselfie/DrawImageView;->setParams(IIII)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie;Lcom/android/camera/fragment/FragmentWideSelfie$1;)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Ooooo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Ooooo0o;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 23
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateThumbnailBackgroundLayout(Z)V

    .line 24
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateProgressImageViewLayout(Z)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->showSmallPreview(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/wideselfie/WideSelfieConfig;->init(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewWidth:I

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewHeight:I

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgWidth:I

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeight:I

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgTopMargin()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMargin:I

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgWidthVertical()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgWidthVertical:I

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgHeightVertical()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgHeightVertical:I

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgTopMarginVertical()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbBgTopMarginVertical:I

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewWidth:I

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewHeight:I

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewTopMargin()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewTopMargin:I

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewWidthVertical()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewWidthVertical:I

    .line 16
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewHeightVertical()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewHeightVertical:I

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbViewTopMarginVertical()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbViewTopMarginVertical:I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

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

    const/16 p3, 0xb0

    if-eq p1, p3, :cond_0

    const/4 p1, -0x1

    .line 2
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mViewRoot:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_0
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
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateGuideVisibility()V

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mIsShooting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateUiLayout(Z)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetShootUI()V
    .locals 3

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "resetShootUI"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mIsShooting:Z

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentWideSelfie;->updateUiLayout(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f120a31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShootingUI()V
    .locals 3

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "setShootingUI"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mIsShooting:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/camera/wideselfie/DrawImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mGuideImage:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/camera/fragment/FragmentWideSelfie$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentWideSelfie$1;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateHintText(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f120a37

    const v1, 0x7f120a36

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    const v0, 0x7f120a34

    const v1, 0x7f120a35

    if-ne p1, v1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    move p1, v1

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mUseHintLeft:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    return-void
.end method

.method public updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mIsShooting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mStillPreviewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "updatePreviewBitmap: set stillPreviewLayout gone"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mProgressImageView:Lcom/android/camera/wideselfie/DrawImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/wideselfie/DrawImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateThumbBackgroudLayout(ZZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbNailBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr p1, p3

    .line 3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz p2, :cond_2

    .line 4
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 5
    :cond_0
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v1, p1, p3

    .line 6
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    const/16 p1, 0xe

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 10
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie;->mThumbNailBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
