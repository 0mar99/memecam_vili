.class public Lcom/android/camera/fragment/manually/adapter/sat/HorStopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;
.source "HorStopsZoomSliderAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;-><init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;ZIF)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    if-eqz p3, :cond_0

    .line 2
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectWidth:F

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:F

    goto :goto_0

    .line 5
    :cond_1
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:F

    :goto_0
    const/high16 p5, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    neg-float p1, p4

    div-float v1, p1, p5

    .line 6
    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    neg-float v2, v4

    div-float v6, p4, p5

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result p1

    if-eqz p1, :cond_3

    neg-float p1, p4

    div-float v1, p1, p5

    .line 8
    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v2, v4

    div-float v6, p4, p5

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mStopPointPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    neg-float p1, p4

    div-float v1, p1, p5

    .line 9
    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v2, v4

    div-float v6, p4, p5

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNormalPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
