.class public Lcom/android/camera/fragment/vv/FragmentSlowMotionView;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentSlowMotionView.java"

# interfaces
.implements Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;
.implements Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;


# static fields
.field public static final DETECTION_AREA_GAIN:I = 0x10

.field public static final FRAGMENT_INFO:I = 0xffffff3

.field public static final RESOLUTION_WIDTH:F = 720.0f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRectAnimator(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/MotionDetectionView;->cencelMotionDetectionRectAnimator(Z)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffffff3

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00ba

    return p0
.end method

.method public getMotionDetectionArea()Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v5, v1

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 6
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x3

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x3

    sub-int/2addr v6, v0

    int-to-float v0, v6

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->rect:Landroid/graphics/Rect;

    return-object v2
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a02dd

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/MotionDetectionView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/MotionDetectionView;->setMotionDetectionRectListener(Lcom/android/camera/ui/MotionDetectionView$OnMotionDetectionRectListener;)V

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isNeededHideMotionDetectionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps3840()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps3840()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public motionViewState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->isNeededHideMotionDetectionView()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->getFragmentInto()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    :cond_0
    return-void
.end method

.method public setMotionDetectionCircleAlpha(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ui/MotionDetectionView;->setMotionDetectionCircleAlpha(IZ)V

    :cond_0
    return-void
.end method

.method public setMotionDetectionRectAlpha(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ui/MotionDetectionView;->setMotionDetectionRectAlpha(IZ)V

    :cond_0
    return-void
.end method

.method public setMotionDetectionViewAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p0}, Lcom/android/camera/ui/MotionDetectionView;->setMotionDetectionViewAlpha()V

    :cond_0
    return-void
.end method

.method public setRectPoint(FFFF)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    .line 2
    sget-object v2, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMotionDetection RectPoint   left:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  , top:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  , right: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ,  bottom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    div-float/2addr p2, v1

    float-to-int p2, p2

    div-float/2addr p3, v1

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr p3, v3

    float-to-int p3, p3

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    div-float/2addr p4, v1

    float-to-int p4, p4

    add-int/lit8 p4, p4, 0x10

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->rect:Landroid/graphics/Rect;

    .line 5
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackMotionDetectionRect()V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->getFragmentInto()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_0
    return-void
.end method

.method public updateMotionDetection(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MotionDetectionView;->cencelMotionDetectionRectAnimator(Z)V

    .line 3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    new-instance v2, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xc8

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f8ccccd    # 1.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f8ccccd    # 1.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x1f4

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 8
    new-instance v3, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;->mMotionDetectionView:Lcom/android/camera/ui/MotionDetectionView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
