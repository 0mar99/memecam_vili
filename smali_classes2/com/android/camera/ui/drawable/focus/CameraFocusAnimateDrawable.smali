.class public Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
.super Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final CENTER_ALPHA:I = 0xf0

.field public static final CENTER_BASE_RADIUS:I

.field public static final EV_ADJUST_ALPHA:I = 0x7f

.field public static OUTSIDE_DRAWABLE_HALF_LEN:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mEvAdjustVisible:I

.field public mMiddleX:F

.field public mMiddleY:F

.field public mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field public mSuccessAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->TAG:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x3f2a3d71    # 0.665f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    sub-int/2addr v0, v2

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702f5

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    .line 4
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v0, 0x3faa3d71    # 1.33f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xff

    invoke-virtual {p1, v3, v2, v4, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v2, v1, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v2, v1, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xf0

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private dismissDirectly()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0o(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->getVisible()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic OooO0oO(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public cancelResetCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelSuccessAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->resetPaint()V

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->initialize(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->loadResource(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenter(II)V
    .locals 3

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    int-to-float p2, p2

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setEvAdjustVisible(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setEvChanged(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(ZLandroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setEvLineVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(ZLandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEvTextVisible(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setAEAFIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setOrientation(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->getVisible()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooO00o;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public start3ALockSuccessAnimation()Landroid/animation/Animator;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start3ALockSuccessAnimation() called"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->start3ALockSuccessAnimation()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p0, 0x0

    return-object p0
.end method

.method public startEvAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->playVisibleAnimation()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public startEvShowAgainAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->resetDrawable()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooO0O0;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public startFocusFailAnimation()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->dismissDirectly()V

    .line 2
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    return-void
.end method

.method public startFocusSuccessAnimation(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 8
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    .line 9
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-ne p1, p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 12
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 13
    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->start3ALockSuccessAnimation()Landroid/animation/Animator;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startNormalFocusSuccessAnimation()V

    :goto_0
    return-void
.end method

.method public startFocusingAnimation()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusingAnimation()V

    return-void
.end method

.method public startNormalFocusSuccessAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startNormalFocusSuccessAnimation()V

    return-void
.end method

.method public startTouchDownAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusViewColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusViewColor:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
