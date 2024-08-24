.class public final Lmiuix/internal/util/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayHelper"


# instance fields
.field public mDensity:F

.field public mDensityDpi:I

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mHeightDps:I

.field public mHeightPixels:I

.field public mWidthDps:I

.field public mWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/util/DisplayHelper;->getAndroidScreenProperty(Landroid/content/Context;)V

    return-void
.end method

.method private getAndroidScreenProperty(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget-object p1, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    .line 5
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    .line 6
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    .line 7
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    int-to-float p1, v0

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 8
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    int-to-float p1, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    return p0
.end method

.method public getDensityDpi()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    return p0
.end method

.method public getDm()Landroid/util/DisplayMetrics;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/util/DisplayHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public getHeightDps()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    return p0
.end method

.method public getHeightPixels()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    return p0
.end method

.method public getWidthDps()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    return p0
.end method

.method public getWidthPixels()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    return p0
.end method

.method public info()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c4f\u5e55\u5bbd\u5ea6\uff08\u50cf\u7d20\uff09\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/internal/util/DisplayHelper;->mWidthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u9ad8\u5ea6\uff08\u50cf\u7d20\uff09\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mHeightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u5bc6\u5ea6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u5bc6\u5ea6\uff08dpi\uff09\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mDensityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u5bbd\u5ea6\uff08dp\uff09\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/internal/util/DisplayHelper;->mWidthDps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u9ad8\u5ea6\uff08dp\uff09\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/internal/util/DisplayHelper;->mHeightDps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
