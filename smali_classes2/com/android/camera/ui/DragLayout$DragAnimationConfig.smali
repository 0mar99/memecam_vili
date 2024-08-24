.class public Lcom/android/camera/ui/DragLayout$DragAnimationConfig;
.super Ljava/lang/Object;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/DragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragAnimationConfig"
.end annotation


# instance fields
.field public mAlphaThreshold:F

.field public mBgAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBottomMargin:I

.field public mCornerRadiusRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisappearAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisappearRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDragThreshold:F

.field public mDuration:I

.field public mSpringDistance:F

.field public mTotalDragDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDuration:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    .line 6
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07065b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    .line 7
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07065c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    .line 9
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07065a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mCornerRadiusRange:Landroid/util/Range;

    .line 10
    new-instance v0, Landroid/util/Range;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearAlphaRange:Landroid/util/Range;

    .line 11
    new-instance v0, Landroid/util/Range;

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayAlphaRange:Landroid/util/Range;

    .line 12
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBgAlphaRange:Landroid/util/Range;

    .line 13
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mAlphaThreshold:F

    return-void
.end method


# virtual methods
.method public calDragLayoutHeight(Landroid/content/Context;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMoreItemBottomMargin(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPopupTopMargin(Landroid/content/Context;)I

    move-result v2

    .line 4
    invoke-static {p2}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRow4PopupStyle(I)I

    move-result p2

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v4

    const v5, 0x7f07062a

    const/4 v6, 0x1

    const v7, 0x7f07062b

    if-eqz v4, :cond_3

    if-ne v3, v6, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    const/4 v3, 0x3

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v4, v8, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    .line 14
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    invoke-static {v3}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    mul-int/2addr v1, p2

    sub-int/2addr p2, v6

    mul-int/2addr v0, p2

    add-int/2addr v1, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->getDragDistanceFix()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    .line 16
    sget-object p1, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTotalDragDistance "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result p1

    add-int/2addr v1, v0

    mul-int/2addr v1, p2

    add-int/2addr p1, v1

    add-int/2addr p1, v2

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getDragDistanceFix()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    :goto_1
    return-void
.end method

.method public getBgAlphaRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBgAlphaRange:Landroid/util/Range;

    return-object p0
.end method

.method public getBottomMargin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    return p0
.end method

.method public getCornerRadiusRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mCornerRadiusRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDisappearAlphaRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearAlphaRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDisappearDistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getDisappearRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDisplayAlphaRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayAlphaRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDisplayDistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getDisplayRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDragThreshold()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDuration:I

    return p0
.end method

.method public getMaxDragDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    add-float/2addr v0, p0

    return v0
.end method

.method public getPopupTopMargin(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070635

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 2

    .line 1
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public getSpringDistance()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    return p0
.end method

.method public getTotalDragDistance()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    return p0
.end method
