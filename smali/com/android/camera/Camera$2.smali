.class public Lcom/android/camera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/Module;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "switch_setup_consumer"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->getException()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iput-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 6
    iput-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->resetFrameAvailableFlag()V

    .line 11
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$202(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataCloudMgr()Lcom/android/camera/data/cloud/DataCloud$CloudManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/cloud/DataCloud$CloudManager;->fillCloudValues()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 17
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 18
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->init()V

    .line 21
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/MoreModePopupController;

    .line 24
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/MoreModePopupController;

    if-eqz v0, :cond_4

    .line 25
    iget-object v2, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0a0336

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PopupMenuLayout;

    .line 26
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getPopupMenuDragListener(Lcom/android/camera/ui/PopupMenuLayout;)Lcom/android/camera/ui/DragLayout$OnDragListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 27
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->startContentObserver()V

    .line 29
    :cond_5
    iget-object p0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSetupConsumer#accept: switch module done"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

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
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$2;->accept(Lcom/android/camera/module/loader/NullHolder;)V

    return-void
.end method
