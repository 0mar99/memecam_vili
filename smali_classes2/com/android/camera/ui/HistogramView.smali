.class public Lcom/android/camera/ui/HistogramView;
.super Landroid/view/View;
.source "HistogramView.java"


# static fields
.field public static final BINS:I = 0x100

.field public static final MODE_RGB:I = 0x10

.field public static final MODE_Y:I = 0x1


# instance fields
.field public mBlueColor:I

.field public mBlueHistogram:[I

.field public mGreenColor:I

.field public mGreenHistogram:[I

.field public mMode:I

.field public mOrientation:I

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;

.field public mRect:Landroid/graphics/RectF;

.field public mRedColor:I

.field public mRedHistogram:[I

.field public mRoundRadius:F

.field public mYColor:I

.field public mYHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x11

    .line 2
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mMode:I

    const/high16 p1, -0x10000

    .line 3
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mRedColor:I

    const p1, -0xff0100

    .line 4
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mGreenColor:I

    const p1, -0xffff01

    .line 5
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mBlueColor:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mYColor:I

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    const/16 p1, 0x100

    new-array p2, p1, [I

    .line 9
    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    new-array p2, p1, [I

    .line 11
    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    new-array p1, p1, [I

    .line 12
    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    .line 13
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method private drawHistogram(Landroid/graphics/Canvas;I[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 3
    array-length v5, v2

    int-to-float v5, v5

    div-float v5, v3, v5

    move/from16 v6, p2

    int-to-float v6, v6

    div-float v6, v4, v6

    .line 4
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 5
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    move/from16 v9, p4

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v10, p5

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/camera/ui/HistogramView;->mRect:Landroid/graphics/RectF;

    iget v11, v0, Lcom/android/camera/ui/HistogramView;->mRoundRadius:F

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 12
    iget-object v7, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 14
    iget-object v10, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 15
    iget-object v10, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 16
    iget-object v10, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v9, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v10, 0x0

    move v12, v9

    move v13, v12

    move v11, v10

    .line 17
    :goto_0
    array-length v14, v2

    if-ge v10, v14, :cond_2

    int-to-float v14, v10

    mul-float/2addr v14, v5

    add-float/2addr v14, v9

    .line 18
    aget v15, v2, v10

    int-to-float v15, v15

    mul-float/2addr v15, v6

    cmpl-float v16, v15, v9

    if-eqz v16, :cond_1

    add-float/2addr v13, v15

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v13, v12

    sub-float v12, v4, v13

    if-nez v11, :cond_0

    .line 19
    iget-object v11, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v11, v8

    .line 20
    :cond_0
    iget-object v13, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v14, v12}, Landroid/graphics/Path;->lineTo(FF)V

    move v12, v14

    move v13, v15

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 21
    :cond_2
    iget-object v2, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    iget-object v2, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v2, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 24
    iget-object v2, v0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 25
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v4, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    aget v2, v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2
    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/HistogramView;->mMode:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 6
    iget-object v5, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    iget v6, p0, Lcom/android/camera/ui/HistogramView;->mYColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/HistogramView;->drawHistogram(Landroid/graphics/Canvas;I[IILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHistogramLayoutParams()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->setHistogramLayoutParams(Landroid/view/View;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HistogramView;->mOrientation:I

    if-eq v0, p1, :cond_2

    sub-int v0, p1, v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    add-int/lit16 v0, p1, -0x168

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mOrientation:I

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRoundRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mRoundRadius:F

    return-void
.end method

.method public updateStats([I)V
    .locals 2

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public updateStats([I[I[I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    invoke-static {p3, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
