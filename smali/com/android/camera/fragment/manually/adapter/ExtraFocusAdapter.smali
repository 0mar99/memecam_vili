.class public Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "ExtraFocusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_POSITION:I = 0x3e8

.field public static final mImageIds:[I


# instance fields
.field public mComponentData:Lcom/android/camera/data/data/ComponentData;

.field public mContext:Landroid/content/Context;

.field public mCurrentMode:I

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field public mTrackedFocusPosition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mImageIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080311
        0x7f08030e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 4
    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mCurrentMode:I

    .line 5
    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 6
    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mTrackedFocusPosition:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p2, 0x3e8

    .line 8
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mTrackedFocusPosition:I

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->initStyle(Landroid/content/Context;)V

    return-void
.end method

.method private drawImage(FILandroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapIndexToImagePosition(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mImageIds:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    div-int/2addr p4, v0

    int-to-float p4, p4

    sub-float p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    sub-float/2addr v1, v2

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    sub-float/2addr v3, v4

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 8
    invoke-virtual {p2, p4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v1, v1

    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    sub-float/2addr v1, p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, p4, p1, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    div-int/2addr p4, v0

    int-to-float p4, p4

    sub-float p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    sub-float/2addr v1, v2

    .line 11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    sub-float/2addr v3, v4

    .line 13
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 14
    invoke-virtual {p2, p4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v1, v1

    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    sub-float/2addr v1, p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, p4, p1, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 16
    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private mapIndexToImagePosition(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
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
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->isStopPoint(I)Z

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
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->isStopPoint(I)Z

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

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 1
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public initStyle(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->initStyle(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703e8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    return-void
.end method

.method public isEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isImagePoint(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSingleValueLine(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStopPoint(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1f

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public mapPositionToValue(F)Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    sub-float/2addr p0, p1

    .line 3
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    mul-int/lit8 p0, p0, 0xa

    const/4 p1, 0x0

    const/16 v0, 0x3de

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapPositionToValue(F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public mapValueToPosition(Ljava/lang/Integer;)F
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rsub-int p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p0

    div-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p0

    return p0
.end method

.method public measureWidth(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->isStopPoint(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:F

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:F

    return p0
.end method

.method public onChangeValue(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPositionSelect(Landroid/view/View;FI)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapPositionToValue(F)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mTrackedFocusPosition:I

    if-eq p2, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mTrackedFocusPosition:I

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mCurrentMode:I

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackFocusPositionChanged(II)V

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mCurrentMode:I

    invoke-virtual {p2, p3, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mCurrentMode:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 10
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method
