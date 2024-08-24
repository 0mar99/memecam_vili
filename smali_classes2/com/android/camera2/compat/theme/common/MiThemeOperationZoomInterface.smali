.class public interface abstract Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationZoomInterface.java"


# virtual methods
.method public getIndicatorColor()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getInnerZoomViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOuterSingleZoomViewType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getOuterZoomViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getShadowStyleRes()I
    .locals 0

    const p0, 0x7f130172

    return p0
.end method

.method public getSlideBackgroundAlpha()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSlideIndicatorColor()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getZoomRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public isSupportSlideViewShowValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
