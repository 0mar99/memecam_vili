.class public Lcom/android/camera/ui/ColorImageView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "ColorImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ColorImageView$GestureCallback;
    }
.end annotation


# instance fields
.field public isNeedTransparent:Z

.field public mColor:I

.field public mExtraCallback:Lcom/android/camera/ui/ColorImageView$GestureCallback;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/ColorImageView;->isNeedTransparent:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/ColorImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/ColorImageView;->isNeedTransparent:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/ColorImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/ui/ColorImageView;->isNeedTransparent:Z

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/ColorImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/ColorImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mExtraCallback:Lcom/android/camera/ui/ColorImageView$GestureCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/ui/ColorImageView$GestureCallback;->canTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mExtraCallback:Lcom/android/camera/ui/ColorImageView$GestureCallback;

    invoke-interface {v0}, Lcom/android/camera/ui/ColorImageView$GestureCallback;->startScroll()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ColorImageView;->mExtraCallback:Lcom/android/camera/ui/ColorImageView$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ColorImageView$GestureCallback;->stopScroll(Landroid/view/MotionEvent;)V

    .line 7
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/ColorImageView;->mColor:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ColorImageView;->isNeedTransparent:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/ColorImageView;->mColor:I

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/ColorImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/ColorImageView;->mColor:I

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/ColorImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorAndRefresh(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;Lcom/android/camera/ui/ColorImageView$GestureCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ColorImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/ColorImageView;->mExtraCallback:Lcom/android/camera/ui/ColorImageView$GestureCallback;

    return-void
.end method

.method public setIsNeedTransparent(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/ColorImageView;->isNeedTransparent:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
