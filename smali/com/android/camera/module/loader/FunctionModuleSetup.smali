.class public Lcom/android/camera/module/loader/FunctionModuleSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionModuleSetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/Module;",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionModuleSetup"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 7
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

    const-string/jumbo v1, "switch_module_setup"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/camera/module/loader/FunctionModuleSetup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply: module isPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v0

    const/16 v2, 0xe1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-static {p0, v2}, Lcom/android/camera/module/loader/WeakNullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->reset()V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 10
    iget v4, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v5, 0xa2

    const-string/jumbo v6, "pref_video_speed_fast_key"

    if-eq v4, v5, :cond_c

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_b

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_a

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_9

    const/16 v5, 0xab

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const/16 v5, 0xaf

    if-eq v4, v5, :cond_3

    const/16 v5, 0xcd

    if-eq v4, v5, :cond_2

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    goto/16 :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v4, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    .line 15
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v3

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->switchOnCurrentSupported(IILcom/android/camera2/CameraCapabilities;)V

    goto/16 :goto_1

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    const-string/jumbo v5, "pref_camera_portrait_mode_key"

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 20
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result v3

    const-string/jumbo v4, "pref_ultra_wide_bokeh_enabled"

    if-ne v3, v6, :cond_7

    .line 21
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/display/device/FlatSelfieManager;->getBokehStateReverse()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/display/device/FlatSelfieManager;->getBokehStateIdle()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_9
    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string/jumbo v4, "pref_camera_manual_mode_key"

    .line 28
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string/jumbo v4, "pref_camera_square_mode_key"

    .line 29
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_c
    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 31
    :cond_d
    :goto_1
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 32
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-static {p0, v2}, Lcom/android/camera/module/loader/WeakNullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0

    .line 33
    :cond_e
    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-interface {v2, p0, v0}, Lcom/android/camera/module/Module;->onGLAndCameraReady(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-object p1

    :catch_0
    move-exception p0

    .line 35
    sget-object v0, Lcom/android/camera/module/loader/FunctionModuleSetup;->TAG:Ljava/lang/String;

    const-string v1, "Module init error: "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->setDeparted()V

    const/4 p0, 0x0

    const/16 p1, 0xed

    .line 37
    invoke-static {p0, p1}, Lcom/android/camera/module/loader/WeakNullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/WeakNullHolder;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionModuleSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
