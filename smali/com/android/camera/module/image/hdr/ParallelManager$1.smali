.class public Lcom/android/camera/module/image/hdr/ParallelManager$1;
.super Lcom/xiaomi/protocol/ISessionStatusCallBackListener$Stub;
.source "ParallelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/hdr/ParallelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/hdr/ParallelManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/hdr/ParallelManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1;->this$0:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-direct {p0}, Lcom/xiaomi/protocol/ISessionStatusCallBackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionStatusFlawResultData(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",flawResult:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParallelManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1;->this$0:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-static {p1}, Lcom/android/camera/module/image/hdr/ParallelManager;->access$000(Lcom/android/camera/module/image/hdr/ParallelManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->isZoomRatioNone(FZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f12096a

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->isCurrentRecommendTipText(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;-><init>(Lcom/android/camera/module/image/hdr/ParallelManager$1;ILcom/android/camera/protocol/protocols/TopAlert;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
