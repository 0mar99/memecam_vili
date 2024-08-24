.class public Lcom/android/camera/module/impl/component/KeyEventImpl;
.super Ljava/lang/Object;
.source "KeyEventImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/MiKeyEvent;


# static fields
.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MODE_SWITCH:I = 0x103

.field public static final KEYCODE_SHUTTER:I = 0x18

.field public static final KEYCODE_SWITCH_LENS:I = 0x77

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field public static final TAG:Ljava/lang/String; = "KeyEventImpl"


# instance fields
.field public final mActivity:Lcom/android/camera/ActivityBase;

.field public mIsZoomInDown:Z

.field public mIsZoomOutDown:Z

.field public final mSupportedFrontFPS120:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooooo0()S

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mSupportedFrontFPS120:Z

    return-void
.end method

.method private changeMode()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getCameraAction()Ljava/util/Optional;

    move-result-object p0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo000;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo000;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v3, 0xa1

    const/16 v4, 0xa2

    if-eq p0, v3, :cond_5

    if-eq p0, v4, :cond_5

    const/16 v3, 0xa6

    if-eq p0, v3, :cond_5

    const/16 v3, 0xac

    if-eq p0, v3, :cond_5

    const/16 v3, 0xb0

    if-eq p0, v3, :cond_5

    const/16 v3, 0xb7

    if-eq p0, v3, :cond_5

    const/16 v3, 0xd6

    if-eq p0, v3, :cond_5

    const/16 v3, 0xb3

    if-eq p0, v3, :cond_5

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    .line 10
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object p0

    if-eqz p0, :cond_8

    const v1, 0x7f12057d

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    const/16 v5, 0xa3

    if-ne v3, v5, :cond_7

    const v1, 0x7f120595

    goto :goto_1

    :cond_7
    move v4, v5

    .line 12
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v4, v0, v2}, Lcom/android/camera/protocol/protocols/ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private changeZoom(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->isZoomEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSupportRecordingZoom(I)Z

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/16 v3, 0xa9

    const/16 v4, 0xa8

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gtz v2, :cond_7

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomInDown:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomOutDown:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_10

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->impl2()Lcom/android/camera/protocol/protocols/ZoomProtocol;

    move-result-object p0

    if-eqz p0, :cond_10

    const p1, 0x3dcccccd    # 0.1f

    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->zoomOut(F)V

    goto :goto_2

    .line 11
    :cond_6
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->zoomIn(F)V

    goto :goto_2

    .line 12
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    if-eq p2, v4, :cond_a

    if-eq p2, v3, :cond_8

    goto :goto_1

    .line 13
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomOutDown:Z

    if-eqz v0, :cond_9

    return-void

    .line 14
    :cond_9
    iput-boolean v1, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomOutDown:Z

    goto :goto_1

    .line 15
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomInDown:Z

    if-eqz v0, :cond_b

    return-void

    .line 16
    :cond_b
    iput-boolean v1, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomInDown:Z

    goto :goto_1

    .line 17
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    if-eq p2, v4, :cond_e

    if-eq p2, v3, :cond_d

    goto :goto_1

    .line 18
    :cond_d
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomOutDown:Z

    goto :goto_1

    .line 19
    :cond_e
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomInDown:Z

    .line 20
    :cond_f
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomActive;->impl2()Lcom/android/camera/protocol/protocols/ZoomActive;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 21
    invoke-interface {p0, p2, p1}, Lcom/android/camera/protocol/protocols/ZoomActive;->onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)V

    :cond_10
    :goto_2
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiKeyEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/KeyEventImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getCameraAction()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/CameraAction;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static final isKeyEventFromMiWatch(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1200

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private pauseRecording()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->pauseRecording()V

    :cond_0
    return-void
.end method

.method private switchCameraLens()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getCameraAction()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo000;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo000;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb0

    if-eq v1, v2, :cond_4

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_7

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_7

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-void

    .line 5
    :pswitch_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oO()Z

    move-result p0

    if-nez p0, :cond_7

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oo()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 7
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mSupportedFrontFPS120:Z

    if-nez p0, :cond_7

    :cond_3
    return-void

    .line 8
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 9
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoooO()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 10
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 11
    :cond_7
    :goto_0
    :pswitch_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    .line 12
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraSwitcher;->impl2()Lcom/android/camera/protocol/protocols/CameraSwitcher;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/CameraSwitcher;->onSwitchCameraPicker(Z)V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/KeyEventImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEventImpl-onKeyDown:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_3

    const/16 p2, 0x103

    if-eq p1, p2, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->changeMode()V

    return v1

    .line 6
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->changeZoom(Landroid/view/KeyEvent;I)V

    return v1

    .line 7
    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->changeZoom(Landroid/view/KeyEvent;I)V

    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/KeyEventImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEventImpl-onKeyUp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x77

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->changeZoom(Landroid/view/KeyEvent;I)V

    return v1

    .line 6
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->changeZoom(Landroid/view/KeyEvent;I)V

    return v1

    .line 7
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->pauseRecording()V

    return v1

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->pauseRecording()V

    return v1

    .line 9
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/KeyEventImpl;->switchCameraLens()V

    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MiKeyEvent;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetZoomKeyEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomOutDown:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/KeyEventImpl;->mIsZoomInDown:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/MiKeyEvent;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
