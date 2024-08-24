.class public Lcom/android/camera/module/image/MultiCaptureManager;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;,
        Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;,
        Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;
    }
.end annotation


# static fields
.field public static final MAX_HEIC_BURST_CAPTURE_COUNT:I = 0x32

.field public static final TAG:Ljava/lang/String; = "MultiCaptureManager"

.field public static final UW_MAX_BURST_SHOT_NUM:I = 0x1e


# instance fields
.field public mBurstDisposable:Lio/reactivex/disposables/Disposable;

.field public mBurstEmitter:Lio/reactivex/ObservableEmitter;

.field public mIsWorking:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mMultiCapHandler:Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

.field public mMultiPlayDisposable:Lio/reactivex/disposables/Disposable;

.field public mMultiSnapStartResult:Ljava/lang/Boolean;

.field public mMultiSnapStopRequest:Z

.field public mPendingMultiCapture:Z

.field public mPlayEndSound:Z

.field public mReceivedJpegCallbackNum:I

.field public mTotalJpegCallbackNum:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    .line 5
    iput v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;->updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Lcom/android/camera/protocol/protocols/MainContentProtocol;Lcom/android/camera/module/Module;Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    .line 7
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawTrackFocus(Z)V

    const-string p0, "MultiCaptureManager"

    const-string p1, "force hidden trace focus view when burst capture"

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawTrackFocus(Z)V

    const-string p0, "MultiCaptureManager"

    const-string/jumbo v0, "reShow trace focus view stopMultiSnap"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/image/MultiCaptureManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/image/MultiCaptureManager;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiPlayDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/image/MultiCaptureManager;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiPlayDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/image/MultiCaptureManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPlayEndSound:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/module/image/MultiCaptureManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPlayEndSound:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/module/image/MultiCaptureManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->isMultiTimerModePlay()Z

    move-result p0

    return p0
.end method

.method private getBurstNum()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo0oO()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 7
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsNearRangeModeUITip:Z

    if-eqz p0, :cond_2

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private isMultiTimerModePlay()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O00()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareMultiCapture()V
    .locals 7

    const-string v0, "MultiCaptureManager"

    const-string/jumbo v1, "prepareMultiCapture"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera2/CameraConfigManager;->setMultiSnapStopRequest(Z)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->hideFaceAnimator()V

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isTrackFocusViewVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO;

    invoke-direct {v4, v1, v2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    const-wide/16 v5, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getBurstNum()I

    move-result v2

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isHeicPreferred()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x32

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    iput v2, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For best user experience, burst capture count is limited to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object p0

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result p0

    if-nez p0, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->onShutter()V

    :cond_4
    return-void
.end method


# virtual methods
.method public cleanMessage()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiCapHandler:Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiCapHandler:Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiCapHandler:Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    return-object p0
.end method

.method public multiCapture()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPlayEndSound:Z

    .line 3
    iget-boolean v2, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    if-nez v2, :cond_0

    return v1

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHintCached()V

    .line 6
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    const-string v3, "MultiCaptureManager"

    if-eqz v2, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough space or storage not ready. remaining="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "ImageSaver is busy, wait for a moment!"

    .line 11
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const v0, 0x7f1209b8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v1

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v2

    const/4 v4, 0x6

    new-array v4, v4, [I

    .line 14
    fill-array-data v4, :array_0

    const-string v5, "d"

    invoke-interface {v2, v5, v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "multiCapture exception: cameraDevice is null!"

    .line 16
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->prepareMultiCapture()V

    .line 18
    new-instance v1, Lcom/android/camera/module/image/MultiCaptureManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/image/MultiCaptureManager$1;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    .line 19
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 20
    new-instance v3, Lcom/android/camera/module/image/MultiCaptureManager$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/image/MultiCaptureManager$3;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/android/camera/module/image/MultiCaptureManager$2;

    invoke-direct {v3, p0}, Lcom/android/camera/module/image/MultiCaptureManager$2;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;)V

    .line 21
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    .line 24
    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    new-instance v4, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;Lcom/android/camera/module/Camera2Module;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    .line 26
    invoke-virtual {v2, v1, v4, p0}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    .line 29
    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    new-instance v4, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;Lcom/android/camera/module/Camera2Module;)V

    .line 30
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    .line 31
    invoke-virtual {v2, v1, v4, p0}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    goto :goto_0

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    .line 33
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 34
    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    new-instance v4, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;

    .line 35
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/image/MultiCaptureManager;Landroid/location/Location;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    .line 37
    invoke-virtual {v2, v1, v4, p0}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    :goto_0
    return v3

    nop

    :array_0
    .array-data 4
        0xc1
        0xc2
        0xc4
        0xef
        0xc9
        0xce
    .end array-data
.end method

.method public onShutterButtonLongClickCancel()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->restoreMultiSnapUIElements()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x31

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->restoreMultiSnapUIElements()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    return-void
.end method

.method public restoreMultiSnapUIElements()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/module/common/ModuleUtil;->updateZoomRatioToggleButtonState(ZI)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    :cond_2
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->waitTimeOut()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public stopMultiSnap()V
    .locals 4

    const-string v0, "MultiCaptureManager"

    const-string/jumbo v1, "stopMultiSnap: start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 6
    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0oo;

    invoke-direct {v3, v1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0oo;-><init>(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/Camera2Module;->mLastCaptureTime:J

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBurstCaptureSupportRepeating(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o00()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_3
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->trackMultiCapture()V

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isCaptureIntent()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object p0

    const/16 v0, 0x30

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public waitTimeOut()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->getHandler()Lcom/android/camera/module/image/MultiCaptureManager$MyHandler;

    move-result-object p0

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method
