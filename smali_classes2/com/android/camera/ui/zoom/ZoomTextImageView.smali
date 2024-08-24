.class public Lcom/android/camera/ui/zoom/ZoomTextImageView;
.super Landroid/view/View;
.source "ZoomTextImageView.java"


# static fields
.field public static final TYPE_TEXT_INDEX_NORMAL:I = 0x1

.field public static final TYPE_TEXT_INDEX_RING:I = 0x4

.field public static final TYPE_TEXT_NORMAL:I = 0x0

.field public static final TYPE_TEXT_RING:I = 0x3

.field public static final TYPE_TEXT_SINGLE_NORMAL:I = 0x2

.field public static final TYPE_TEXT_SINGLE_RING:I = 0x5


# instance fields
.field public mBackColorAnim:Landroid/animation/ValueAnimator;

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCurrentBackgroundColor:I

.field public mCurrentText:Ljava/lang/String;

.field public mCurrentType:I

.field public mIsSelect:Z

.field public mLayoutHeight:I

.field public mLayoutPaddingLeft:I

.field public mLayoutPaddingRight:I

.field public mLayoutWidth:I

.field public mNormalBackgroundColor:I

.field public mNumHeight:F

.field public mNumWidth:F

.field public mRotation:F

.field public mSelectBackgroundColor:I

.field public mShadowColor:I

.field public mShadowRadius:F

.field public mTextColor:I

.field public mTextPaint:Landroid/graphics/Paint;

.field public mTextSelectColor:I

.field public mXHeight:F

.field public mXWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    .line 3
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    .line 7
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    .line 11
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    .line 15
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "tnum"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {v0, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    return-void

    :array_0
    .array-data 4
        0x1010161
        0x1010164
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const-string v1, "X"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    goto/16 :goto_7

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v4

    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 17
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 22
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 27
    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v7, :cond_7

    move v7, v2

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v4

    :goto_1
    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 31
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 33
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    if-ne v0, v5, :cond_9

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {v0, v5, v2, v2, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 39
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v4

    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 45
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_a

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v1

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 56
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_d

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 63
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 68
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 72
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 77
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual {p1, v0, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 80
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_10

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v6, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v1

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    :goto_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalBackgroundColor(ZZ)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0603b5

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const/4 v3, 0x2

    const v4, 0x7f0603ab

    const v5, 0x7f0603b3

    const v6, 0x7f0603b1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    const v7, 0x7f0603b7

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 7
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 8
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    .line 12
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 13
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 14
    iget-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p2, :cond_8

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 17
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 19
    :cond_3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 20
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 21
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p1, :cond_8

    .line 22
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 24
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 25
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p1, :cond_8

    .line 26
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 28
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 29
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 31
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 32
    :cond_7
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    .line 33
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 34
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v0, "X"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0603b5

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x3

    const v1, 0x7f0603b7

    const v2, 0x7f0708ee

    const v3, 0x7f0603b1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    new-array p1, v5, [Landroid/view/View;

    aput-object p0, p1, v4

    .line 5
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 6
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0

    :cond_0
    new-array p1, v5, [Landroid/view/View;

    aput-object p0, p1, v4

    .line 8
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {p1, v0, v6, v6, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    new-array p1, v5, [Landroid/view/View;

    aput-object p0, p1, v4

    .line 14
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 15
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {p1, v0, v6, v6, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, p1, v0

    rem-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12006c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toToggle(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "backgroundColor"

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    .line 6
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v1, p1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    aput v0, p1, p2

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 7
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    aput v1, p1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v0, p1, p2

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
