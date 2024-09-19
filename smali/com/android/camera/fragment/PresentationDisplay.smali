.class public Lcom/android/camera/fragment/PresentationDisplay;
.super Ljava/lang/Object;
.source "PresentationDisplay.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;
.implements Lcom/android/camera/protocol/protocols/PresentationSelfie;


# static fields
.field public static final TAG:Ljava/lang/String; = "PresentationDisplay"


# instance fields
.field public mCameraActivity:Lcom/android/camera/Camera;

.field public mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

.field public mCurrentMode:I

.field public mDegree:I

.field public mDisposable:Lio/reactivex/disposables/Disposable;

.field public mTipPresentation:Lcom/android/camera/fragment/TipPresentation;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 3
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/CameraPresentation;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->cancel()V

    :cond_0
    return-void
.end method

.method private addRequestListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/PresentationDisplay;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/PresentationDisplay;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method public static getPresentationDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 3

    const-string v0, "display"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "android.hardware.display.category.PRESENTATION"

    .line 2
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 3
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 p0, 0x0

    .line 4
    aget-object p0, v1, p0

    return-object p0

    :cond_0
    const-string v1, "media_router"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private initCameraPresentation(Landroid/content/Context;II)Lcom/android/camera/fragment/CameraPresentation;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->getPresentationDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/CameraPresentation;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/android/camera/fragment/CameraPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t find presentation display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initTipPresentation(Landroid/content/Context;)Lcom/android/camera/fragment/TipPresentation;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->getPresentationDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/TipPresentation;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/fragment/TipPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t find presentation display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeRequestListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->show(I)V

    return-void
.end method

.method public animateCapture()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->animateCapture()V

    :cond_0
    return-void
.end method

.method public canProvide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->removeRequestListener()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->cancel()V

    .line 6
    sget-object v0, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "presentation display cancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    :cond_1
    return-void
.end method

.method public cancelFlatSelfiePresentation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/display/device/FlatSelfieManager;->getLegacyPresentations()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Presentation;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/app/Presentation;->cancel()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public hideAutoHibernation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/PresentationDisplay;->show(I)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->hideAutoHibernation()V

    :cond_1
    return-void
.end method

.method public hideDelayNumber()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->hideDelayNumber()V

    :cond_0
    return-void
.end method

.method public isEnableClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x12c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooOo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooooOo;-><init>(Lcom/android/camera/fragment/PresentationDisplay;)V

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDisposable:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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
    iput p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/16 p1, 0x168

    rsub-int p2, p2, 0x168

    if-ltz p2, :cond_0

    .line 1
    rem-int/2addr p2, p1

    goto :goto_0

    :cond_0
    rem-int/2addr p2, p1

    add-int/2addr p2, p1

    .line 2
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-ne p2, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->isInited()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setRotation(F)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    sub-int v0, p2, v0

    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_5

    add-int/lit16 v0, v0, -0x168

    :cond_5
    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    add-int/lit16 v2, p2, 0x168

    .line 9
    rem-int/2addr v2, p1

    .line 10
    iget v3, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-eqz v0, :cond_9

    if-ne v3, p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move p1, v2

    :goto_4
    move v2, p1

    goto :goto_6

    :cond_9
    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    move p1, v3

    :goto_5
    move v1, p1

    .line 11
    :goto_6
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 12
    new-instance p1, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object p1

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    const/16 v0, 0x12c

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 18
    :cond_b
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_c

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/CameraPresentation;->setDegree(I)V

    :cond_c
    return-void
.end method

.method public registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffffff1

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationSelfie;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/BackStack;->addInBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public setESPRecordingTimeState(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/CameraPresentation;->setESPRecordingTimeState(I)V

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    iget v2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/PresentationDisplay;->initCameraPresentation(Landroid/content/Context;II)Lcom/android/camera/fragment/CameraPresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    .line 6
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooooo0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooooo0;-><init>(Lcom/android/camera/fragment/CameraPresentation;)V

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->addRequestListener()V

    .line 9
    sget-object p0, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "presentation display show"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showAutoHibernation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->showAutoHibernation()V

    :cond_1
    return-void
.end method

.method public showDelayNumber(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/CameraPresentation;->showDelayNumber(IZ)V

    :cond_1
    return-void
.end method

.method public showFlatSelfiePresentation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancelFlatSelfiePresentation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/PresentationDisplay;->initTipPresentation(Landroid/content/Context;)Lcom/android/camera/fragment/TipPresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mTipPresentation:Lcom/android/camera/fragment/TipPresentation;

    .line 3
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 4
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->getLegacyPresentations()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mTipPresentation:Lcom/android/camera/fragment/TipPresentation;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/PresentationSelfie;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/BackStack;->removeBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/CameraPresentation;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
