.class public Lcom/android/camera/ui/AdjustAnimationView;
.super Landroid/view/View;
.source "AdjustAnimationView.java"


# static fields
.field public static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field public static final POINTS_COUNT:I = 0x8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBmp:Landroid/graphics/Bitmap;

.field public mBmpPoints:[F

.field public mCurrentPoints:[F

.field public mEndPoints:[F

.field public mEndTopMargin:I

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mPreviewSize:Landroid/util/Size;

.field public mStartPoints:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/AdjustAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p2, p1, [F

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    new-array p2, p1, [F

    .line 3
    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    new-array p2, p1, [F

    .line 4
    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    .line 6
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxWidth:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070257

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxHeight:I

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateEndTopMargin()I

    return-void
.end method

.method private initBmpPoints()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    .line 3
    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 8
    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x7

    aput p0, v0, v1

    return-void
.end method

.method private initEndPoints(IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    .line 2
    div-int/2addr v3, v4

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateEndTopMargin()I

    move-result v5

    int-to-float v6, v1

    int-to-float v7, v2

    div-float v8, v6, v7

    move/from16 v9, p3

    int-to-float v9, v9

    move/from16 v10, p4

    int-to-float v10, v10

    div-float v11, v9, v10

    cmpl-float v8, v8, v11

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    if-lez v8, :cond_0

    mul-float/2addr v9, v7

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    div-float v6, v6, v18

    .line 4
    iget-object v0, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    int-to-float v1, v3

    add-float/2addr v1, v6

    aput v1, v0, v17

    int-to-float v3, v5

    .line 5
    aput v3, v0, v16

    add-float v6, v1, v9

    .line 6
    aput v6, v0, v4

    .line 7
    aput v3, v0, v15

    .line 8
    aput v6, v0, v14

    add-int/2addr v5, v2

    int-to-float v2, v5

    .line 9
    aput v2, v0, v13

    .line 10
    aput v1, v0, v12

    .line 11
    aput v2, v0, v11

    move v6, v9

    goto :goto_0

    :cond_0
    mul-float/2addr v10, v6

    div-float/2addr v10, v9

    sub-float/2addr v7, v10

    div-float v7, v7, v18

    .line 12
    iget-object v0, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    int-to-float v2, v3

    aput v2, v0, v17

    int-to-float v5, v5

    add-float/2addr v5, v7

    .line 13
    aput v5, v0, v16

    add-int/2addr v3, v1

    int-to-float v1, v3

    .line 14
    aput v1, v0, v4

    .line 15
    aput v5, v0, v15

    .line 16
    aput v1, v0, v14

    add-float/2addr v5, v10

    .line 17
    aput v5, v0, v13

    .line 18
    aput v2, v0, v12

    .line 19
    aput v5, v0, v11

    move v7, v10

    .line 20
    :goto_0
    sget-object v0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateEndTopMargin()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxHeight:I

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndTopMargin:I

    return v0
.end method

.method private updateMatrix()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    iget-object v3, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "point_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateMatrix()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearBitmap()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getImageRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v4, 0x5

    aget p0, p0, v4

    .line 4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    sget-object p0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    const/4 v10, 0x0

    if-eqz v4, :cond_2

    .line 6
    sget-object v4, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBitmap: ratio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", points = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    array-length v4, v1

    move v5, v10

    :goto_0
    if-ge v5, v4, :cond_1

    .line 8
    aget v6, v1, v5

    mul-float/2addr v6, v3

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v8, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v6, 0x5a

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v5, v6, :cond_9

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_6

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_3

    goto/16 :goto_9

    :cond_3
    move v5, v10

    :goto_1
    if-ge v5, v3, :cond_5

    .line 13
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_4

    .line 14
    iget-object v6, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v15

    int-to-float v15, v15

    add-int/lit8 v16, v5, 0x1

    aget v16, v1, v16

    sub-float v15, v15, v16

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v15, v3

    aput v15, v6, v5

    goto :goto_2

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    add-int/lit8 v6, v5, -0x1

    aget v6, v1, v6

    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v6, v15

    aput v6, v3, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x8

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v2, v1, v8

    aput v2, v4, v10

    .line 17
    aget v2, v1, v7

    aput v2, v4, v14

    .line 18
    aget v2, v1, v10

    aput v2, v4, v13

    .line 19
    aget v2, v1, v14

    aput v2, v4, v12

    .line 20
    aget v2, v1, v13

    aput v2, v4, v11

    .line 21
    aget v2, v1, v12

    aput v2, v4, v9

    .line 22
    aget v2, v1, v11

    aput v2, v4, v8

    .line 23
    aget v1, v1, v9

    aput v1, v4, v7

    .line 24
    iput-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    goto/16 :goto_9

    :cond_6
    move v5, v3

    move v3, v10

    :goto_3
    if-ge v3, v5, :cond_8

    .line 25
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_7

    .line 26
    iget-object v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    int-to-float v6, v6

    aget v15, v1, v3

    sub-float/2addr v6, v15

    iget v15, v2, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v6, v15

    aput v6, v5, v3

    goto :goto_4

    .line 27
    :cond_7
    iget-object v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    int-to-float v6, v6

    aget v15, v1, v3

    sub-float/2addr v6, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v6, v15

    aput v6, v5, v3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_3

    .line 28
    :cond_8
    iget-object v1, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v2, v1, v11

    aput v2, v4, v10

    .line 29
    aget v2, v1, v9

    aput v2, v4, v14

    .line 30
    aget v2, v1, v8

    aput v2, v4, v13

    .line 31
    aget v2, v1, v7

    aput v2, v4, v12

    .line 32
    aget v2, v1, v10

    aput v2, v4, v11

    .line 33
    aget v2, v1, v14

    aput v2, v4, v9

    .line 34
    aget v2, v1, v13

    aput v2, v4, v8

    .line 35
    aget v1, v1, v12

    aput v1, v4, v7

    .line 36
    iput-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    goto/16 :goto_9

    :cond_9
    move v5, v3

    move v3, v10

    :goto_5
    if-ge v3, v5, :cond_b

    .line 37
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_a

    .line 38
    iget-object v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    iget v15, v2, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v6, v15

    aput v6, v5, v3

    goto :goto_6

    .line 39
    :cond_a
    iget-object v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    int-to-float v6, v6

    add-int/lit8 v15, v3, -0x1

    aget v15, v1, v15

    sub-float/2addr v6, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v6, v15

    aput v6, v5, v3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_5

    .line 40
    :cond_b
    iget-object v1, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v2, v1, v13

    aput v2, v4, v10

    .line 41
    aget v2, v1, v12

    aput v2, v4, v14

    .line 42
    aget v2, v1, v11

    aput v2, v4, v13

    .line 43
    aget v2, v1, v9

    aput v2, v4, v12

    .line 44
    aget v2, v1, v8

    aput v2, v4, v11

    .line 45
    aget v2, v1, v7

    aput v2, v4, v9

    .line 46
    aget v2, v1, v10

    aput v2, v4, v8

    .line 47
    aget v1, v1, v14

    aput v1, v4, v7

    .line 48
    iput-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    goto :goto_9

    :cond_c
    move v4, v3

    move v3, v10

    :goto_7
    if-ge v3, v4, :cond_e

    .line 49
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_d

    .line 50
    iget-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v5, v1, v3

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v3

    goto :goto_8

    .line 51
    :cond_d
    iget-object v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v5, v1, v3

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    goto :goto_7

    .line 52
    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    iget-object v2, v0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    const/16 v3, 0x8

    invoke-static {v1, v10, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v1, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 54
    iget-object v2, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 55
    sget-object v3, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bmpWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bmpHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/AdjustAnimationView;->initBmpPoints()V

    .line 57
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxHeight:I

    goto :goto_a

    :cond_f
    iget v3, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxWidth:I

    :goto_a
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxWidth:I

    goto :goto_b

    :cond_10
    iget v4, v0, Lcom/android/camera/ui/AdjustAnimationView;->mMaxHeight:I

    :goto_b
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/camera/ui/AdjustAnimationView;->initEndPoints(IIII)V

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateMatrix()V

    .line 59
    iget-object v0, v0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public startAnim(Landroid/animation/Animator$AnimatorListener;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    sget-object v5, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/high16 v8, 0x72000000

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "color"

    .line 6
    invoke-static {v3, v8, v5, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->getEnterDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const/16 v7, 0x8

    new-array v8, v7, [Landroid/animation/PropertyValuesHolder;

    move v9, v4

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v7, :cond_0

    .line 9
    iget-object v11, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v11, v11, v9

    .line 10
    iget-object v12, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    aget v12, v12, v9

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "point_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v10, v10, [F

    aput v11, v10, v4

    aput v12, v10, v6

    invoke-static {v13, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 13
    new-instance v7, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO00o;

    invoke-direct {v7, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO00o;-><init>(Lcom/android/camera/ui/AdjustAnimationView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-wide/from16 v7, p2

    .line 14
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-array v0, v10, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    .line 16
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 17
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startBackgroundAnimator()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    sget-object v0, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "color"

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getExitDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
