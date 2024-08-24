.class public Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;
.super Ljava/lang/Object;
.source "BaseModuleCameraManager.java"

# interfaces
.implements Lcom/android/camera/performance/PerformanceManager$PerformanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/common/BaseModuleCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleCameraManagerPerformanceListener"
.end annotation


# instance fields
.field public final baseModuleCameraManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/common/BaseModuleCameraManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;->baseModuleCameraManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onHappened()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$ModuleCameraManagerPerformanceListener;->baseModuleCameraManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/common/BaseModuleCameraManager;

    const-string v0, "BaseModuleCameraManager"

    if-nez p0, :cond_0

    const-string p0, "PerformanceListener: baseModuleCameraManager is null!"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->access$000(Lcom/android/camera/module/common/BaseModuleCameraManager;)Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "PerformanceListener: configManager is null!"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    if-nez p0, :cond_2

    const-string p0, "PerformanceListener: module is null!"

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    .line 8
    invoke-virtual {v1, p0}, Lcom/android/camera2/CameraConfigManager;->applyOfflineFlushEnable(I)V

    return-void
.end method
