.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintBottom.java"


# static fields
.field public static final HALO_STOKE_WIDTH:I = 0x2


# instance fields
.field public mArcRectF:Landroid/graphics/RectF;

.field public mDurationText:Ljava/lang/String;

.field public mFixCircleOffset:Z

.field public mHaloPaint:Landroid/graphics/Paint;

.field public mOffsetPaint:Landroid/graphics/Paint;

.field public mRectF:Landroid/graphics/RectF;

.field public mStokeWidth:F

.field public mSubCirclePattern:Z

.field public mTextBound:Landroid/graphics/Rect;

.field public mTextColor:I

.field public mTextCurrentAlpha:I

.field public mTextCurrentScale:F

.field public mTextPaint:Landroid/graphics/Paint;

.field public mTextSize:I

.field public mTextSrcAlpha:I

.field public mTextSrcScale:F

.field public mTextTargetAlpha:I

.field public mTextTargetScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentScale:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    const v1, 0x7f130171

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextColor:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    .line 8
    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070899

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSize:I

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextBound:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 3
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 4
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 6
    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mRectF:Landroid/graphics/RectF;

    int-to-float v5, v5

    sub-float v7, v2, v5

    sub-float v8, v4, v5

    add-float v9, v1, v5

    add-float/2addr v5, v3

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mFixCircleOffset:Z

    if-eqz v5, :cond_1

    .line 9
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mArcRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mStokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    add-float/2addr v2, v8

    div-float v8, v6, v7

    add-float/2addr v4, v8

    div-float v8, v6, v7

    sub-float/2addr v1, v8

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mArcRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mSubCirclePattern:Z

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mArcRectF:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 15
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    :goto_1
    add-float/2addr v0, v1

    .line 16
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    goto :goto_2

    :cond_3
    const/high16 v1, 0x43b40000    # 360.0f

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    sub-float/2addr v1, v4

    :goto_2
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v0

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 18
    :cond_4
    iget-object v8, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mArcRectF:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 19
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mDurationText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mDurationText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mDurationText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextBound:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mRectF:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mArcRectF:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 7
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mStokeWidth:F

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v0, 0x7f0600e9

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public isSubCirclePattern()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mSubCirclePattern:Z

    return p0
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mDurationText:Ljava/lang/String;

    return-void
.end method

.method public setFixCircleOffset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mFixCircleOffset:Z

    return-void
.end method

.method public setHaloColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOffsetStokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mStokeWidth:F

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setResult()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mOffsetPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600e9

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentAlpha:I

    .line 4
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetScale:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentScale:F

    return-void
.end method

.method public setSubCirclePattern(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mSubCirclePattern:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method public setTextTargetAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSrcAlpha:I

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetAlpha:I

    return-void
.end method

.method public setTextTargetScale(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentScale:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSrcScale:F

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetScale:F

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSrcAlpha:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetAlpha:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentAlpha:I

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextSrcScale:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextTargetScale:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->mTextCurrentScale:F

    return-void
.end method
