.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintOuterRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;,
        Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;
    }
.end annotation


# instance fields
.field public mCurrentShadowAlpha:I

.field public mRoundRadius:I

.field public mShadowPaint:Landroid/graphics/Paint;

.field public mStickLength:I

.field public mStrokeWidthDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x21

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    neg-float v2, v1

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, p0

    neg-float v1, v1

    mul-float/2addr v1, p0

    const/16 p0, 0x8

    new-array p0, p0, [F

    const/4 v3, 0x0

    aput v2, p0, v3

    int-to-float p3, p3

    add-float v4, v1, p3

    const/4 v5, 0x1

    aput v4, p0, v5

    const/4 v4, 0x2

    aput v2, p0, v4

    add-float v4, v1, v0

    float-to-double v4, v4

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x3

    aput v4, p0, v5

    add-float v4, v2, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x4

    aput v4, p0, v5

    const/4 v4, 0x5

    aput v1, p0, v4

    add-float/2addr p3, v2

    const/4 v4, 0x6

    aput p3, p0, v4

    const/4 p3, 0x7

    aput v1, p0, p3

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    add-float v4, v2, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p3, v2, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-ge v3, v5, :cond_0

    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p3

    move-object v11, p2

    .line 8
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPaintColor(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    return p0
.end method

.method public getStickLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    return p0
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->reInitPaint()V

    return-void
.end method

.method public reInitPaint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setStickLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    return-void
.end method

.method public setStrokeWidthDirectly(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-object p0
.end method

.method public updateValue(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    int-to-float p1, p1

    const/high16 v0, 0x42040000    # 33.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    return-void
.end method
