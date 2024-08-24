.class public Lcom/android/camera/module/image/MultiCaptureManager$2;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/MultiCaptureManager;->multiCapture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mEyeTrackOn:Z

.field public final synthetic this$0:Lcom/android/camera/module/image/MultiCaptureManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/MultiCaptureManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$100(Lcom/android/camera/module/image/MultiCaptureManager;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$100(Lcom/android/camera/module/image/MultiCaptureManager;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$100(Lcom/android/camera/module/image/MultiCaptureManager;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/image/MultiCaptureManager;->access$102(Lcom/android/camera/module/image/MultiCaptureManager;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$000(Lcom/android/camera/module/image/MultiCaptureManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v1}, Lcom/android/camera/module/image/MultiCaptureManager;->access$200(Lcom/android/camera/module/image/MultiCaptureManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0o0;

    invoke-direct {v2, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0o0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/SnapShotIndicator;->impl2()Lcom/android/camera/protocol/protocols/SnapShotIndicator;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/SnapShotIndicator;->setSnapNumVisible(ZZ)V

    .line 9
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->hideDelayNumber()V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "d"

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->restoreMultiSnapUIElements()V

    .line 15
    iget-boolean p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    if-eqz p0, :cond_5

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoo0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOoo0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/MultiCaptureManager$2;->onNext(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
