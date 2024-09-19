.class public Lcom/android/camera/ui/ZoomView;
.super Landroid/view/View;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAnnounceRunnable:Ljava/lang/Runnable;

.field public mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

.field public mDownPoint:F

.field public mIsInited:Z

.field public mIsVer:Z

.field public mIsVisible:Z

.field public mIsZoomMoving:Z

.field public mMaxZoomRatio:F

.field public mMinZoomRatio:F

.field public mPointView:Landroid/graphics/Point;

.field public mSupportVideoSat:Z

.field public mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/ZoomView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView;->setAnnounceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAnnounceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/ui/ZoomView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/ZoomView$1;-><init>(Lcom/android/camera/ui/ZoomView;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public directShow()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getCurrentZoomRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->getCurrentZoomRatio()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->reset()V

    :cond_1
    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iget v2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    .line 5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public initDrawable(IZ)V
    .locals 2

    .line 1
    iput-boolean p2, p0, Lcom/android/camera/ui/ZoomView;->mIsVer:Z

    .line 2
    new-instance p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsVer:Z

    invoke-direct {p2, v0, v1, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;-><init>(Landroid/content/Context;ZI)V

    iput-object p2, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    .line 3
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    return p0
.end method

.method public isZoomMoving()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mAnnounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3c5e7206    # 0.01357699f

    const/16 v3, 0xa8

    if-eq p1, v3, :cond_2

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const p1, -0x43a18dfa    # -0.01357699f

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSmoothSpeed(F)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSmoothSpeed(F)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    .line 7
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_4

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation(Z)V

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->containsSliderTouchRect(Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->setGestureDetectorEnable(Z)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    if-nez p1, :cond_4

    return v1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/camera/ui/ZoomView;->mDownPoint:F

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->move(Landroid/graphics/Point;F)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mDownPoint:F

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-interface {p1}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->onZoomTouchUp()V

    .line 13
    iget-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    if-nez p1, :cond_6

    return v1

    .line 14
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    .line 15
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation(Z)V

    goto :goto_1

    .line 16
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVer:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mDownPoint:F

    .line 17
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-interface {p0}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->onZoomTouchDown()V

    :goto_1
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public reInit()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->reset()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setCurrentZoomRatio(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setSupportVideoSat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mSupportVideoSat:Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSupportVideoSat(Z)V

    :cond_0
    return-void
.end method

.method public setZoomValueChangeListener(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    return-void
.end method

.method public show(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setOrientation(I)V

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    :cond_0
    return-void
.end method
