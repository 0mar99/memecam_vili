.class public Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "ExtraCustomWBListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final FRONT_PART_COUNT:I = 0x14

.field public static final GAP_K_LONG_VALUE:I = 0x1f4

.field public static final GAP_K_SHOT_VALUE:I = 0xc8

.field public static final LATTER_PART_COUNT:I = 0x4

.field public static final MAX_K_VALUE:I = 0x1f40

.field public static final MIDDLE_K_VALUE:I = 0x1770

.field public static final MIN_K_VALUE:I = 0x7d0

.field public static final TOTAL_COUNT:I = 0x19

.field public static WB_VALUES:[I

.field public static final mLables:[Ljava/lang/String;

.field public static wbValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCurrentIndex:I

.field public mCurrentMode:I

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field public mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x19

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->WB_VALUES:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 2
    sget-object v2, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->WB_VALUES:[I

    mul-int/lit16 v3, v1, 0xc8

    add-int/lit16 v3, v3, 0x7d0

    aput v3, v2, v1

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->WB_VALUES:[I

    add-int/lit8 v3, v1, -0x14

    mul-int/lit16 v3, v3, 0x1f4

    add-int/lit16 v3, v3, 0x1770

    aput v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->WB_VALUES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->wbValues:Ljava/util/List;

    const-string v0, "2000"

    const-string v1, "3600"

    const-string v2, "5200"

    const-string v3, "8000"

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mLables:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentManuallyWB;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentIndex:I

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    .line 4
    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentMode:I

    .line 5
    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->initStyle(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    .line 8
    iget-object p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private changeValue(I)V
    .locals 9

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapPositionToValue(F)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->setCustomWB(II)V

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentMode:I

    .line 7
    invoke-interface/range {v3 .. v8}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method private drawText(FILandroid/graphics/Canvas;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mLables:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapIndexToTextPosition(I)I

    move-result p2

    aget-object p2, v0, p2

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p4, v4, :cond_2

    .line 5
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    iget v5, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p3, p4, p1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    cmpl-float v2, p4, v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    neg-int p4, p4

    div-int/2addr p4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v4

    add-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p3, p4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    cmpl-float p4, p4, v1

    if-nez p4, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v4

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p3, p4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    :cond_1
    :goto_0
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float p4, p4

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    sub-float/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iget-object p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2, p1, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 10
    :cond_2
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    iget v5, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p3, p4, p1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 11
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    cmpl-float v2, p4, v2

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    neg-int p4, p4

    div-int/2addr p4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v4

    add-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p3, p4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_3
    cmpl-float p4, p4, v1

    if-nez p4, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v4

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p3, p4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    :cond_4
    :goto_1
    iget p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    neg-float p4, p4

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    sub-float/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iget-object p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2, p1, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private mapIndexToTextPosition(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0x10

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 p0, 0x18

    if-ne p1, p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
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
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->isStopPoint(I)Z

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
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->isStopPoint(I)Z

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method public isEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStopPoint(I)Z
    .locals 0

    .line 1
    rem-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_1

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isTextPoint(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mapPositionToValue(F)Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 4
    sget-object p1, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->wbValues:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapPositionToValue(F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public mapValueToPosition(Ljava/lang/Integer;)F
    .locals 0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->wbValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p0

    return p0
.end method

.method public measureWidth(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->isStopPoint(I)Z

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
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentIndex:I

    if-ne p2, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mCurrentIndex:I

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->changeValue(I)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method
