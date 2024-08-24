.class public Lcom/android/camera/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"

# interfaces
.implements Lcom/android/camera/display/IDisplayRect;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayAdapter"


# instance fields
.field public mDisplayRect:Lcom/android/camera/display/IDisplayRect;

.field public final mParameter:Lcom/android/camera/display/DisplayParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWide()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundThin()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fe38e39

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundThin()I

    move-result v3

    iput v3, v2, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    .line 5
    iget-object v2, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWide()I

    move-result v3

    iput v3, v2, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    :cond_0
    const v2, 0x402aaaab

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 6
    new-instance v0, Lcom/android/camera/display/thin/DisplayThinPreviewRect;

    iget-object v1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0, v1}, Lcom/android/camera/display/thin/DisplayThinPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    .line 7
    new-instance v0, Lcom/android/camera/display/normal/DisplayCommonPreviewRect;

    iget-object v1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0, v1}, Lcom/android/camera/display/normal/DisplayCommonPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    :cond_2
    const v1, 0x3faaaaab

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 8
    new-instance v0, Lcom/android/camera/display/wide/pad/DisplayPadPreviewRect;

    iget-object v1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0, v1}, Lcom/android/camera/display/wide/pad/DisplayPadPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 9
    new-instance v0, Lcom/android/camera/display/wide/v1/DisplayPreviewRectV1;

    iget-object v1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0, v1}, Lcom/android/camera/display/wide/v1/DisplayPreviewRectV1;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 10
    new-instance v0, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;

    iget-object v1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0, v1}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    .line 11
    :goto_0
    sget-object v0, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", class = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBackgroundLeftMargin()I

    move-result p0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getDragDistanceFix()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getDragLayoutTopMargin()I

    move-result p0

    return p0
.end method

.method public getMarginEnd()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMoreModeRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result p0

    return p0
.end method
