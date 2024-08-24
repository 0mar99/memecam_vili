.class public abstract Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
.super Ljava/lang/Object;
.source "BaseHorizontalZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BaseHorizontalZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HorizontalDrawAdapter"
.end annotation


# instance fields
.field public mCurrentLineHalfHeight:F

.field public mCurrentLineIllegalHalfHeight:F

.field public mCurrentLineSelectHalfHeight:F

.field public mCurrentValue:Ljava/lang/String;

.field public mDegree:F

.field public mIllegalLineHalfHeight:F

.field public mIllegalLinePaint:Landroid/graphics/Paint;

.field public mIsRSL:Z

.field public mLineColorIllegal:I

.field public mLineColorNormal:I

.field public mLineColorSelect:I

.field public mLineColorStop:I

.field public mLineHalfHeight:F

.field public mLineIllegalMovingHalfHeight:F

.field public mLineMovingHalfHeight:F

.field public mLineSelectHalfHeight:F

.field public mLineSelectMovingHalfHeight:F

.field public mLineSelectWidth:F

.field public mLineStopPointWidth:F

.field public mLineTextGap:F

.field public mLineWidth:F

.field public mNeedIllegalLine:Z

.field public mNormalPaint:Landroid/graphics/Paint;

.field public mRotateRate:F

.field public mSelectPaint:Landroid/graphics/Paint;

.field public mSpaceTextStyle:Landroid/text/style/AbsoluteSizeSpan;

.field public mStopPointPaint:Landroid/graphics/Paint;

.field public mTextBoldStyle:Landroid/text/style/StyleSpan;

.field public mTextColor:I

.field public mTextFontStyle:Landroid/text/style/TypefaceSpan;

.field public mTextPaint:Landroid/text/TextPaint;

.field public mTextSize:F

.field public mTotalWidth:F

.field public mViewCurrentState:I

.field public mViewLastState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mViewLastState:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mViewCurrentState:I

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 0

    return-void
.end method

.method public draw(ILandroid/graphics/Canvas;ZIF)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mViewCurrentState:I

    if-eqz p4, :cond_2

    const/4 p1, 0x1

    if-eq p4, p1, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    iget p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectMovingHalfHeight:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    .line 3
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineHalfHeight:F

    iget p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineMovingHalfHeight:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNeedIllegalLine:Z

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLineHalfHeight:F

    iget p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineIllegalMovingHalfHeight:F

    sub-float/2addr p2, p1

    mul-float/2addr p5, p2

    add-float/2addr p1, p5

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineIllegalHalfHeight:F

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    iget p2, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectMovingHalfHeight:F

    sub-float/2addr p2, p1

    mul-float/2addr p5, p2

    add-float/2addr p1, p5

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    .line 7
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineHalfHeight:F

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    .line 8
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLineHalfHeight:F

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineIllegalHalfHeight:F

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    .line 10
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineHalfHeight:F

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    .line 11
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLineHalfHeight:F

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineIllegalHalfHeight:F

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract getAlign(I)Landroid/graphics/Paint$Align;
.end method

.method public getAvailableWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTotalWidth:F

    return p0
.end method

.method public abstract getCount()I
.end method

.method public initStyle(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014a

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectMovingHalfHeight:F

    const v1, 0x7f070149

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectHalfHeight:F

    const v1, 0x7f070148

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineMovingHalfHeight:F

    const v1, 0x7f070147

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineHalfHeight:F

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v3

    const v4, 0x7f07014c

    invoke-interface {v3, p1, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:F

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v3

    const v4, 0x7f070146

    invoke-interface {v3, p1, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:F

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v3

    const v4, 0x7f07014b

    invoke-interface {v3, p1, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectWidth:F

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorSelect:I

    const p1, -0x4c000001

    .line 11
    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorIllegal:I

    .line 12
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v3, 0x7f0603bf

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorNormal:I

    .line 13
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v3, 0x7f0603c1

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorStop:I

    .line 14
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-direct {p1, v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSpaceTextStyle:Landroid/text/style/AbsoluteSizeSpan;

    .line 15
    new-instance p1, Landroid/text/style/TypefaceSpan;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextFontStyle:Landroid/text/style/TypefaceSpan;

    .line 16
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextBoldStyle:Landroid/text/style/StyleSpan;

    const p1, 0x7f0708ff

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextSize:F

    const p1, 0x7f0603bb

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextColor:I

    const p1, 0x7f0708fc

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineTextGap:F

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNormalPaint:Landroid/graphics/Paint;

    .line 21
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mStopPointPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->updateNormalPaint()V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    .line 26
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorSelect:I

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-boolean p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNeedIllegalLine:Z

    const/high16 v4, -0x80000000

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLinePaint:Landroid/graphics/Paint;

    .line 30
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLinePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorIllegal:I

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v6, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIllegalLineHalfHeight:F

    const p1, 0x7f070353

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineIllegalMovingHalfHeight:F

    .line 35
    :cond_0
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 36
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 40
    iget-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v6, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 41
    iget-object p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public isSingleValueLine(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public measureGap(I)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTotalWidth:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public abstract measureWidth(I)F
.end method

.method public setAvailableWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTotalWidth:F

    return-void
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRotate(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mDegree:F

    return-void
.end method

.method public updateNormalPaint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNormalPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mStopPointPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorStop:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateSelectColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineColorSelect:I

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
