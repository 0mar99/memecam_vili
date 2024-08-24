.class public Lcom/android/camera/module/loader/FunctionUISetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionUISetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/Module;",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# instance fields
.field public mNeedNotifyUI:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionUISetup;->mNeedNotifyUI:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;"
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

    const-string/jumbo v1, "switch_ui_setup"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p0, 0xe1

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/module/loader/WeakNullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    .line 8
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showGuide(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->isExternalFrameFit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v4, v3}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v4, v2}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    .line 17
    :cond_4
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewSizeChanged(II)V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v4

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v5

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v6

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v7

    const/4 v8, 0x1

    if-eq v5, v6, :cond_5

    const/4 v8, 0x2

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v5

    if-eq v5, v7, :cond_6

    const/4 v8, 0x3

    .line 23
    :cond_6
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v5

    invoke-interface {v5, v2, v3, v7}, Lcom/android/camera/module/common/IUserEventMgr;->setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 24
    iget-boolean v2, p0, Lcom/android/camera/module/loader/FunctionUISetup;->mNeedNotifyUI:Z

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    .line 25
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v8, p0}, Lcom/android/camera/animation/AnimationComposite;->notifyDataChanged(II)V

    .line 26
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 28
    iget v3, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    .line 29
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(IILcom/android/camera2/CameraCapabilities;)F

    move-result p0

    .line 30
    invoke-interface {v2, p0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setPreviewAspectRatio(F)V

    .line 31
    :cond_8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionUISetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
