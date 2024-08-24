.class public Lcom/android/camera/zoommap/ZoomMapController;
.super Ljava/lang/Object;
.source "ZoomMapController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZoomMap"

.field public static final ZOOM_RATIO_THRESHOLD:F = 15.0f


# instance fields
.field public mActivityBase:Lcom/android/camera/ActivityBase;

.field public mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field public mExiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

.field public mGlTextureView:Lcom/android/camera/ui/GLTextureView;

.field public mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLastAnimatorSet:Landroid/animation/AnimatorSet;

.field public mMainHandler:Landroid/os/Handler;

.field public mMapRect:Landroid/graphics/Rect;

.field public mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreviewRatio:Ljava/lang/String;

.field public mPreviewSize:Landroid/util/Size;

.field public mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

.field public mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

.field public mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mWindowSize:Landroid/util/Size;

.field public mZoomMapSurface:Landroid/view/Surface;

.field public mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mZoomRatio:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;ZLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Z",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mExiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->initGLTextureView(Lcom/android/camera/ActivityBase;)V

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    .line 10
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1x1"

    .line 11
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p1, 0xa3

    .line 12
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/zoommap/ZoomMapController;->computePreviewAndWindowSize(Ljava/lang/String;Ljava/util/List;Z)V

    .line 14
    new-instance p1, Lcom/android/camera/zoommap/RegionHelper;

    iget-object p3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    iget-object p4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    invoke-direct {p1, p3, p4, p2}, Lcom/android/camera/zoommap/RegionHelper;-><init>(Landroid/view/View;Landroid/util/Size;Z)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/ui/GLTextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->drawZoomMap()V

    return-void
.end method

.method private addPipWindowTextureViewIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ZoomMap"

    const-string v1, "addPipWindowTextureViewIfNeeded"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    invoke-virtual {v1}, Lcom/android/camera/zoommap/RegionHelper;->getPipWindowDefaultLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    const v3, 0x7f0a00b7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraRootView;

    const v3, 0x7f0a0512

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    const-string p0, "addPipWindowTextureViewIfNeeded parent is null"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v2, p0, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private animatorInMapView()V
    .locals 8

    const-string v0, "ZoomMap"

    const-string v1, "animatorInMapView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 10
    new-instance v5, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v5, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 13
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    aput-object v2, v5, v1

    .line 15
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 16
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController$2;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 18
    iput-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animatorOutMapView()V
    .locals 7

    const-string v0, "ZoomMap"

    const-string v1, "animatorOutMapView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 10
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    .line 12
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 13
    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    .line 15
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 16
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController$3;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 18
    iput-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private computePreviewAndWindowSize(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-nez v0, :cond_5

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->initPreviewSizeForJ1S(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/zoommap/ZoomMapController;->initPreviewSizeByPreferSizeList(Ljava/lang/String;Ljava/util/List;Z)V

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    if-nez p2, :cond_4

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->initPreviewSizeForK1(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 8
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->initPreviewSizeForK1(Ljava/lang/String;)V

    return-void
.end method

.method private drawZoomMap()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mExiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ZoomMap"

    if-eqz v0, :cond_0

    const-string p0, "drawZoomMap ignore, exiting"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "drawZoomMap ignore, frame not ready"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "drawZoomMap ignore, don\'t need draw"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->initZoomMapSurfaceTextureIfNeeded()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapRenderManager;

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v5, p0, Lcom/android/camera/zoommap/ZoomMapController;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v6, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/zoommap/ZoomMapRenderManager;-><init>(Landroid/graphics/SurfaceTexture;Lcom/android/gallery3d/ui/ExtTexture;Lcom/android/gallery3d/ui/ResourceTexture;Landroid/util/Size;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_4

    const-string p0, "drawZoomMap ignore, surfaceTexture is released"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {v0, p0}, Lcom/android/camera/zoommap/ZoomMapRenderManager;->drawZoomMap(Lcom/android/gallery3d/ui/GLCanvas;)Z

    return-void
.end method

.method private getOptimalSize(FLjava/util/List;)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    .line 2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initGLTextureView(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/GLTextureView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/GLTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    .line 2
    new-instance p1, Lcom/android/camera/zoommap/ZoomMapController$1;

    invoke-direct {p1, p0}, Lcom/android/camera/zoommap/ZoomMapController$1;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initPreviewSizeByPreferSizeList(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "20x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "16x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "4x3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "1x1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v5, 0x3faaaaab

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    const p3, 0x3fe38e39

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const-string v0, "x"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 4
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 5
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v1, v0

    goto :goto_2

    :catch_0
    :cond_1
    move v1, v6

    .line 6
    :goto_2
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ratio use default, previewRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomMap"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move v5, v1

    .line 8
    :goto_3
    invoke-direct {p0, v5, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 9
    invoke-direct {p0, p3, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    goto :goto_5

    :cond_3
    const p1, 0x400e38e4

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 11
    invoke-direct {p0, p3, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    goto :goto_5

    .line 12
    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    goto :goto_5

    .line 13
    :cond_5
    invoke-direct {p0, v5, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    goto :goto_5

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_7

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    goto :goto_4

    .line 15
    :cond_7
    invoke-direct {p0, v5, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 16
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/zoommap/ZoomMapController;->getOptimalSize(FLjava/util/List;)Landroid/util/Size;

    move-result-object p1

    :goto_5
    if-eqz p1, :cond_8

    .line 17
    new-instance p2, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_3
        0xd1ef -> :sswitch_2
        0x171fa6 -> :sswitch_1
        0x177d7f -> :sswitch_0
    .end sparse-switch
.end method

.method private initPreviewSizeForJ1S(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xc6aa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0xd1ef

    if-eq v0, v1, :cond_1

    const v1, 0x171fa6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "16x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "4x3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v0, "1x1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/16 v0, 0xe4

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    .line 2
    new-instance p1, Landroid/util/Size;

    const/16 v1, 0x194

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    goto :goto_2

    .line 3
    :cond_4
    new-instance p1, Landroid/util/Size;

    const/16 v1, 0x130

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    goto :goto_2

    .line 4
    :cond_5
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 5
    :goto_2
    new-instance p1, Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    return-void
.end method

.method private initPreviewSizeForK1(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "20x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "16x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "4x3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "1x1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/16 v0, 0x198

    const/16 v3, 0x132

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v0, 0x220

    if-eq p1, v1, :cond_1

    .line 2
    new-instance p1, Landroid/util/Size;

    const/16 v1, 0x2a8

    invoke-direct {p1, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    goto :goto_2

    .line 4
    :cond_1
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 5
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    goto :goto_2

    .line 6
    :cond_2
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 7
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    goto :goto_2

    .line 8
    :cond_3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 9
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, v3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_3
        0xd1ef -> :sswitch_2
        0x171fa6 -> :sswitch_1
        0x177d7f -> :sswitch_0
    .end sparse-switch
.end method

.method private initZoomMapSurfaceTextureIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-direct {v0}, Lcom/android/camera/zoommap/ZoomMapCanvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    .line 3
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initZoomMapSurfaceTextureIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    .line 5
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomMap"

    .line 6
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 8
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 12
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080127

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    return-void
.end method

.method private release()V
    .locals 2

    const-string v0, "ZoomMap"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0Oo;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private releaseSurfaceTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    const-string v1, "ZoomMap"

    if-nez v0, :cond_0

    const-string p0, "releaseSurfaceTexture: Null GLCanvas!"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "releaseSurfaceTexture: E"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->deleteSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 7
    iput-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 10
    iput-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 13
    iput-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    .line 16
    iput-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapCanvas;->deleteProgram()V

    .line 18
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    const-string p0, "releaseSurfaceTexture: X"

    .line 19
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePipWindowTextureView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0O0;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomMap"

    const-string v0, "createZoomMapSurfaceIfNeeded: OnFrameAvailable"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->addPipWindowTextureViewIfNeeded()V

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapShow()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->animatorInMapView()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->animatorOutMapView()V

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mExiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->releaseSurfaceTexture()V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    const-string v0, "ZoomMap"

    const-string v1, "removePipWindowTextureView: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const-string p0, "removePipWindowTextureView: X"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createZoomMapSurfaceIfNeeded()Landroid/view/Surface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createZoomMapSurfaceIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomMap"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 5
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    .line 6
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0o0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0o0;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;

    invoke-direct {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO00o;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO00o;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getWindowSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mWindowSize:Landroid/util/Size;

    return-object p0
.end method

.method public onModuleDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->release()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->removePipWindowTextureView()V

    return-void
.end method

.method public onZoomRatioUpdate(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomRatio:F

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    invoke-virtual {p0}, Lcom/android/camera/zoommap/RegionHelper;->initTranslation()V

    :cond_0
    return-void
.end method

.method public setMapRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0OO;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO0OO;-><init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMapRect update to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mZoomRatio = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomRatio:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomMap"

    .line 9
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    if-eqz p1, :cond_4

    .line 11
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/camera/zoommap/ZoomMapRenderManager;->updateZoomMapRect(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method
