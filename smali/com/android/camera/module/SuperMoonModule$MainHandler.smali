.class public Lcom/android/camera/module/SuperMoonModule$MainHandler;
.super Landroid/os/Handler;
.source "SuperMoonModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/SuperMoonModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainHandler"
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/SuperMoonModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/SuperMoonModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/SuperMoonModule;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-eq v1, v4, :cond_c

    const/4 v5, 0x4

    if-eq v1, v5, :cond_b

    const/16 v6, 0x11

    if-eq v1, v6, :cond_a

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x21

    if-eq v1, v3, :cond_8

    const/16 v3, 0x38

    const/4 v4, 0x1

    if-eq v1, v3, :cond_7

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no consumer for this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/module/SuperMoonModule;->onWaitingFocusFinished()Z

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wait save finish timeout"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0, v2}, Lcom/android/camera/module/SuperMoonModule;->access$402(Lcom/android/camera/module/SuperMoonModule;Z)Z

    goto/16 :goto_1

    .line 10
    :pswitch_2
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fallback timeout"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setSatFallback(I)V

    .line 12
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 13
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastSatFallbackRequestId(I)V

    .line 14
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isWaitingSnapshot()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    if-ne p1, v4, :cond_d

    .line 15
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    const/16 p1, 0x3e

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 17
    :pswitch_3
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    goto/16 :goto_1

    .line 18
    :pswitch_4
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Oops, capture timeout later release timeout!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    .line 19
    invoke-virtual {v0, v2, p0, p1, v2}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(ZJI)V

    goto/16 :goto_1

    .line 20
    :pswitch_5
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_d

    .line 21
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setOpenCameraFail(Z)V

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_1

    .line 23
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    goto/16 :goto_1

    .line 24
    :cond_4
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    goto/16 :goto_1

    .line 25
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 26
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-ltz v1, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int v0, v0, 0x168

    .line 27
    rem-int/lit16 v0, v0, 0x168

    .line 28
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configRotationChange(II)V

    goto/16 :goto_1

    .line 29
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {p0, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFocusViewVisible()Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 32
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 33
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p0

    if-ne v5, p0, :cond_d

    .line 34
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_1

    .line 35
    :cond_8
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/SuperMoonModule;->access$100(Lcom/android/camera/module/SuperMoonModule;II)V

    goto :goto_1

    .line 36
    :cond_9
    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$200(Lcom/android/camera/module/SuperMoonModule;)V

    goto :goto_1

    .line 37
    :cond_a
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 41
    :cond_b
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$000(Lcom/android/camera/module/SuperMoonModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-gez p1, :cond_d

    const-wide/16 v0, 0x64

    .line 43
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 44
    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_d
    :goto_1
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
