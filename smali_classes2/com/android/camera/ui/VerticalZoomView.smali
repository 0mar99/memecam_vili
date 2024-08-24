.class public Lcom/android/camera/ui/VerticalZoomView;
.super Lcom/android/camera/ui/BaseHorizontalZoomView;
.source "VerticalZoomView.java"


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

.field public mDrawEndY:F

.field public mDrawStartY:F

.field public mInitSelectIndex:I

.field public mInitSelectPointY:F

.field public mIsAdsorb:Z

.field public mIsCurrentAnimateFromDown:Z

.field public mIsEffectInProcess:Z

.field public mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

.field public mPositiveSpline:Landroid/util/Spline;

.field public mScrollAnimator:Landroid/animation/ValueAnimator;

.field public mSelectPointY:F

.field public mSpline:Landroid/util/Spline;

.field public mTotalHeight:F

.field public mTouchDownY:F

.field public mTouchStartTime:F

.field public mTouchStartX:F

.field public mTouchStartY:F

.field public mTouchState:I

.field public mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

.field public mTouchY:F

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public mZoomSliderViewInitY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/VerticalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/VerticalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 4
    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawEndY:F

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    const/high16 v0, -0x3d380000    # -100.0f

    .line 6
    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectPointY:F

    .line 7
    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mZoomSliderViewInitY:I

    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    .line 10
    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

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

    iput p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mCenterYBottomMargin:F

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/VerticalZoomView;)Landroid/util/Spline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mPositiveSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/VerticalZoomView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/VerticalZoomView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/VerticalZoomView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/VerticalZoomView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->setAnnounceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getSelectPointY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    return p0
.end method

.method private indexToPointY(I)F
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_3

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    mul-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    if-ge v3, p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_1

    :cond_1
    sub-int v4, v3, p1

    if-ltz v4, :cond_2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result p0

    sub-int/2addr v5, v4

    int-to-float p1, v5

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private mapIndexToValue(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

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
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->setPointYToEffectiveRang(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->pointYToIndex(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private pointYToIndex(F)F
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    cmpg-float v3, p1, v1

    const/4 v5, 0x0

    if-gtz v3, :cond_0

    return v5

    .line 3
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawEndY:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v6

    div-float/2addr v6, v4

    sub-float/2addr v3, v6

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    int-to-float p0, v0

    return p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_4

    move v0, v2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    mul-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v6, v2

    .line 6
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v7

    add-float/2addr v1, v7

    sub-float v7, v1, p1

    cmpl-float v8, v7, v5

    const/high16 v9, 0x3f800000    # 1.0f

    if-ltz v8, :cond_3

    .line 7
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v8

    div-float/2addr v8, v4

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_3

    int-to-float p1, v3

    mul-float/2addr v7, v9

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result p0

    div-float/2addr v7, p0

    sub-float/2addr p1, v7

    return p1

    :cond_3
    cmpg-float v8, v7, v5

    if-gez v8, :cond_2

    neg-float v7, v7

    .line 9
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v8

    div-float/2addr v8, v4

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_2

    int-to-float p1, v3

    mul-float/2addr v7, v9

    .line 10
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result p0

    div-float/2addr v7, p0

    add-float/2addr p1, v7

    return p1

    :cond_4
    return v5
.end method

.method private selectByIndex(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;FI)V

    :cond_0
    return-void
.end method

.method private selectByPointY(FI)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->setPointYToEffectiveRang(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->pointYToIndex(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

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

.method private setPointYToEffectiveRang(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawEndY:F

    iget-object v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    .line 2
    invoke-virtual {v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

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
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2
    iget v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsCurrentAnimateFromDown:Z

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_2
    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsCurrentAnimateFromDown:Z

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
    iput-object v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

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
    iget-object v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/VerticalZoomView$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/VerticalZoomView$5;-><init>(Lcom/android/camera/ui/VerticalZoomView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/VerticalZoomView$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/ui/VerticalZoomView$6;-><init>(Lcom/android/camera/ui/VerticalZoomView;IZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

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
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->selectByPointY(FI)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget-object p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    .line 9
    iget v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    aput v2, p3, v0

    aput p1, p3, v1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

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
    iget-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/VerticalZoomView$3;

    invoke-direct {p3, p0}, Lcom/android/camera/ui/VerticalZoomView$3;-><init>(Lcom/android/camera/ui/VerticalZoomView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/VerticalZoomView$4;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/ui/VerticalZoomView$4;-><init>(Lcom/android/camera/ui/VerticalZoomView;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startScrollAnimatorByIndex(FI)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/VerticalZoomView;->selectByIndex(FI)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    :cond_0
    const/16 v0, 0xc8

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/VerticalZoomView;->mapPositionToValue(F)F

    move-result v5

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->mapIndexToValue(F)F

    move-result v6

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSpline:Landroid/util/Spline;

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
    invoke-direct/range {v1 .. v8}, Lcom/android/camera/ui/VerticalZoomView;->startValueAnimator(IFFFFZI)V

    .line 12
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/ui/VerticalZoomView;->startScrollAnimator(FII)V

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
    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartX:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartY:F

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
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->startScaleAnimator(Z)V

    return p1
.end method

.method private startValueAnimator(IFFFFZI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

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

    iput-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/VerticalZoomView$1;

    move-object v0, p2

    move-object v1, p0

    move v2, p6

    move v3, p4

    move v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/VerticalZoomView$1;-><init>(Lcom/android/camera/ui/VerticalZoomView;ZFFI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/VerticalZoomView$2;

    invoke-direct {p2, p0, p5, p7}, Lcom/android/camera/ui/VerticalZoomView$2;-><init>(Lcom/android/camera/ui/VerticalZoomView;FI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toUpdateView(FZI)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->setPointYToEffectiveRang(F)F

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->pointYToIndex(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->isSingleValueLine(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    int-to-float p1, v0

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->selectByIndex(FI)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->selectByPointY(FI)V

    .line 7
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/ui/VerticalZoomView;->startScaleAnimator(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-eqz p0, :cond_7

    .line 9
    invoke-interface {p1, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    goto/16 :goto_5

    .line 10
    :cond_1
    iget-boolean p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-nez p2, :cond_4

    if-eqz v1, :cond_2

    int-to-float p1, v0

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->selectByIndex(FI)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->selectByPointY(FI)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    :cond_3
    const/16 p1, 0xc8

    goto :goto_4

    .line 15
    :cond_4
    iget p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {p0, p2}, Lcom/android/camera/ui/VerticalZoomView;->mapPositionToValue(F)F

    move-result v7

    if-eqz v1, :cond_5

    int-to-float p1, v0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->mapIndexToValue(F)F

    move-result p1

    goto :goto_2

    .line 17
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->mapPositionToValue(F)F

    move-result p1

    :goto_2
    move v8, p1

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {p1, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mSpline:Landroid/util/Spline;

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
    invoke-direct/range {v3 .. v10}, Lcom/android/camera/ui/VerticalZoomView;->startValueAnimator(IFFFFZI)V

    .line 23
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result p2

    invoke-direct {p0, p2, p1, p3}, Lcom/android/camera/ui/VerticalZoomView;->startScrollAnimator(FII)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/ui/VerticalZoomView$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/VerticalZoomView$7;-><init>(Lcom/android/camera/ui/VerticalZoomView;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancelAnimators()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    return-void
.end method

.method public getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    return-object p0
.end method

.method public getItemGap(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

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
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isIdle()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

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
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    const/16 v8, -0x64

    const/4 v9, -0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    if-ne v1, v9, :cond_0

    .line 2
    iput v8, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v10, v1

    .line 4
    iget-object v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mTotalHeight:F

    const/4 v11, 0x0

    cmpl-float v1, v1, v11

    if-nez v1, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mTotalHeight:F

    .line 7
    iget-object v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    const/4 v12, 0x1

    add-int/lit8 v13, v1, -0x1

    .line 9
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v2, v15

    add-float/2addr v1, v2

    .line 10
    iget v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    if-eq v2, v8, :cond_6

    iget-object v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_6

    move v11, v14

    .line 11
    :goto_0
    iget-object v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_4

    mul-int/lit8 v2, v11, 0x1

    add-int/2addr v2, v14

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v3

    add-float v13, v1, v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {v7, v10, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-object v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iget v3, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    if-ne v3, v2, :cond_3

    move v4, v12

    goto :goto_1

    :cond_3
    move v4, v14

    :goto_1
    iget v5, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    iget v6, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v11, v11, 0x1

    move v1, v13

    goto :goto_0

    .line 17
    :cond_4
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    if-eq v1, v9, :cond_5

    .line 18
    invoke-direct {v0, v1}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 19
    iput v8, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    :cond_5
    return-void

    .line 20
    :cond_6
    iget v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectPointY:F

    const/high16 v3, -0x3d380000    # -100.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    .line 21
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-static {v2, v14, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 22
    iput v3, v0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectPointY:F

    .line 23
    :cond_7
    iget v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {v0, v2}, Lcom/android/camera/ui/VerticalZoomView;->setPointYToEffectiveRang(F)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 24
    iget-object v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_f

    move v3, v12

    move v2, v14

    .line 25
    :goto_2
    iget-object v4, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_e

    mul-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v14

    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v2, v8, 0x1

    add-int/2addr v2, v14

    .line 26
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v5

    add-float v6, v1, v5

    .line 27
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    sub-float v5, v6, v1

    if-eqz v3, :cond_c

    .line 28
    iget v12, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v16

    div-float v16, v16, v15

    add-float v12, v12, v16

    cmpg-float v1, v1, v12

    if-gtz v1, :cond_8

    move v9, v14

    move v12, v9

    goto :goto_4

    .line 29
    :cond_8
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    iget v12, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawEndY:F

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/VerticalZoomView;->getItemWidth(I)F

    move-result v16

    div-float v16, v16, v15

    sub-float v12, v12, v16

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_9

    move v12, v13

    :goto_3
    move v9, v14

    goto :goto_4

    :cond_9
    cmpg-float v1, v5, v11

    if-gtz v1, :cond_a

    neg-float v1, v5

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v2

    div-float/2addr v2, v15

    cmpg-float v1, v1, v2

    if-lez v1, :cond_b

    :cond_a
    cmpl-float v1, v5, v11

    if-ltz v1, :cond_c

    .line 31
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/VerticalZoomView;->getItemGap(I)F

    move-result v1

    div-float/2addr v1, v15

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_c

    :cond_b
    move v12, v4

    goto :goto_3

    :cond_c
    move v12, v9

    move v9, v3

    .line 32
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {v7, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget-object v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v9, :cond_d

    if-ne v12, v4, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    move v5, v14

    :goto_5
    iget v3, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    iget v2, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

    move/from16 v16, v2

    move v2, v4

    move/from16 v17, v3

    move-object/from16 v3, p1

    move v4, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v8

    move v3, v9

    move v9, v12

    move/from16 v1, v17

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_e
    if-eqz v3, :cond_f

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    iget v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-virtual {v7, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object v1, v0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, -0x1

    iget v4, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentAnimateFrom:I

    iget v5, v0, Lcom/android/camera/ui/VerticalZoomView;->mCurrentInterpolation:F

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
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
    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {p0, v1}, Lcom/android/camera/ui/VerticalZoomView;->pointYToIndex(F)F

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

    iget-object v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

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
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

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
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawStartY:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int p1, p2, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawEndY:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTotalHeight:F

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->updateSelectColor()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5

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
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/VerticalZoomView;->getSelectPointY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mZoomSliderViewInitY:I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mZoomSliderViewInitY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mZoomSliderViewInitY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mZoomSliderViewInitY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    iput v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchDownY:F

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x3

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-nez v2, :cond_2

    .line 4
    invoke-interface {v0, v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    .line 5
    :cond_2
    iput v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    goto/16 :goto_2

    .line 6
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    if-ne v0, v3, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 8
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_e

    .line 9
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    goto :goto_0

    .line 11
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchY:F

    sub-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 12
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/VerticalZoomView;->selectByPointY(FI)V

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 15
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartTime:F

    sub-float/2addr v0, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    if-eq v0, v2, :cond_7

    .line 16
    iput v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    return v3

    .line 17
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_8

    .line 18
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchY:F

    sub-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 19
    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/ui/VerticalZoomView;->toUpdateView(FZI)V

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0, v1, v4}, Lcom/android/camera/ui/VerticalZoomView;->toUpdateView(FZI)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_9

    iget-boolean v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    if-nez v2, :cond_9

    .line 22
    invoke-interface {v0, v4}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    .line 23
    :cond_9
    iput v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    goto :goto_2

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartTime:F

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartX:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchStartY:F

    .line 31
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_d

    .line 32
    invoke-direct {p0, v3}, Lcom/android/camera/ui/VerticalZoomView;->startScaleAnimator(Z)V

    goto :goto_2

    .line 33
    :cond_d
    iput v3, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchState:I

    .line 34
    :cond_e
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchY:F

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
    iget p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    invoke-direct {p0, p2}, Lcom/android/camera/ui/VerticalZoomView;->pointYToIndex(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/16 v1, 0x2000

    if-ne p1, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/VerticalZoomView;->setSelection(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_3

    add-int/2addr p2, v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/VerticalZoomView;->setSelection(I)V

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
    iput-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz p1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTotalHeight:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setAvailableWidth(F)V

    .line 9
    :cond_1
    iput-boolean p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsEffectInProcess = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsEffectInProcess:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HorizontalZoomView"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/VerticalZoomView;->setRotate(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZLandroid/util/Spline;Landroid/util/Spline;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/camera/ui/VerticalZoomView;->mSpline:Landroid/util/Spline;

    .line 2
    iput-object p5, p0, Lcom/android/camera/ui/VerticalZoomView;->mPositiveSpline:Landroid/util/Spline;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/VerticalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    return-void
.end method

.method public setIndexButtonSelection(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/VerticalZoomView;->startScrollAnimatorByIndex(FI)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/VerticalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setRotate(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelection(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mTotalHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectPointY:F

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VerticalZoomView;->indexToPointY(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    :goto_0
    const/16 p1, -0x64

    .line 5
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSelection   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

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
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VerticalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 13
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mInitSelectIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    iput p1, p0, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    .line 15
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ui/VerticalZoomView;->mIsAdsorb:Z

    .line 16
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
