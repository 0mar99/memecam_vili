.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraZoomAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

.field public static final VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F


# instance fields
.field public mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

.field public mContext:Landroid/content/Context;

.field public mDegree:I

.field public mIsRTL:Z

.field public mIsVer:Z

.field public mLastPoint:F

.field public mMaxZoomRatio:F

.field public mMinZoomRatio:F

.field public mSpeed:F

.field public mSupportVideoSat:Z

.field public mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field public mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

.field public mTouchUpAnimator:Landroid/animation/ValueAnimator;

.field public mVideoSATZoomSpline:Landroid/util/Spline;

.field public mZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f8ccccd    # 1.1f
        0x3fe66666    # 1.8f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mContext:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsVer:Z

    .line 7
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsVer:Z

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    .line 8
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsVer:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/camera/ui/drawable/zoom/VerCameraZoomAdjustPaint;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    invoke-direct {p2, p1, v0, p3}, Lcom/android/camera/ui/drawable/zoom/VerCameraZoomAdjustPaint;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Lcom/android/camera/ui/drawable/zoom/HorCameraZoomAdjustPaint;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    invoke-direct {p2, p1, v0, p3}, Lcom/android/camera/ui/drawable/zoom/HorCameraZoomAdjustPaint;-><init>(Landroid/content/Context;ZI)V

    :goto_0
    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    .line 10
    sget-object p1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

    sget-object p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F

    invoke-static {p1, p2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mVideoSATZoomSpline:Landroid/util/Spline;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p1
.end method

.method public static synthetic access$216(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return v0
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Landroid/util/Spline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mVideoSATZoomSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    return p0
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public containsSliderTouchRect(Landroid/graphics/Point;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->getSliderTouchRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentZoomRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

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

.method public move(Landroid/graphics/Point;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsVer:Z

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 3
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    cmpl-float v3, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_2

    int-to-float v3, v1

    sub-float/2addr v3, v2

    cmpl-float v2, v3, v5

    if-lez v2, :cond_3

    :cond_2
    :goto_1
    move v0, v4

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_2

    int-to-float v3, v1

    sub-float/2addr v3, v2

    cmpg-float v2, v3, v5

    if-gez v2, :cond_6

    goto :goto_1

    .line 6
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 7
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_2

    int-to-float v3, v1

    sub-float/2addr v3, v2

    cmpg-float v2, v3, v5

    if-gez v2, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_2

    int-to-float v3, v1

    sub-float/2addr v3, v2

    cmpl-float v2, v3, v5

    if-lez v2, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsVer:Z

    if-eqz v2, :cond_7

    iget v2, p1, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_7
    iget v2, p1, Landroid/graphics/Point;->x:I

    :goto_3
    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    if-nez v0, :cond_9

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->getSpeed(IF)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsRTL:Z

    if-eqz v1, :cond_8

    const/4 v4, -0x1

    :cond_8
    int-to-float v1, v4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    .line 11
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->move(Landroid/graphics/Point;F)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->reset()V

    :cond_3
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->setCurrentZoomRatio(F)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->setOrientation(I)V

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setSmoothSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return-void
.end method

.method public setSupportVideoSat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSupportVideoSat:Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mLastPoint:F

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array p2, v0, [F

    .line 4
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    .line 5
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    new-array p2, v0, [F

    .line 12
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 14
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/xiaomi/compat/animator/ValueAnimatorCompat;->overrideDurationScale(Landroid/animation/ValueAnimator;F)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopTouchUpAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->startSliderBackAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    .line 14
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->setZoomRange(FF)V

    return-void
.end method
