.class public Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;
.super Lcom/android/camera/display/wide/DisplayBasePortPad;
.source "DisplayPortraitAdapterV1.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/display/wide/DisplayBasePortPad;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundLeftMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    .line 2
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getBottomBarHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    .line 2
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getBottomHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "4:3"

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getMarginStart()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getTopBarHeight()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getMarginStart()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v4, v4, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v4, p0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_0

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, p0, [I

    .line 2
    fill-array-data p0, :array_1

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f110046
        0x7f11003e
    .end array-data

    :array_1
    .array-data 4
        0x7f110042
        0x7f11003a
    .end array-data
.end method

.method public getMoreModeRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getTopBarHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getMarginStart()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v3, v3, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getMarginEnd()I

    move-result p0

    sub-int/2addr v3, p0

    .line 5
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    const/4 p0, 0x4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    :cond_0
    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070627

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p3, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget p3, p3, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getMoreModeTabRow(IZ)I

    move-result p0

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemWidth(Landroid/content/Context;)I

    move-result p1

    mul-int/2addr p1, p0

    sub-int/2addr p3, p1

    add-int/lit8 p0, p0, 0x1

    div-int/2addr p3, p0

    return p3
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getBottomHeight()I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/display/wide/v1/DisplayPortraitAdapterV1;->getTopBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070854

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    .line 2
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/display/wide/DisplayBasePortPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBasePortPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
