.class public Lcom/android/camera/module/image/SuperNightEventConsumer;
.super Ljava/lang/Object;
.source "SuperNightEventConsumer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_ON_CAPTURE_COMPLETE:I = 0x2

.field public static final STATE_ON_PICTURE_COMPLETE:I = 0x4

.field public static final STATE_ON_SPECIFIED_TIME_COMPLETE:I = 0x8

.field public static final STATE_START:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SuperNightEventConsumer"


# instance fields
.field public final mCamera2ModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleNewAnimation(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewAnimation: E > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperNightEventConsumer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    or-int v3, v2, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewAnimation: startAnimation  duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    goto :goto_1

    :cond_1
    or-int v3, v2, p1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    or-int v3, v2, p1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    or-int v3, v2, p1

    const/16 v6, 0x9

    if-ne v3, v6, :cond_3

    const-string v0, "handleNewAnimation: specified time complete "

    .line 8
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v4}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    goto :goto_1

    :cond_3
    or-int/2addr v2, p1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingFinish()V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetMultiFrameTotalCaptureDuration()V

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v0, v0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 16
    iget-object v0, p1, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v0, v0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 19
    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 20
    :cond_4
    iput v4, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    return-void

    :cond_5
    :goto_0
    const-string v2, "handleNewAnimation: startWaitingImage >> "

    .line 21
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v4}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    const/4 v2, 0x4

    .line 23
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingStart(I)V

    .line 24
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleNewAnimation: mstate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuperNight: state > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperNightEventConsumer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/image/SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_c

    .line 4
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 p0, 0x12c

    if-eq v2, p0, :cond_7

    const/16 p0, 0x7d0

    if-eq v2, p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p0, "SuperNight: trigger shutter animation, sound and post saving"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    instance-of p0, v0, Lcom/android/camera/features/mode/night/photo/NightModule;

    if-eqz p0, :cond_2

    .line 8
    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iput-boolean v3, p0, Lcom/android/camera/module/image/NightManager;->mWaitingSuperNightResult:Z

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v2}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setCapAnimPlayed(Z)V

    :cond_4
    if-eqz p0, :cond_5

    .line 13
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isReadPixelRequested()Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    invoke-virtual {p0, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 17
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string p1, "SuperNightEventConsumer: playCameraSound."

    .line 18
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    if-eqz p0, :cond_6

    .line 20
    invoke-virtual {p0, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setSoundPlayed(Z)V

    .line 21
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p1, 0x5

    .line 23
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/RecordState;->onPostSavingStart(I)V

    goto :goto_2

    :cond_7
    const-string p0, "SuperNight: show capture instruction hint"

    .line 24
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 26
    invoke-interface {p0, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    goto :goto_2

    .line 27
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 28
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 30
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSuperNightSeTip(I)V

    .line 31
    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 33
    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    goto :goto_1

    .line 34
    :cond_a
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isReadPixelRequested()Z

    move-result v2

    if-nez v2, :cond_b

    .line 35
    invoke-virtual {v1, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 36
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 37
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    .line 38
    :cond_b
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/image/SuperNightEventConsumer;->handleNewAnimation(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/SuperNightEventConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
