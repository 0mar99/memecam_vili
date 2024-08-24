.class public Lcom/android/camera/fragment/TipPresentation;
.super Landroid/app/Presentation;
.source "TipPresentation.java"


# instance fields
.field public lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public mContext:Landroid/content/Context;

.field public mExitView:Landroid/widget/FrameLayout;

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x300

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f110032

    goto :goto_0

    :cond_0
    const p2, 0x7f110033

    .line 7
    :goto_0
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;I)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooO0o;

    invoke-virtual {p2, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mExitView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/TipPresentation;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public hideFlatSelfieAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooooo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooooo;-><init>(Lcom/android/camera/fragment/TipPresentation;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0037

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070731

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0a0167

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mExitView:Landroid/widget/FrameLayout;

    .line 7
    new-instance v1, Lcom/android/camera/fragment/TipPresentation$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/TipPresentation$1;-><init>(Lcom/android/camera/fragment/TipPresentation;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03f6

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1203fb

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0269

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/TipPresentation;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v0, Lcom/android/camera/fragment/TipPresentation$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/TipPresentation$2;-><init>(Lcom/android/camera/fragment/TipPresentation;)V

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/TipPresentation;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO0()V

    return-void
.end method
