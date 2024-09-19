.class public Lcom/android/camera/fragment/mode/MoreModeHelper;
.super Ljava/lang/Object;
.source "MoreModeHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModeHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderHeightForNormal(Landroid/content/Context;III)I
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getMoreModeRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070626

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070631

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_0
    sub-int/2addr v3, v4

    .line 5
    div-int v4, p3, p2

    rem-int v5, p3, p2

    const/4 v6, 0x1

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    add-int/2addr v4, v5

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v6, v1

    .line 6
    :goto_2
    invoke-static {v2, v6}, Lcom/android/camera/display/Display;->getMoreModeTabRow(IZ)I

    move-result v2

    if-lt v4, v2, :cond_6

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    move v4, v2

    .line 7
    :cond_6
    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getModeHeight(Landroid/content/Context;I)I

    move-result p0

    .line 8
    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeaderHeightForNormal "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v5, v4, p0

    sub-int v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", showHeight = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", itemHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", row = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", preLine = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getModeHeight(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/display/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemHeight(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMoreItemBottomMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/2addr p1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070622

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/display/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public static getPanelWidth(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getMoreModeRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f070622

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070621

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    if-ne p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemWidth(Landroid/content/Context;)I

    move-result v2

    :goto_1
    sub-int v4, v2, v3

    .line 7
    div-int/lit8 v4, v4, 0x2

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07062d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07062e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 10
    :goto_2
    rem-int v6, p4, p3

    .line 11
    div-int/2addr p4, p3

    mul-int p3, p2, v2

    sub-int/2addr v1, p3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    mul-int/lit8 p3, p2, 0x2

    .line 12
    div-int/2addr v1, p3

    .line 13
    invoke-static {p0, p1, p2, p5}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result p2

    if-ne p1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070626

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070631

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    :goto_3
    add-int/2addr p2, p3

    .line 16
    new-instance p3, Landroid/util/Size;

    mul-int/lit8 p5, v1, 0x2

    add-int/2addr v2, p5

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getModeHeight(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p3, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 17
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr p0, v6

    add-int/2addr v1, p0

    .line 18
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p2, p0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v3, p2

    .line 19
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getRow4PopupStyle(I)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMoreModeTabRow()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x3

    if-gt p0, v3, :cond_1

    add-int/lit8 p0, p0, -0x1

    .line 3
    div-int/2addr p0, v2

    add-int/lit8 v0, p0, 0x1

    goto :goto_1

    :cond_1
    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getTopMarginForNormal(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070626

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFooter4PopupStyle(II)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/display/Display;->getMoreModeTabCol(ZZ)I

    move-result v1

    .line 2
    rem-int v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-eqz v4, :cond_2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    if-le p0, p1, :cond_1

    move v0, v3

    :cond_1
    return v0

    :cond_2
    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    if-le p0, p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method
