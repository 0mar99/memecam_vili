.class public Lmiuix/core/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowsBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    return-object v0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getWindowsBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getCurrentWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
