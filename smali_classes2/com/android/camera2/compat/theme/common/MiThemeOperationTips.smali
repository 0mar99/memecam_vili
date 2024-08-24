.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;
.super Ljava/lang/Object;
.source "MiThemeOperationTips.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customStubViewTransition()Landroid/animation/LayoutTransition;
    .locals 7

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, p0, [F

    .line 3
    fill-array-data v3, :array_1

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    new-instance v2, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0x0

    .line 6
    invoke-virtual {v2, p0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v5, 0x12c

    .line 7
    invoke-virtual {v2, p0, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8
    invoke-virtual {v2, p0, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 p0, 0x3

    .line 9
    invoke-virtual {v2, p0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v3, 0xc8

    .line 10
    invoke-virtual {v2, p0, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 11
    invoke-virtual {v2, p0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public customToastLayoutTransition(Landroid/animation/AnimatorListenerAdapter;)Landroid/animation/LayoutTransition;
    .locals 6

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, p0, [F

    .line 3
    fill-array-data v3, :array_1

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    new-instance v2, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v2, 0x0

    .line 7
    invoke-virtual {p1, p0, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v4, 0x12c

    .line 8
    invoke-virtual {p1, p0, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 p0, 0x3

    .line 10
    invoke-virtual {p1, p0, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v2, 0xc8

    .line 11
    invoke-virtual {p1, p0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 12
    invoke-virtual {p1, p0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAiAudioZoomIndicatorColor()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getBottomTipsBg()I
    .locals 0

    const p0, 0x7f08012b

    return p0
.end method

.method public getLiveMusicBackgroundDrawable()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRecommendTopTipLayout()I
    .locals 0

    const p0, 0x7f0d017a

    return p0
.end method

.method public getZoomTipsAnimationEndValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p0, 0x422c0000    # 43.0f

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p0

    return p0
.end method

.method public getZoomTipsAnimationStartValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p0, 0x428c0000    # 70.0f

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p0

    return p0
.end method

.method public getZoomTipsValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p0, 0x422c0000    # 43.0f

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p0

    return p0
.end method

.method public isNormalThemeWhenYellowTintColor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setGuideToastBgColor(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f080156

    goto :goto_0

    :cond_0
    const p0, 0x7f080154

    .line 1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setGuideToastTextSize(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
