.class public Lcom/android/camera/ui/drawable/zoom/HorCameraZoomAdjustPaint;
.super Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;
.source "HorCameraZoomAdjustPaint.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;-><init>(Landroid/content/Context;)V

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mIsRTL:Z

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewWidth:I

    const p2, 0x3fe8b439    # 1.818f

    .line 4
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineWidth:F

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mIsRTL:Z

    const v1, 0x7f0805ab

    const v2, 0x7f0805ac

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x28

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewSliderWidth:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07072d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    const p3, 0x400b9581    # 2.181f

    .line 12
    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBreakpointWidth:F

    const p3, 0x4202eb85    # 32.73f

    .line 13
    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mNormalCircleRadius:F

    const p3, 0x421170a4    # 36.36f

    .line 14
    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    .line 15
    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mNormalCircleRadius:F

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mCurrentCircleRadius:F

    .line 16
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewSliderWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p3, v2

    sub-float/2addr v1, p3

    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAvaliableWidth:F

    .line 17
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v3, v2, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 18
    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v4

    .line 19
    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 20
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 21
    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 22
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    .line 25
    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p2, v0, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mTextBaseLineY:I

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->updateColor()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0603b9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomMidColor:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603b8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomLastColor:I

    .line 29
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getSlideBackgroundAlpha()F

    move-result p2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getSlideBackgroundAlpha()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, -0x14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0x14

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 34
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, 0x14

    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    .line 39
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 6
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mShadowPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mShadowPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float v7, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mShadowPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float v8, v1, v2

    iget-object v11, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p1

    .line 11
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineWidth:F

    div-float v4, v2, v3

    sub-float v6, v1, v4

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v2, v3

    add-float v8, v1, v2

    iget-object v11, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBreakpointWidth:F

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBreakpointWidth:F

    div-float/2addr v2, v3

    add-float v7, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float v8, v1, v2

    iget-object v9, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-static {v1, v2, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v1

    .line 16
    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mCurrentCircleRadius:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBreakpointWidth:F

    sub-float v6, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float v7, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBreakpointWidth:F

    add-float v8, v2, v3

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float v9, v2, v3

    iget-object v10, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 18
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mCurrentCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mZoomRatio:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mTextBaseLineY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 27
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSpeed(IF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mNormalCircleRadius:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAvaliableWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :goto_0
    sub-float/2addr p1, p2

    .line 2
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAvaliableWidth:F

    div-float/2addr p1, p0

    const p0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p0

    return p1
.end method

.method public move(Landroid/graphics/Point;F)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    invoke-virtual {p1, p2, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setZoomRange(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mMaxZoomRatio:F

    return-void
.end method

.method public startSliderBackAnimation()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAnimState:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    return-void
.end method

.method public updateSliderPositionForBackAnim(FZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->updateTextAndCircle(F)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mViewHeight:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 5
    iput v4, p0, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->mAnimState:I

    :cond_2
    return-void
.end method
