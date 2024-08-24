.class public Lcom/android/camera/ui/MotionDetectionView;
.super Landroid/view/View;
.source "MotionDetectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;
    }
.end annotation


# static fields
.field public static final ALPHA_MAX:I = 0xff

.field public static final CIRCLE_TIME_ANIMATOR:I = 0xc8

.field public static final LEFT_BOTTOM_POINT:I = 0x2

.field public static final LEFT_TOP_POINT:I = 0x1

.field public static final MOVE_ERROR:I = 0x0

.field public static final NONE_POINT:I = 0x0

.field public static final RECT_ALPHA_DEFAULT:I = 0x7f

.field public static final RECT_ALPHA_DIFF:I = 0x80

.field public static final RECT_INSIDE_POINT:I = 0x5

.field public static final RECT_WIDTH:F

.field public static final RIGHT_BOTTOM_POINT:I = 0x3

.field public static final RIGHT_TOP_POINT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "MotionDetectionView"


# instance fields
.field public mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

.field public mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

.field public mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

.field public mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

.field public mAnimatorRectDown:Landroid/animation/ValueAnimator;

.field public mAnimatorRectLoop:Landroid/animation/ValueAnimator;

.field public mAnimatorRectUp:Landroid/animation/ValueAnimator;

.field public mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

.field public mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

.field public mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

.field public mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

.field public mAnimatorView:Landroid/animation/ValueAnimator;

.field public mChangeAlpha:F

.field public mChangeCircleSaved:F

.field public mChangeRectAlphaDown:F

.field public mChangeRectAlphaUp:F

.field public mChangeRectSaved:F

.field public mChangeValue:F

.field public mChangeValueUp:F

.field public mCurrentPosition:I

.field public mCurrentX:F

.field public mCurrentY:F

.field public mDownX:F

.field public mDownY:F

.field public mIsRecording:Z

.field public mLineRectPaint:Landroid/graphics/Paint;

.field public mMotionDetectionRect:Landroid/graphics/RectF;

.field public mOnMotionDetectionRectListener:Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;

.field public mPaint:Landroid/graphics/Paint;

.field public mPaintCircle:Landroid/graphics/Paint;

.field public mPercentCircle:F

.field public mPercentRect:F

.field public mPercentRectAlphaDown:F

.field public mPercentRectAlphaUp:F

.field public mPercentRectUp:F

.field public mRadiusExpandSize:F

.field public mRadiusLeftBottom:F

.field public mRadiusLeftTop:F

.field public mRadiusNormalSize:F

.field public mRadiusRightBottom:F

.field public mRadiusRightTop:F

.field public mRectBottom:F

.field public mRectLeft:F

.field public mRectRight:F

.field public mRectTop:F

.field public mRectWidth:F

.field public mScreenHeight:F

.field public mScreenWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftTop:F

    .line 3
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftBottom:F

    .line 4
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    .line 5
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightBottom:F

    .line 6
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusExpandSize:F

    .line 7
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusNormalSize:F

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftTop:F

    .line 13
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftBottom:F

    .line 14
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    .line 15
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightBottom:F

    .line 16
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusExpandSize:F

    .line 17
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusNormalSize:F

    .line 18
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    .line 19
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->init()V

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->initLineRectPaint()V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->initPaintCircle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftTop:F

    .line 26
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftBottom:F

    .line 27
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    .line 28
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightBottom:F

    .line 29
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusExpandSize:F

    .line 30
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusNormalSize:F

    .line 31
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    .line 32
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/MotionDetectionView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/MotionDetectionView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRect:F

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectUp:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectUp:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRect:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValueUp:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValueUp:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeAlpha:F

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeAlpha:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeCircleSaved:F

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeCircleSaved:F

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectSaved:F

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectSaved:F

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectAlphaDown:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectAlphaDown:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectAlphaDown:F

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectAlphaDown:F

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectAlphaUp:F

    return p0
.end method

.method public static synthetic access$602(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectAlphaUp:F

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectAlphaUp:F

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectAlphaUp:F

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentCircle:F

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentCircle:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/MotionDetectionView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValue:F

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/ui/MotionDetectionView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValue:F

    return p1
.end method

.method private getIncrementalValue(IFF)F
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float v3, v1, p2

    iget v4, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v4, v3, p2

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_1

    add-float/2addr v1, p2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v4

    sget v4, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v3

    add-float/2addr p1, p2

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_1

    return p2

    .line 3
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, p2, p3

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_8

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float v0, p0, p3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    sget v0, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_8

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    sub-float/2addr p1, p3

    cmpl-float p0, p1, v0

    if-ltz p0, :cond_8

    return p3

    .line 4
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, p2

    iget v4, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float v4, v3, p2

    iget v5, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    add-float/2addr v3, p2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    sget v4, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    add-float/2addr v1, p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    cmpl-float p1, v1, v4

    if-ltz p1, :cond_3

    return p2

    .line 5
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p2

    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_8

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float v3, v1, p2

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_8

    add-float/2addr v1, p2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p0

    sget p0, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_8

    add-float/2addr v0, p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_8

    return p3

    .line 6
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p2

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v3, p2

    iget v5, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    sub-float/2addr v4, p2

    sget v1, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_5

    sub-float/2addr v3, p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p1

    cmpl-float p1, v3, v1

    if-ltz p1, :cond_5

    return p2

    .line 7
    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, p3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p3

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_8

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, p2

    add-float/2addr p0, p3

    sget p2, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_8

    add-float/2addr v0, p3

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p0

    cmpl-float p0, v0, p2

    if-ltz p0, :cond_8

    return p3

    .line 8
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float v3, v1, p2

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_7

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float v4, v3, p2

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_7

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    add-float/2addr v4, p2

    sget v3, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_7

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    add-float/2addr p1, p2

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_7

    return p2

    .line 9
    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float p2, p1, p3

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_8

    iget p2, p0, Landroid/graphics/RectF;->left:F

    add-float v0, p2, p3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    sub-float/2addr v0, p2

    sget p2, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_8

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p3

    sub-float/2addr p0, p1

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_8

    return p3

    :cond_8
    :goto_0
    return v2
.end method

.method private isNeedBottomChange(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    cmpl-float v1, p1, p3

    if-gez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_1

    :cond_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    :cond_1
    return p1

    :cond_2
    add-float/2addr p1, p2

    .line 2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private isNeedLeftChange(FFF)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    cmpg-float v1, p1, p3

    if-lez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    :cond_1
    return p1

    :cond_2
    add-float/2addr p1, p2

    .line 2
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private isNeedRightChange(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    cmpl-float v1, p1, p3

    if-gez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_1

    :cond_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    :cond_1
    return p1

    :cond_2
    add-float/2addr p1, p2

    .line 2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private isNeedTopChange(FFF)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    cmpg-float v1, p1, p3

    if-lez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    :cond_1
    return p1

    :cond_2
    add-float/2addr p1, p2

    .line 2
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private isOccurDeformation(Landroid/graphics/RectF;FFFF)Z
    .locals 4

    sub-float/2addr p4, p2

    .line 1
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p2

    sub-float/2addr p4, p0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p0, v0, v2

    if-gtz p0, :cond_1

    sub-float/2addr p5, p3

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    sub-float/2addr p5, p0

    .line 2
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_0

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

.method private near(FFFF)Z
    .locals 1

    const/high16 p0, 0x42a00000    # 80.0f

    sub-float v0, p3, p0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    add-float/2addr p3, p0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    sub-float p1, p4, p0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canMove(FF)Z
    .locals 1

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-gez p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cencelMotionDetectionRectAnimator(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/MotionDetectionView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MotionDetectionView$2;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public checkPointPosition()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/ui/MotionDetectionView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/ui/MotionDetectionView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/ui/MotionDetectionView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/ui/MotionDetectionView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public doAnimatorWhenSaveSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/MotionDetectionView$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/MotionDetectionView$4;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorView:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doCircleAnimatorDown(IZ)V
    .locals 4

    const/4 p2, 0x0

    .line 1
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentCircle:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValue:F

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    if-eq p1, p2, :cond_9

    if-eq p1, v3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    new-array p1, v3, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$9;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$9;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_5

    new-array p1, v3, [F

    .line 16
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$10;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$10;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    :cond_5
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    new-array p1, v3, [F

    .line 25
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$8;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$8;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    :cond_8
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_b

    new-array p1, v3, [F

    .line 34
    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$7;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$7;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    :cond_b
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doCircleAnimatorUp(IZ)V
    .locals 4

    const/4 p2, 0x0

    .line 1
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeValueUp:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectUp:F

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    if-eq p1, p2, :cond_9

    if-eq p1, v3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    new-array p1, v3, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$13;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$13;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightTopUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_5

    new-array p1, v3, [F

    .line 16
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$14;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$14;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    :cond_5
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRightBottomUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    new-array p1, v3, [F

    .line 25
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$12;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$12;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    :cond_8
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftBottomUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_b

    new-array p1, v3, [F

    .line 34
    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$11;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$11;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    :cond_b
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorLeftTopUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doRectAnimatorDown(IZ)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRect:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeAlpha:F

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, p2, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    new-array p1, v0, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/MotionDetectionView$5;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/MotionDetectionView$5;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doRectAnimatorLoopUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/MotionDetectionView$15;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/MotionDetectionView$15;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectLoop:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public doRectAnimatorUp(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPercentRectAlphaUp:F

    .line 2
    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mChangeRectAlphaUp:F

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    new-array p1, v1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/MotionDetectionView$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MotionDetectionView$6;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mAnimatorRectUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftTop:F

    iget-object v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftBottom:F

    iget-object v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    iget-object v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightBottom:F

    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLineRect(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectLeft:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectTop:F

    iget v4, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectBottom:F

    iget-object v5, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2
    iget v7, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectLeft:F

    iget v10, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectBottom:F

    iget v9, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectRight:F

    iget-object v11, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget v3, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectRight:F

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectBottom:F

    iget v4, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectTop:F

    iget-object v5, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4
    iget v7, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectRight:F

    iget v10, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectTop:F

    iget v9, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectLeft:F

    iget-object v11, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectWidth:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftTop:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusLeftBottom:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightTop:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusRightBottom:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07066d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusExpandSize:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRadiusNormalSize:F

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectLeft:F

    .line 15
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectTop:F

    .line 16
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectRight:F

    .line 17
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mRectBottom:F

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMotionDetectionRange()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public initLineRectPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mLineRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public initPaintCircle()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/MotionDetectionView;->drawCircle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    .line 3
    iget-boolean v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v7, :cond_14

    if-eq v0, v5, :cond_1

    goto/16 :goto_6

    .line 5
    :cond_1
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownX:F

    sub-float/2addr v0, v1

    .line 6
    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    iget v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownY:F

    sub-float/2addr v1, v8

    .line 7
    iget v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-direct {v6, v8, v0, v1}, Lcom/android/camera/ui/MotionDetectionView;->getIncrementalValue(IFF)F

    move-result v8

    .line 8
    iget v9, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentX:F

    iput v9, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownX:F

    .line 9
    iget v9, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentY:F

    iput v9, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownY:F

    .line 10
    iget-object v9, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    .line 11
    iget v11, v9, Landroid/graphics/RectF;->top:F

    .line 12
    iget v12, v9, Landroid/graphics/RectF;->right:F

    .line 13
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 14
    iget v13, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    const v14, 0x3dcccccd    # 0.1f

    const/4 v15, 0x0

    if-eq v13, v7, :cond_12

    if-eq v13, v5, :cond_e

    if-eq v13, v3, :cond_c

    if-eq v13, v2, :cond_8

    if-eq v13, v4, :cond_2

    goto/16 :goto_6

    :cond_2
    add-float v2, v10, v0

    cmpg-float v2, v2, v15

    if-lez v2, :cond_4

    add-float/2addr v12, v0

    .line 15
    iget v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {v6, v10, v0, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedLeftChange(FFF)F

    move-result v2

    .line 17
    iget-object v3, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    invoke-direct {v6, v3, v0, v4}, Lcom/android/camera/ui/MotionDetectionView;->isNeedRightChange(FFF)F

    move-result v0

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {v6, v0, v15, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedLeftChange(FFF)F

    move-result v2

    .line 19
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    invoke-direct {v6, v0, v15, v3}, Lcom/android/camera/ui/MotionDetectionView;->isNeedRightChange(FFF)F

    move-result v0

    :goto_1
    move v8, v0

    move v9, v2

    .line 20
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    invoke-static {v7}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    .line 21
    invoke-static {v7}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v6, v0, v1, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedTopChange(FFF)F

    move-result v0

    .line 23
    iget-object v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    invoke-direct {v6, v2, v1, v3}, Lcom/android/camera/ui/MotionDetectionView;->isNeedBottomChange(FFF)F

    move-result v1

    goto :goto_3

    .line 24
    :cond_6
    :goto_2
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v6, v0, v15, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedTopChange(FFF)F

    move-result v0

    .line 25
    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    invoke-direct {v6, v1, v15, v2}, Lcom/android/camera/ui/MotionDetectionView;->isNeedBottomChange(FFF)F

    move-result v1

    :goto_3
    move v7, v0

    move v10, v1

    .line 26
    invoke-virtual {v6, v7, v10}, Lcom/android/camera/ui/MotionDetectionView;->canMove(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move v2, v9

    move v3, v7

    move v4, v8

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/MotionDetectionView;->isOccurDeformation(Landroid/graphics/RectF;FFFF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v9, v7, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_8
    cmpl-float v0, v8, v0

    if-nez v0, :cond_9

    .line 29
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    invoke-direct {v6, v12, v8, v0}, Lcom/android/camera/ui/MotionDetectionView;->isNeedRightChange(FFF)F

    move-result v12

    .line 30
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v1, v15, v8

    invoke-direct {v6, v0, v1, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedTopChange(FFF)F

    move-result v11

    goto :goto_4

    :cond_9
    cmpl-float v0, v8, v1

    if-nez v0, :cond_a

    sub-float v0, v15, v8

    .line 31
    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    invoke-direct {v6, v12, v0, v1}, Lcom/android/camera/ui/MotionDetectionView;->isNeedRightChange(FFF)F

    move-result v12

    .line 32
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v6, v0, v8, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedTopChange(FFF)F

    move-result v11

    :cond_a
    :goto_4
    sub-float v0, v9, v11

    .line 33
    sget v1, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_b

    sub-float v2, v12, v10

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_b

    .line 34
    invoke-static {v7}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, v11, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_b

    .line 36
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v10, v11, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    .line 38
    :cond_c
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    invoke-direct {v6, v12, v8, v0}, Lcom/android/camera/ui/MotionDetectionView;->isNeedRightChange(FFF)F

    move-result v0

    .line 39
    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    invoke-direct {v6, v1, v8, v2}, Lcom/android/camera/ui/MotionDetectionView;->isNeedBottomChange(FFF)F

    move-result v1

    sub-float v2, v1, v11

    .line 40
    sget v3, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_d

    sub-float v4, v0, v10

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_d

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v14

    if-gtz v2, :cond_d

    .line 41
    iget-object v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v10, v11, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_e
    cmpl-float v0, v8, v0

    if-nez v0, :cond_f

    .line 43
    invoke-direct {v6, v10, v8, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedLeftChange(FFF)F

    move-result v10

    .line 44
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v15, v8

    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    invoke-direct {v6, v0, v15, v1}, Lcom/android/camera/ui/MotionDetectionView;->isNeedBottomChange(FFF)F

    move-result v9

    goto :goto_5

    :cond_f
    cmpl-float v0, v8, v1

    if-nez v0, :cond_10

    sub-float v0, v15, v8

    .line 45
    invoke-direct {v6, v10, v0, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedLeftChange(FFF)F

    move-result v10

    .line 46
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    invoke-direct {v6, v0, v8, v1}, Lcom/android/camera/ui/MotionDetectionView;->isNeedBottomChange(FFF)F

    move-result v9

    :cond_10
    :goto_5
    sub-float v0, v9, v11

    .line 47
    sget v1, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_11

    sub-float v2, v12, v10

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_11

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_11

    .line 48
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v10, v11, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 50
    :cond_12
    invoke-direct {v6, v10, v8, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedLeftChange(FFF)F

    move-result v0

    .line 51
    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v6, v1, v8, v15}, Lcom/android/camera/ui/MotionDetectionView;->isNeedTopChange(FFF)F

    move-result v1

    sub-float v2, v9, v1

    .line 52
    sget v3, Lcom/android/camera/ui/MotionDetectionView;->RECT_WIDTH:F

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_13

    sub-float v4, v12, v0

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_13

    .line 53
    invoke-static {v7}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_13

    sub-float/2addr v2, v4

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v14

    if-gtz v2, :cond_13

    .line 55
    iget-object v2, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 57
    :cond_14
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-virtual {v6, v0}, Lcom/android/camera/ui/MotionDetectionView;->doRectAnimatorUp(I)V

    .line 58
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/ui/MotionDetectionView;->doCircleAnimatorUp(IZ)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMotionDetectionRange(Landroid/graphics/RectF;)V

    .line 61
    iget-object v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mOnMotionDetectionRectListener:Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;

    iget-object v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;->setRectPoint(FFFF)V

    .line 62
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 63
    :cond_15
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/MotionDetectionView;->checkPointPosition()I

    move-result v8

    iput v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownX:F

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mDownY:F

    .line 67
    iget v8, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    if-eq v8, v4, :cond_16

    if-eq v8, v7, :cond_16

    if-eq v8, v5, :cond_16

    if-eq v8, v2, :cond_16

    if-ne v8, v3, :cond_17

    :cond_16
    if-eqz v0, :cond_18

    .line 68
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return v1

    .line 69
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationUpdate   mCurrentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionDetectionView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-virtual {v6, v0, v7}, Lcom/android/camera/ui/MotionDetectionView;->doRectAnimatorDown(IZ)V

    .line 71
    iget v0, v6, Lcom/android/camera/ui/MotionDetectionView;->mCurrentPosition:I

    invoke-virtual {v6, v0, v7}, Lcom/android/camera/ui/MotionDetectionView;->doCircleAnimatorDown(IZ)V

    return v7

    :cond_19
    :goto_7
    return v1
.end method

.method public setMotionDetectionCircleAlpha(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->doRectAnimatorLoopUp()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMotionDetectionRectAlpha(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/MotionDetectionView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MotionDetectionView$1;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/ui/MotionDetectionView;->mIsRecording:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMotionDetectionRectListener(Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView;->mOnMotionDetectionRectListener:Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;

    return-void
.end method

.method public setMotionDetectionViewAlpha()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/MotionDetectionView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MotionDetectionView$3;-><init>(Lcom/android/camera/ui/MotionDetectionView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public touchEdge()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView;->mMotionDetectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/android/camera/ui/MotionDetectionView;->mScreenHeight:F

    cmpl-float p0, v1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
