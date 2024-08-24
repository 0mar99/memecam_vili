.class public Lcom/android/camera/module/image/Camera2ModuleHandler;
.super Landroid/os/Handler;
.source "Camera2ModuleHandler.java"


# static fields
.field public static final MSG_START_RECORDING:I = 0x1001

.field public static final TAG:Ljava/lang/String; = "Camera2ModuleHandler"


# instance fields
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
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/image/Camera2ModuleHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFocusViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x7

    .line 5
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/CameraAction;)V
    .locals 1

    const/16 v0, 0x78

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/CameraAction;->onShutterButtonClick(I)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/Camera2ModuleHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

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

    if-eq v1, v4, :cond_11

    const-wide/16 v5, 0x1388

    const/4 v7, 0x4

    if-eq v1, v7, :cond_10

    const/16 v7, 0x11

    if-eq v1, v7, :cond_f

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_e

    const/16 v3, 0x21

    if-eq v1, v3, :cond_d

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eq v1, v3, :cond_a

    const/16 v3, 0x48

    if-eq v1, v3, :cond_8

    const/16 v3, 0x4b

    const-string v8, "Camera2ModuleHandler"

    if-eq v1, v3, :cond_7

    const/16 v3, 0x1001

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

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
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->enterAutoHibernation()V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x42

    .line 8
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->showAutoHibernationTip()V

    goto/16 :goto_2

    .line 10
    :pswitch_2
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 11
    invoke-virtual {v0, v7}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const-string p0, "X:resetStatusToIdle"

    .line 12
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 13
    :pswitch_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0OO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->onWaitingFocusFinished()Z

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo p0, "wait save finish timeout"

    .line 15
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-boolean v4, v0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    .line 17
    invoke-static {v4, v7}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "fallback timeout"

    .line 18
    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setSatFallback(I)V

    .line 20
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFallbackProcessed(Z)V

    .line 21
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setLastSatFallbackRequestId(I)V

    .line 22
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isWaitingSnapshot()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    if-ne p1, v7, :cond_12

    .line 23
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    const/16 p1, 0x3e

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :pswitch_7
    const-string/jumbo p0, "receive MSG_FIXED_SHOT2SHOT_TIME_OUT"

    .line 25
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    goto/16 :goto_2

    .line 27
    :pswitch_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 28
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int v0, v0, 0x168

    .line 29
    rem-int/lit16 v0, v0, 0x168

    .line 30
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configRotationChange(II)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-static {}, Lcom/android/zxing/decoders/HandGestureDecoder;->getInstanceOpt()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOo00;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    .line 32
    :pswitch_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0O0;

    invoke-direct {p1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0O0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    .line 33
    :pswitch_b
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    goto/16 :goto_2

    :pswitch_c
    const-string p0, "Oops, capture timeout later release timeout!"

    .line 34
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    .line 35
    invoke-virtual {v0, v4, p0, p1, v4}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    goto/16 :goto_2

    .line 36
    :pswitch_d
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_12

    .line 37
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setOpenCameraFail(Z)V

    .line 38
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    .line 39
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result p0

    if-nez p0, :cond_12

    .line 40
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    goto/16 :goto_2

    .line 41
    :cond_5
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    goto/16 :goto_2

    .line 42
    :cond_6
    instance-of p0, v0, Lcom/android/camera/features/mode/capture/CaptureModule;

    if-eqz p0, :cond_12

    .line 43
    check-cast v0, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveMedia()Lcom/android/camera/module/image/LiveMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/image/LiveMediaManager;->startVideoRecording()V

    goto/16 :goto_2

    .line 44
    :cond_7
    iput-boolean v7, v0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    const-string/jumbo p0, "receive MSG_FIXED_SNAP_SHOT_DELAY_TIME"

    .line 45
    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-boolean p0, v0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    if-eqz p0, :cond_12

    .line 47
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    goto :goto_2

    .line 48
    :cond_8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v7, :cond_9

    move v4, v7

    :cond_9
    invoke-virtual {p0, v0, v7, v4, v7}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    goto :goto_2

    .line 49
    :cond_a
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-lez p0, :cond_b

    move p0, v7

    goto :goto_1

    :cond_b
    move p0, v4

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_c

    move v4, v7

    :cond_c
    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/Camera2Module;->handleUpdateFaceView(ZZ)V

    goto :goto_2

    .line 50
    :cond_d
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/Camera2Module;->setOrientation(II)V

    goto :goto_2

    .line 51
    :cond_e
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    goto :goto_2

    .line 52
    :cond_f
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 56
    :cond_10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/camera/module/Camera2Module;->mOnResumeTime:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-gez p1, :cond_12

    const-wide/16 v0, 0x64

    .line 58
    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 59
    :cond_11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_12
    :goto_2
    :pswitch_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
