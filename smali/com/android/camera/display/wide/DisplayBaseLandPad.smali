.class public abstract Lcom/android/camera/display/wide/DisplayBaseLandPad;
.super Ljava/lang/Object;
.source "DisplayBaseLandPad.java"

# interfaces
.implements Lcom/android/camera/display/IDisplayRect;


# instance fields
.field public final mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

.field public mRectCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mRectCache:Landroid/util/SparseArray;

    return-void
.end method

.method private match(F)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 2
    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    int-to-float v2, v0

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v1, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, p0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 6
    iget p0, p0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr v0, p0

    invoke-direct {v2, v1, p0, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mRectCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x3ed639d7

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->match(F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->match(F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->match(F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->match(F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->match(F)Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mRectCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayRect:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uiStyle:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDisplayRect"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMarginEnd()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/wide/DisplayBaseLandPad;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/display/wide/DisplayBaseLandPad;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
