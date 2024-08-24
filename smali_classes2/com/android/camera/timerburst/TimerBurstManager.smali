.class public Lcom/android/camera/timerburst/TimerBurstManager;
.super Ljava/lang/Object;
.source "TimerBurstManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimerBurstManager"


# instance fields
.field public mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

.field public mCountObserver:Lcom/android/camera/timerburst/CountObserver;

.field public mIsStartCount:Z

.field public mModule:Ljava/lang/ref/WeakReference;
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

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/protocols/RecordState;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    return-void
.end method

.method private checkStopCountDown(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    const/16 v2, 0x6e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideAlert()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0oo;

    invoke-direct {p1, v0}, LOooO0O0/OooO0O0/OooO00o/o00o0O/OooO0oo;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->recheckAndKeepAutoHibernation()V

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p2

    const/16 v0, 0x78

    if-eqz p2, :cond_3

    if-ne p1, v0, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoHibernation;->impl2()Lcom/android/camera/protocol/protocols/AutoHibernation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {p1, p0, p2}, Lcom/android/camera/protocol/protocols/AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 18
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 20
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eq p1, v0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->stopTimerBurst()V

    return v3

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCountObserver()Lcom/android/camera/timerburst/CountObserver;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCountObserver:Lcom/android/camera/timerburst/CountObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/timerburst/CountObserver;

    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    invoke-direct {v0, v1}, Lcom/android/camera/timerburst/CountObserver;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCountObserver:Lcom/android/camera/timerburst/CountObserver;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCountObserver:Lcom/android/camera/timerburst/CountObserver;

    return-object p0
.end method

.method private startCountDown(IZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getIsDecreasedCount()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    const/16 p0, 0xa

    .line 4
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    return v2

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result p1

    const/16 p2, 0x78

    .line 7
    invoke-virtual {v0, p1, v2, p2}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->getIsDecreasedCount()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dealTimerBurst(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getTotalCount()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->getIntervalTimer()J

    move-result-wide v2

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealTimerBurst: TimerTask"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   now:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimerBurstManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/timerburst/TimerBurstController;->decreaseCount(I)V

    const/16 p0, 0x3f

    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/android/camera/timerburst/StopTimerBurstRunnable;

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-direct {p1, p0, v1}, Lcom/android/camera/timerburst/StopTimerBurstRunnable;-><init>(Lcom/android/camera/module/Camera2Module;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public generateFileTitle()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/timerburst/TimerBurstController;->getPictureTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TIMEBURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountDownTimes(ILandroid/content/Intent;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    const-string p1, "android.intent.extra.TIMER_DURATION_SECONDS"

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    const/4 p0, 0x5

    if-eq v1, p0, :cond_4

    return v3

    :cond_4
    return p0

    :cond_5
    return v0

    :cond_6
    const/16 p0, 0x64

    if-ne p1, p0, :cond_8

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result p0

    if-eqz p0, :cond_7

    move v3, p0

    :cond_7
    return v3

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result p0

    return p0
.end method

.method public getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    return-object p0
.end method

.method public isInCountDown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/CameraTimer;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShooting()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p0

    return p0
.end method

.method public isTimerBurstOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed(J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLastBackPressedTime()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setLastBackPressedTime(J)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const p1, 0x7f1209b5

    invoke-static {p0, p1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->stopTimerBurst()V

    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 p0, 0x2ee0

    cmp-long p0, v3, p0

    if-gez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public onShutterButtonClick(ILandroid/content/Intent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/timerburst/TimerBurstManager;->getCountDownTimes(ILandroid/content/Intent;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInShotting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n(20:volume 10:shutter 120:timer) triggerMode:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isMenuTimer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimerBurstManager"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-direct {p0, p1, v2}, Lcom/android/camera/timerburst/TimerBurstManager;->checkStopCountDown(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/android/camera/timerburst/TimerBurstManager;->startCountDown(IZ)Z

    move-result p0

    return p0

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 7
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    return v1

    :cond_3
    return v0
.end method

.method public realStartCount(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/module/Camera2Module;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ne p3, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 4
    invoke-virtual {v3}, Lcom/android/camera/module/Camera2Module;->checkShutterCondition()Z

    move-result v0

    const/16 v1, 0x78

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    if-ne p3, v1, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/camera/timerburst/TimerBurstManager$2;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/timerburst/TimerBurstManager$2;-><init>(Lcom/android/camera/timerburst/TimerBurstManager;Lcom/android/camera/module/Camera2Module;III)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    if-ne p3, v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->getIsDecreasedCount()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->handleCountDownSnapClickVibrator()V

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerBurstManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Lcom/android/camera/timerburst/CameraTimer;

    invoke-direct {v0}, Lcom/android/camera/timerburst/CameraTimer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    .line 14
    invoke-direct {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getCountObserver()Lcom/android/camera/timerburst/CountObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/timerburst/CountObserver;->setCount(I)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getCountObserver()Lcom/android/camera/timerburst/CountObserver;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/camera/timerburst/CountObserver;->setMode(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/TopAlert;->hideAlert()V

    .line 17
    iget-object p3, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {p3, p1}, Lcom/android/camera/timerburst/CameraTimer;->setCount(I)Lcom/android/camera/timerburst/CameraTimer;

    move-result-object p1

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Lcom/android/camera/timerburst/CameraTimer;->setStartDelay(I)Lcom/android/camera/timerburst/CameraTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/timerburst/CameraTimer;->setRepeatTimes(I)Lcom/android/camera/timerburst/CameraTimer;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getCountObserver()Lcom/android/camera/timerburst/CountObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/timerburst/CameraTimer;->start(Lio/reactivex/Observer;)V

    return-void
.end method

.method public stopTimerBurst()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->cancelHibernate()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/timerburst/TimerBurstController;->setPendingStopTimerBurst(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/asd/FlashAsdManager;->resetAsdSceneInExtraMenuVisibilityChange()V

    .line 11
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v4}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/timerburst/TimerBurstController;->getIntervalTimer()J

    move-result-wide v5

    long-to-float v3, v5

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v5

    sub-int/2addr v5, v2

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationSupported()Z

    move-result v6

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getEnterAutoHibernationCount()I

    move-result v7

    .line 17
    invoke-static {v1, v3, v5, v6, v7}, Lcom/android/camera/statistic/CameraStatUtils;->trackTimerBurst(IFIZI)V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera2/CameraConfigManager;->setInTimerBurstShotting(Z)V

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->changeScreenOrientation()V

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/timerburst/CameraTimer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideDelayNumber()V

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/CameraTimer;->dispose()V

    .line 26
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 27
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->reInitAlert(Z)V

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoHibernation;->impl2()Lcom/android/camera/protocol/protocols/AutoHibernation;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 31
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AutoHibernation;->dismissAutoHibernation()V

    :cond_6
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isInCountDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/CameraTimer;->dispose()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/timerburst/TimerBurstManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/timerburst/TimerBurstManager$1;-><init>(Lcom/android/camera/timerburst/TimerBurstManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
