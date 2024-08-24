.class public Lcom/android/camera/timerburst/CountObserver;
.super Ljava/lang/Object;
.source "CountObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CountObserver"


# instance fields
.field public mCount:I

.field public mMode:I

.field public final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideAlert()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->showDelayNumber(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideAlert()V

    return-void
.end method

.method public static synthetic OooO0O0(ILcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->showDelayNumber(I)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideDelayNumber()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    const-string p0, "CountObserver"

    const-string/jumbo v0, "onError - module is null, returning."

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget p0, p0, Lcom/android/camera/timerburst/CountObserver;->mMode:I

    const/16 v4, 0x78

    if-eq p0, v4, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    .line 14
    invoke-interface {v2, v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 15
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->recheckAndKeepAutoHibernation()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 17
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->reInitAlert(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    const-string p0, "CountObserver"

    const-string/jumbo p1, "onError - module is null, returning."

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const-string v1, "CountObserver"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onNext - module is null, returning."

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoHibernation;->impl2()Lcom/android/camera/protocol/protocols/AutoHibernation;

    move-result-object v2

    .line 6
    iget p0, p0, Lcom/android/camera/timerburst/CountObserver;->mCount:I

    if-ne p1, p0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0Oo;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p0, 0x8

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO00o;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO00o;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 10
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0OO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    const-string p0, "capture check in startCount: sat fallback"

    .line 14
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 16
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 p1, 0xa7

    if-ne p0, p1, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/AutoHibernation;->updateTimerBurstAnimator()V

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/AutoHibernation;->stopAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x6

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0O0;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0O0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 24
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CountObserver;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    const-string p0, "CountObserver"

    const-string/jumbo p1, "onSubscribe - module is null, returning."

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0o0;

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    :cond_1
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/CountObserver;->mCount:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/CountObserver;->mMode:I

    return-void
.end method
