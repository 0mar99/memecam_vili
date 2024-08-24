.class public Lcom/android/camera/module/common/ModuleUtil;
.super Ljava/lang/Object;
.source "ModuleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/common/ModuleUtil$CameraMode;
    }
.end annotation


# static fields
.field public static final BACK_PRESSED_TIME_INTERVAL:I = 0xbb8

.field public static final BATTERY_PERCENT_FOR_CLOSE_ALGO:I = 0x5

.field public static final BATTERY_PERCENT_FOR_DISABLE_3840:I = 0x14

.field public static final CAMERA_MODES:[I

.field public static final CAMERA_MODE_IMAGE_CAPTURE:I = 0x2

.field public static final CAMERA_MODE_NORMAL:I = 0x0

.field public static final CAMERA_MODE_SCAN_QR_CODE:I = 0x6

.field public static final CAMERA_MODE_VIDEO_CAPTURE:I = 0x4

.field public static final LENS_DIRTY_DETECT_HINT_DURATION_3S:I = 0xbb8

.field public static final LENS_DIRTY_DETECT_HINT_DURATION_8S:I = 0x1f40

.field public static final LENS_DIRTY_DETECT_TIMEOUT:I = 0x3a98

.field public static final NIGHT_VIDEO_IN_ACTION:Ljava/lang/String; = "com.android.camera.action.night_video_in"

.field public static final NIGHT_VIDEO_OUT_ACTION:Ljava/lang/String; = "com.android.camera.action.night_video_out"

.field public static final SCREEN_DELAY:I = 0xea60

.field public static final SCREEN_DELAY_KEYGUARD:I = 0x7530

.field public static final SHUTTER_DOWN_FROM_BUTTON:I = 0x2

.field public static final SHUTTER_DOWN_FROM_HARD_KEY:I = 0x1

.field public static final SHUTTER_DOWN_FROM_TOUCH_PREVIEW:I = 0x4

.field public static final SHUTTER_DOWN_FROM_UNKNOWN:I = 0x0

.field public static final SHUTTER_DOWN_FROM_UNLOCK_OR_LONG_CLICK_OR_AUDIO:I = 0x3

.field public static final START_VIDEO_RECORDING_ACTION:Ljava/lang/String; = "com.android.camera.action.start_video_recording"

.field public static final STOP_VIDEO_RECORDING_ACTION:Ljava/lang/String; = "com.android.camera.action.stop_video_recording"

.field public static final TAG:Ljava/lang/String; = "ModuleUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/module/common/ModuleUtil;->CAMERA_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc1

    aput v3, v1, v2

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ZZLcom/android/camera/protocol/protocols/ActionProcessing;)V
    .locals 0

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->showOrHideLoadingProgress(ZZ)V

    return-void
.end method

.method public static announceForAccessibility(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->announceForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public static getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    return-object v0
.end method

.method public static isFaceBeautyOn(Lcom/android/camera/fragment/beauty/BeautyValues;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isMTKRawSuperNightCallback(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x28

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static logWhenStateError(Lcom/android/camera/module/common/ModuleCameraManagerInterface;Lcom/android/camera/module/common/BaseModuleStateManagerInterface;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "valid"

    goto :goto_0

    :cond_0
    const-string p0, "invalid"

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "created"

    goto :goto_1

    :cond_1
    const-string p0, "destroyed"

    :goto_1
    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "departed"

    goto :goto_2

    :cond_2
    const-string p1, "alive"

    :goto_2
    aput-object p1, v0, p0

    const-string p0, "device: %s module: %s|%s"

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModuleUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldNotShotQuick(Lcom/android/camera2/Camera2Proxy;)Z
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0ooO()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOo0o()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-nez v0, :cond_4

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static showOrHideLoadingProgress(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0o0;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static startCpuBoost(I)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    :cond_0
    return-void
.end method

.method public static stopCpuBoost()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_0
    return-void
.end method

.method public static updateFlashModeAndRefreshUI(ILcom/android/camera/module/Module;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFlashModeAndRefreshUI flashMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModuleUtil"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    :cond_0
    const-string v0, "0"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "104"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eq p0, v4, :cond_5

    if-eqz v1, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    const/16 v1, 0x50

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const v5, 0x7f1202c9

    invoke-static {p0, v5, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    sget-boolean v5, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-eqz v5, :cond_4

    const v5, 0x7f1205e5

    goto :goto_2

    :cond_4
    const v5, 0x7f1202c8

    :goto_2
    invoke-static {p0, v5, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 10
    :cond_5
    :goto_3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result p0

    const/16 v1, 0xa

    if-eqz p0, :cond_6

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 13
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p2, v4, [I

    aput v1, p2, v3

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    goto :goto_4

    .line 14
    :cond_6
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p2, v4, [I

    aput v1, p2, v3

    invoke-interface {p0, p2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 15
    :goto_4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00O/OooO0Oo;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateZoomRatioToggleButtonState(ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateZoomRatioToggleButtonState: isRecordingOrPausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModuleUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/DualController;->setRecordingOrPausing(Z)V

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isZoomTipShowing()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 11
    invoke-interface {v0, p1, p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
