.class public Lcom/android/camera/ui/DocumentView;
.super Landroid/view/View;
.source "DocumentView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DocumentView"

.field public static final THRESHOLD:I = 0x12


# instance fields
.field public isHidePath:Z

.field public mDisplaySize:Landroid/util/Size;

.field public mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

.field public mLayerPaint:Landroid/graphics/Paint;

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;

.field public mPreviewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/DocumentView;->initPaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    .line 9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    invoke-direct {p0}, Lcom/android/camera/ui/DocumentView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    const v0, 0xfffce16

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public hideOrShowPath(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DocumentView;->isHidePath:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setDisplaySize(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplaySize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/DocumentView;->isHidePath:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    const-string v2, "DocumentView"

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    const-string/jumbo p0, "preview size is NULL!"

    .line 4
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v6, [Landroid/animation/PropertyValuesHolder;

    new-array v1, v6, [F

    const/4 v7, 0x0

    aput v7, v1, v5

    const-string v7, "alpha"

    .line 7
    invoke-static {v7, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 8
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v6, [F

    aput v3, v8, v5

    .line 9
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v1, v5

    .line 10
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 11
    iget-object v7, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v8, v4, [Landroid/animation/Animator;

    aput-object v0, v8, v5

    aput-object v1, v8, v6

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/camera/Util;->getFlickerDuration()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 18
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_6

    .line 19
    array-length v3, p1

    move v8, v5

    :goto_3
    if-ge v8, v3, :cond_6

    .line 20
    aget v9, p1, v8

    mul-float/2addr v9, v7

    aput v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 21
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateDocument: width = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ratio = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", points = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    aget v3, p1, v5

    const/high16 v7, 0x41900000    # 18.0f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    aget v3, p1, v6

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    int-to-float v0, v0

    aget v3, p1, v4

    sub-float v3, v0, v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    const/4 v3, 0x3

    aget v3, p1, v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    const/4 v3, 0x4

    aget v3, p1, v3

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    int-to-float v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    sub-float v1, v0, v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_7

    const/4 v1, 0x6

    aget v1, p1, v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_7

    const/4 v1, 0x7

    aget v1, p1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    const-string/jumbo p1, "updateDocument: reset path"

    .line 25
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    aget v1, p1, v5

    aget v2, p1, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    array-length v0, p1

    div-int/2addr v0, v4

    move v1, v6

    :goto_4
    if-ge v1, v0, :cond_8

    mul-int/lit8 v2, v1, 0x2

    .line 31
    aget v3, p1, v2

    add-int/2addr v2, v6

    .line 32
    aget v2, p1, v2

    .line 33
    iget-object v4, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 36
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    return-void
.end method
