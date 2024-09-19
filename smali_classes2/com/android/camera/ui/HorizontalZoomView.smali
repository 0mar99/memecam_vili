.class public Lcom/android/camera/ui/HorizontalZoomView;
.super Lcom/android/camera/ui/BaseHorizontalZoomView;
.source "HorizontalZoomView.java"


# static fields
.field public static final DEFAULT_TIME:I = 0xc8

.field public static final DIS_USED:I = -0x64

.field public static final NONE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "HorizontalZoomView"

.field public static final TOUCH_SCROLL_THRESHOLD:I = 0xa


# instance fields
.field public mAnnounceRunnable:Ljava/lang/Runnable;

.field public mCenterYBottomMargin:F

.field public mCurrentAnimateFrom:I

.field public mCurrentInterpolation:F

.field public mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

.field public mDrawEndX:F

.field public mDrawStartX:F

.field public mInitSelectIndex:I

.field public mInitSelectPointX:F

.field public mIsAdsorb:Z

.field public mIsCurrentAnimateFromDown:Z

.field public mIsEffectInProcess:Z

.field public mIsRLT:Z

.field public mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

.field public mPositiveSpline:Landroid/util/Spline;

.field public mScrollAnimator:Landroid/animation/ValueAnimator;

.field public mSelectPointX:F

.field public mSpline:Landroid/util/Spline;

.field public mTotalWidth:F

.field public mTouchDownX:F

.field public mTouchStartTime:F

.field public mTouchStartX:F

.field public mTouchStartY:F

.field public mTouchState:I

.field public mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

.field public mTouchX:F

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public mZoomSliderViewInitX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/HorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 4
    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/high16 v0, -0x3d380000    # -100.0f

    .line 6
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectPointX:F

    .line 7
    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mZoomSliderViewInitX:I

    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 10
    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    sget-object v0, Lcom/android/camera/R$styleable;->BaseHorizontalZoomView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCenterYBottomMargin:F

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/HorizontalZoomView;)Landroid/util/Spline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mPositiveSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/HorizontalZoomView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/HorizontalZoomView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/HorizontalZoomView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/HorizontalZoomView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/HorizontalZoomView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/HorizontalZoomView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setAnnounceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private indexToPointX(I)F
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 3
    :goto_1
    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    if-ne v3, p1, :cond_2

    return v5

    .line 4
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v6, :cond_7

    .line 5
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_7

    mul-int v6, v1, v4

    add-int/2addr v6, v3

    if-eqz v0, :cond_4

    if-le v6, p1, :cond_3

    .line 6
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v6

    goto :goto_3

    :cond_3
    sub-int v7, p1, v6

    if-ltz v7, :cond_6

    if-gt v7, v2, :cond_6

    .line 7
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result p0

    goto :goto_4

    :cond_4
    if-ge v6, p1, :cond_5

    .line 8
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v6

    :goto_3
    add-float/2addr v5, v6

    goto :goto_5

    :cond_5
    sub-int v7, v6, p1

    if-ltz v7, :cond_6

    if-gt v7, v2, :cond_6

    .line 9
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result p0

    :goto_4
    sub-int/2addr v2, v7

    int-to-float p1, v2

    mul-float/2addr p0, p1

    add-float/2addr v5, p0

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return v5
.end method

.method private mapIndexToValue(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private mapPositionToValue(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setPointXToEffectiveRang(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private pointXToIndex(F)F
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, -0x1

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    cmpg-float v5, p1, v0

    if-gtz v5, :cond_3

    int-to-float p0, v3

    return p0

    .line 5
    :cond_3
    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    int-to-float p0, v4

    return p0

    .line 6
    :cond_4
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 7
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    mul-int v4, v1, v2

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x1

    mul-int v7, v1, v2

    add-int/2addr v7, v3

    .line 8
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v8

    add-float/2addr v0, v8

    sub-float v8, v0, p1

    cmpl-float v9, v8, v5

    if-ltz v9, :cond_6

    .line 9
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v9

    div-float/2addr v9, v6

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_6

    int-to-float p1, v4

    int-to-float v0, v2

    mul-float/2addr v0, v8

    .line 10
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result p0

    div-float/2addr v0, p0

    sub-float/2addr p1, v0

    return p1

    :cond_6
    cmpg-float v9, v8, v5

    if-gez v9, :cond_5

    neg-float v8, v8

    .line 11
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v9

    div-float/2addr v9, v6

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_5

    int-to-float p1, v4

    int-to-float v0, v2

    mul-float/2addr v0, v8

    .line 12
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result p0

    div-float/2addr v0, p0

    add-float/2addr p1, v0

    return p1

    :cond_7
    return v5
.end method

.method private selectByIndex(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;FI)V

    :cond_0
    return-void
.end method

.method private selectByPointX(FI)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setPointXToEffectiveRang(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;FI)V

    :cond_0
    return-void
.end method

.method private setAnnounceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPointXToEffectiveRang(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    .line 2
    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result p0

    div-float/2addr p0, v2

    sub-float/2addr v1, p0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method private startScaleAnimator(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2
    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsCurrentAnimateFromDown:Z

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_2
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsCurrentAnimateFromDown:Z

    new-array v1, v1, [F

    if-eqz p1, :cond_3

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_3
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v2, 0xc8

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x190

    .line 8
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/HorizontalZoomView$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/HorizontalZoomView$5;-><init>(Lcom/android/camera/ui/HorizontalZoomView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/HorizontalZoomView$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/ui/HorizontalZoomView$6;-><init>(Lcom/android/camera/ui/HorizontalZoomView;IZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

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

.method private startScrollAnimator(FII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(FI)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget-object p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    .line 9
    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    aput v2, p3, v0

    aput p1, p3, v1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p3, :cond_3

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    :goto_0
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/HorizontalZoomView$3;

    invoke-direct {p3, p0}, Lcom/android/camera/ui/HorizontalZoomView$3;-><init>(Lcom/android/camera/ui/HorizontalZoomView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/HorizontalZoomView$4;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/ui/HorizontalZoomView$4;-><init>(Lcom/android/camera/ui/HorizontalZoomView;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startScrollAnimatorByIndex(FI)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(FI)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    :cond_0
    const/16 v0, 0xc8

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result v5

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->mapIndexToValue(F)F

    move-result v6

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v1, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sub-float v2, v1, v0

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "animator_duration"

    .line 10
    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    move v7, v3

    move v0, v4

    move v3, v5

    move v4, v6

    goto :goto_0

    :cond_2
    move v3, v0

    move v4, v1

    move v0, v2

    :goto_0
    move-object v1, p0

    move v2, v0

    move v8, p2

    .line 11
    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ui/HorizontalZoomView;->startValueAnimator(IFFFFZI)V

    .line 12
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FII)V

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    sub-float v1, v0, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScaleAnimator(Z)V

    return p1
.end method

.method private startValueAnimator(IFFFFZI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 3
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/HorizontalZoomView$1;

    move-object v0, p2

    move-object v1, p0

    move v2, p6

    move v3, p4

    move v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/HorizontalZoomView$1;-><init>(Lcom/android/camera/ui/HorizontalZoomView;ZFFI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/HorizontalZoomView$2;

    invoke-direct {p2, p0, p5, p7}, Lcom/android/camera/ui/HorizontalZoomView$2;-><init>(Lcom/android/camera/ui/HorizontalZoomView;FI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toUpdateView(FZI)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->setPointXToEffectiveRang(F)F

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->isSingleValueLine(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    int-to-float p1, v0

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(FI)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(FI)V

    .line 7
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->startScaleAnimator(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p0, :cond_7

    .line 9
    invoke-interface {p1, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    goto/16 :goto_5

    .line 10
    :cond_1
    iget-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez p2, :cond_4

    if-eqz v1, :cond_2

    int-to-float p1, v0

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(FI)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(FI)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    :cond_3
    const/16 p1, 0xc8

    goto :goto_4

    .line 15
    :cond_4
    iget p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result v7

    if-eqz v1, :cond_5

    int-to-float p1, v0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->mapIndexToValue(F)F

    move-result p1

    goto :goto_2

    .line 17
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result p1

    :goto_2
    move v8, p1

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {p1, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {p2, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result p2

    sub-float v1, p2, p1

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const-string v3, "animator_duration"

    .line 21
    invoke-static {v3, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    move v9, v2

    move p1, v3

    move v5, v7

    move v6, v8

    goto :goto_3

    :cond_6
    move v5, p1

    move v6, p2

    move p1, v1

    move v9, v4

    :goto_3
    move-object v3, p0

    move v4, p1

    move v10, p3

    .line 22
    invoke-direct/range {v3 .. v10}, Lcom/android/camera/ui/HorizontalZoomView;->startValueAnimator(IFFFFZI)V

    .line 23
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p2

    invoke-direct {p0, p2, p1, p3}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FII)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/ui/HorizontalZoomView$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/HorizontalZoomView$7;-><init>(Lcom/android/camera/ui/HorizontalZoomView;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancelAnimators()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    return-void
.end method

.method public getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    return-object p0
.end method

.method public getItemGap(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureGap(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemWidth(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSelectPointX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    return-void
.end method

.method public isIdle()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    const/16 v8, -0x64

    const/4 v9, -0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-ne v1, v9, :cond_0

    .line 2
    iput v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v1, v10

    .line 4
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 v12, 0x0

    cmpl-float v1, v1, v12

    if-nez v1, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    .line 7
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 8
    :cond_2
    iget-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v13

    move v15, v2

    goto :goto_0

    :cond_3
    move v15, v14

    :goto_0
    if-eqz v1, :cond_4

    move v6, v14

    goto :goto_1

    .line 10
    :cond_4
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v13

    move v6, v2

    :goto_1
    if-eqz v1, :cond_5

    move/from16 v16, v9

    goto :goto_2

    :cond_5
    move/from16 v16, v13

    .line 11
    :goto_2
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-virtual {v0, v15}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v2

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    .line 12
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-eq v2, v8, :cond_9

    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_9

    move v10, v14

    .line 13
    :goto_3
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_7

    mul-int v2, v10, v16

    add-int/2addr v2, v15

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v3

    add-float v12, v1, v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-ne v3, v2, :cond_6

    move v4, v13

    goto :goto_4

    :cond_6
    move v4, v14

    :goto_4
    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v10, v10, 0x1

    move v1, v12

    goto :goto_3

    .line 19
    :cond_7
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-eq v1, v9, :cond_8

    .line 20
    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 21
    iput v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    :cond_8
    return-void

    .line 22
    :cond_9
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectPointX:F

    const/high16 v3, -0x3d380000    # -100.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_a

    .line 23
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v2, v14, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 24
    iput v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectPointX:F

    .line 25
    :cond_a
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setPointXToEffectiveRang(F)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    move v3, v13

    move v2, v14

    .line 26
    :goto_5
    iget-object v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_11

    mul-int v4, v2, v16

    add-int/2addr v4, v15

    add-int/lit8 v8, v2, 0x1

    mul-int v2, v8, v16

    add-int/2addr v2, v15

    .line 27
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v5

    add-float/2addr v5, v1

    .line 28
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    sub-float v13, v5, v1

    if-eqz v3, :cond_f

    .line 29
    iget v14, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-virtual {v0, v15}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v17

    div-float v17, v17, v10

    add-float v14, v14, v17

    cmpg-float v1, v1, v14

    if-gtz v1, :cond_b

    move v13, v15

    :goto_6
    const/4 v9, 0x0

    goto :goto_7

    .line 30
    :cond_b
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iget v14, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v17

    div-float v17, v17, v10

    sub-float v14, v14, v17

    cmpl-float v1, v1, v14

    if-ltz v1, :cond_c

    move v13, v6

    goto :goto_6

    :cond_c
    cmpg-float v1, v13, v12

    if-gtz v1, :cond_d

    neg-float v1, v13

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v2

    div-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-lez v1, :cond_e

    :cond_d
    cmpl-float v1, v13, v12

    if-ltz v1, :cond_f

    .line 32
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->getItemGap(I)F

    move-result v1

    div-float/2addr v1, v10

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_f

    :cond_e
    move v13, v4

    goto :goto_6

    :cond_f
    move v13, v9

    move v9, v3

    .line 33
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    invoke-virtual {v7, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v9, :cond_10

    if-ne v13, v4, :cond_10

    const/4 v14, 0x1

    goto :goto_8

    :cond_10
    const/4 v14, 0x0

    :goto_8
    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move/from16 v17, v2

    move v2, v4

    move/from16 v18, v3

    move-object/from16 v3, p1

    move v4, v14

    move v14, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v8

    move v3, v9

    move v9, v13

    move v1, v14

    move/from16 v6, v18

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_11
    if-eqz v3, :cond_12

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {v7, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, -0x1

    iget v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3
    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 7
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 8
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p0

    int-to-float p0, p0

    int-to-float v1, v1

    .line 11
    invoke-static {v0, v2, p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->updateSelectColor()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalZoomView;->getSelectPointX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mZoomSliderViewInitX:I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mZoomSliderViewInitX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mZoomSliderViewInitX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mZoomSliderViewInitX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    sub-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    iput v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchDownX:F

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    const/4 v4, 0x3

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez v2, :cond_3

    .line 5
    invoke-interface {v0, v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    .line 6
    :cond_3
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    goto/16 :goto_2

    .line 7
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v3, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 9
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_f

    .line 10
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    goto :goto_0

    .line 12
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 13
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(FI)V

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 16
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    sub-float/2addr v0, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-eq v0, v2, :cond_8

    .line 17
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    return v3

    .line 18
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_9

    .line 19
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 20
    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->toUpdateView(FZI)V

    goto :goto_1

    .line 21
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0, v1, v4}, Lcom/android/camera/ui/HorizontalZoomView;->toUpdateView(FZI)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez v2, :cond_a

    .line 23
    invoke-interface {v0, v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    .line 24
    :cond_a
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    goto :goto_2

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    .line 32
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_e

    .line 33
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->startScaleAnimator(Z)V

    goto :goto_2

    .line 34
    :cond_e
    iput v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 35
    :cond_f
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    return v3
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 3
    :cond_1
    iget p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/16 v1, 0x2000

    if-ne p1, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_3

    add-int/2addr p2, v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    :cond_3
    :goto_0
    return v0
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz p1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 9
    :cond_1
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsEffectInProcess = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HorizontalZoomView"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZLandroid/util/Spline;Landroid/util/Spline;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    .line 2
    iput-object p5, p0, Lcom/android/camera/ui/HorizontalZoomView;->mPositiveSpline:Landroid/util/Spline;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    return-void
.end method

.method public setIndexButtonSelection(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimatorByIndex(FI)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setRotate(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelection(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectPointX:F

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    :goto_0
    const/16 p1, -0x64

    .line 5
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSelection   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HorizontalZoomView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalZoomView;->cancelAnimators()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 16
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
