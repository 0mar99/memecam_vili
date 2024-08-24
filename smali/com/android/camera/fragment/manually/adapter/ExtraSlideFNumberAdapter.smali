.class public Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "ExtraSlideFNumberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENTRY_COUNT_TOTAL:I


# instance fields
.field public mCurrentValue:Ljava/lang/String;

.field public mEnable:Z

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

.field public mValidFNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->ENTRY_COUNT_TOTAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    .line 3
    sget-object p3, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mValidFNumbers:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->initStyle(Landroid/content/Context;)V

    return-void
.end method

.method private isFlagPosition(I)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultFNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length p0, p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
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
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->isFlagPosition(I)Z

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
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->isFlagPosition(I)Z

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
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 1
    sget p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->ENTRY_COUNT_TOTAL:I

    return p0
.end method

.method public isEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mapPositionToValue(F)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 4
    sget-object p1, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public mapValueToPosition(Ljava/lang/String;)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mValidFNumbers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public measureWidth(I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->isFlagPosition(I)Z

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
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    int-to-float p2, p1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 7
    invoke-interface {v0, p2, v1}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onZoomItemSlideOn(IZ)V

    .line 9
    :cond_1
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mEnable:Z

    return-void
.end method
