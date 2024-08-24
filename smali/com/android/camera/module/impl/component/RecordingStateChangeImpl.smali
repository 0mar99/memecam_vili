.class public Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
.super Ljava/lang/Object;
.source "RecordingStateChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/RecordState;


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingState"


# instance fields
.field public mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/camera/Camera;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    check-cast p0, Lcom/android/camera/Camera;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getCurrentModuleIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    if-nez p0, :cond_0

    const/16 p0, 0xa0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p0

    return p0
.end method

.method private hideHint()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1203c7

    goto :goto_0

    :cond_0
    const v1, 0x7f1206b9

    :goto_0
    const-string v2, "esp_display"

    .line 3
    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v4

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v5

    if-eqz p1, :cond_9

    if-eqz v2, :cond_1

    const v0, 0x7f120a10

    .line 7
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f120a11

    .line 8
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const v0, 0x7f120a12

    .line 9
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const v0, 0x7f120a19

    .line 10
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const v0, 0x7f120a1b

    .line 11
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const v0, 0x7f1207ea

    .line 12
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    .line 13
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd0

    const-wide/16 v1, -0x1

    const/16 v3, 0x8

    if-eq p2, v0, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd4

    if-ne p2, v0, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 p2, 0xcf

    if-ne p0, p2, :cond_9

    const p0, 0x7f1203f6

    .line 16
    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_3

    :cond_8
    :goto_2
    const p0, 0x7f1203fa

    .line 17
    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onFailed"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->onFinish()V

    .line 3
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFailed()V

    return-void
.end method

.method public onFinish()V
    .locals 12

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/HaloProtocol;->impl2()Lcom/android/camera/protocol/protocols/HaloProtocol;

    move-result-object v4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v5

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/ThumbnailProtocol;->impl2()Lcom/android/camera/protocol/protocols/ThumbnailProtocol;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    .line 12
    invoke-interface {v5, v7, v8}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    .line 13
    :cond_1
    invoke-direct {p0, v0, v7}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v5

    const/16 v9, 0xa7

    const/4 v10, 0x2

    if-eq v5, v9, :cond_1c

    const/16 v9, 0xa9

    const/16 v11, 0xd0

    if-eq v5, v9, :cond_16

    const/16 v9, 0xb7

    if-eq v5, v9, :cond_13

    const/16 v9, 0xbb

    if-eq v5, v9, :cond_11

    const/16 v9, 0xcc

    if-eq v5, v9, :cond_e

    const/16 v9, 0xd4

    if-eq v5, v9, :cond_c

    const/16 v9, 0xd7

    if-eq v5, v9, :cond_13

    const/16 v9, 0xb3

    if-eq v5, v9, :cond_a

    const/16 v9, 0xb4

    if-eq v5, v9, :cond_5

    const/16 v9, 0xcf

    if-eq v5, v9, :cond_2

    if-eq v5, v11, :cond_16

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_3
    if-eqz v2, :cond_4

    .line 16
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_4
    if-eqz v0, :cond_26

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setConfigMenuResetWhenRestartmode()V

    .line 18
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 19
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_6
    if-eqz v2, :cond_7

    .line 20
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_7
    if-eqz v0, :cond_8

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 22
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 24
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->onRecordingStop()V

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 26
    invoke-interface {p0, v8}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    .line 27
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 28
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    goto/16 :goto_2

    :cond_a
    if-eqz v0, :cond_b

    .line 29
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 30
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 31
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingFinish()V

    goto/16 :goto_2

    .line 32
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 33
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingFinish()V

    :cond_d
    if-eqz v0, :cond_26

    .line 34
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 35
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    goto/16 :goto_2

    :cond_e
    if-eqz v1, :cond_f

    .line 37
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_f
    if-eqz v2, :cond_10

    .line 38
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_10
    if-eqz v0, :cond_26

    .line 39
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 40
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    new-array p0, v8, [I

    const/16 v1, 0xc5

    aput v1, p0, v7

    .line 41
    invoke-interface {v0, v8, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    goto/16 :goto_2

    .line 42
    :cond_11
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz v2, :cond_12

    .line 43
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_12
    if-eqz p0, :cond_26

    .line 44
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->onRecordingStop()V

    goto/16 :goto_2

    :cond_13
    if-eqz v1, :cond_14

    .line 45
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_14
    if-eqz v2, :cond_15

    .line 46
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_15
    if-eqz v0, :cond_26

    .line 47
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 48
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    const/4 p0, 0x5

    new-array p0, p0, [I

    .line 49
    fill-array-data p0, :array_0

    invoke-interface {v0, v8, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    .line 50
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto/16 :goto_2

    :cond_16
    if-eqz v1, :cond_17

    .line 51
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_17
    if-eqz v2, :cond_19

    .line 52
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    if-ne p0, v11, :cond_18

    .line 53
    invoke-interface {v2, v8, v8}, Lcom/android/camera/protocol/protocols/ActionProcessing;->enableStopButton(ZZ)V

    .line 54
    :cond_18
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_19
    if-eqz v0, :cond_1a

    .line 55
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 56
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 57
    :cond_1a
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 58
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 59
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_1b
    if-eqz v3, :cond_26

    .line 60
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMacroMode()V

    .line 61
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    goto/16 :goto_2

    .line 62
    :cond_1c
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 63
    invoke-interface {v5, v8}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 64
    :cond_1d
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 65
    invoke-interface {v5, v8}, Lcom/android/camera/protocol/protocols/ProExtra;->setExtraVisibility(Z)Z

    move-result v5

    goto :goto_0

    :cond_1e
    move v5, v7

    .line 66
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v9

    if-eqz v5, :cond_1f

    if-eqz v9, :cond_1f

    .line 67
    invoke-interface {v9, v8}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setMaskCoverVisibility(Z)Z

    :cond_1f
    :goto_1
    if-eqz v1, :cond_20

    .line 68
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateDynamicImageLayoutParams()V

    .line 69
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_20
    if-eqz v2, :cond_21

    .line 70
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_21
    if-eqz v0, :cond_23

    .line 71
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 72
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 73
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    .line 74
    :cond_22
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_23
    if-eqz v3, :cond_24

    .line 75
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMacroMode()V

    .line 76
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->recheckVideoFps(Z)V

    .line 77
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiEnhancedVideo()V

    .line 78
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    .line 79
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudioSingle()V

    .line 80
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    .line 81
    :cond_24
    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz v4, :cond_25

    if-eqz p0, :cond_25

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 83
    invoke-interface {v4, v7}, Lcom/android/camera/protocol/protocols/HaloProtocol;->disableFrontFlashAndHalo(Z)V

    :cond_25
    if-eqz v6, :cond_26

    .line 84
    invoke-interface {v6, v8}, Lcom/android/camera/protocol/protocols/ThumbnailProtocol;->setThumbnailClickEnable(Z)V

    :cond_26
    :goto_2
    return-void

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onLongExposePrepare()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposePrepare()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v1, 0xad

    if-ne p0, v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    :cond_0
    return-void
.end method

.method public onLongExposeStart()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposeStart()V

    return-void
.end method

.method public onPause()V
    .locals 7

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    invoke-direct {p0, v2, v4}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v5, 0xb3

    if-eq p0, v5, :cond_4

    const/16 v5, 0xb7

    const/4 v6, 0x1

    if-eq p0, v5, :cond_3

    const/16 v5, 0xcc

    if-eq p0, v5, :cond_2

    const/16 v4, 0xd4

    if-eq p0, v4, :cond_1

    const/16 v4, 0xd7

    if-eq p0, v4, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    .line 11
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 14
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingPause()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    .line 16
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    new-array p0, v6, [I

    const/16 v0, 0xc5

    aput v0, p0, v4

    .line 17
    invoke-interface {v2, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    .line 18
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    .line 20
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 21
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    const/4 p0, 0x5

    new-array p0, p0, [I

    .line 22
    fill-array-data p0, :array_0

    invoke-interface {v2, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    .line 23
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    goto :goto_0

    .line 24
    :cond_4
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingPause()V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onPostPreview()V
    .locals 1

    const-string p0, "RecordingState"

    const-string/jumbo v0, "onPostPreview"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 v0, 0x2

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingWorkspace()V

    return-void
.end method

.method public onPostSavingFinish()V
    .locals 5

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPostSavingFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 5
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xa6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p0, v2, :cond_4

    const/16 v0, 0xac

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_1

    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 9
    invoke-interface {p0, v4, v4, v4}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->recheckVideoFps(Z)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string/jumbo v1, "onPostExecute setDisplayPreviewBitmap null"

    .line 14
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-interface {p0, v4}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->showSmallPreview(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPostSavingStart(I)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingState"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xd0

    if-ne v2, v4, :cond_0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setConfigMenuResetWhenRestartmode()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v4

    if-nez v4, :cond_4

    const-string p0, "actionProcessing null, may be something wrong"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v5, 0x5

    .line 15
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    const/16 v5, 0xa6

    const/4 v6, 0x0

    if-eq v1, v5, :cond_13

    const/16 v5, 0xb0

    if-eq v1, v5, :cond_12

    const/16 v5, 0xb8

    if-eq v1, v5, :cond_14

    const/16 v5, 0xbb

    const-wide/16 v7, -0x1

    const v9, 0x7f12096a

    const/16 v10, 0x8

    if-eq v1, v5, :cond_11

    const/16 v5, 0xac

    const/4 v11, 0x2

    if-eq v1, v5, :cond_d

    const/16 p0, 0xad

    if-eq v1, p0, :cond_7

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 18
    :cond_6
    invoke-interface {v4, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 19
    invoke-interface {v0, v11, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(IZ)V

    :cond_8
    if-eqz v2, :cond_9

    .line 20
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    .line 21
    :cond_9
    invoke-interface {v4, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 23
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    :cond_a
    if-eqz v0, :cond_c

    .line 24
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    .line 25
    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-eqz p0, :cond_b

    const v9, 0x7f1205e8

    .line 26
    :cond_b
    invoke-interface {v0, v10, v9, v7, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    .line 27
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 28
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    goto :goto_1

    :cond_d
    if-eqz v0, :cond_e

    .line 29
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_e
    if-eqz v2, :cond_f

    .line 30
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    .line 31
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBackSlowMotionUIState()Z

    move-result p0

    if-nez p0, :cond_14

    .line 33
    :cond_10
    invoke-interface {v4, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    goto :goto_1

    .line 34
    :cond_11
    invoke-interface {v4, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    if-eqz v0, :cond_14

    .line 35
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    .line 36
    invoke-interface {v0, v10, v9, v7, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_1

    .line 37
    :cond_12
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    .line 38
    invoke-interface {v4, v6}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    .line 39
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->resetShootUI()V

    goto :goto_1

    .line 41
    :cond_13
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    .line 42
    invoke-interface {v4, v6}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->resetShootUI()V

    :cond_14
    :goto_1
    return-void
.end method

.method public onPrepare(Lcom/android/camera/module/Module;)V
    .locals 9

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPrepare: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    instance-of v3, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/camera/module/Camera2Module;

    iget-object v3, v3, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v4, v1}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "module is null"

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v4, 0xd4

    const/16 v5, 0xbb

    const/16 v6, 0xb3

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromTimerBurstShutter()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    .line 13
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPrepare()V

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingPrepare()V

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPrepare()V

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingPrepare()V

    .line 23
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 25
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    .line 26
    :cond_9
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    .line 27
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_16

    const/16 v0, 0xa3

    if-eq v7, v0, :cond_13

    const/16 v0, 0xa6

    if-eq v7, v0, :cond_12

    const/16 v0, 0xad

    if-eq v7, v0, :cond_11

    const/16 v0, 0xb0

    if-eq v7, v0, :cond_f

    if-eq v7, v5, :cond_e

    if-eq v7, v4, :cond_d

    const/16 v0, 0xd7

    if-eq v7, v0, :cond_d

    if-eq v7, v6, :cond_17

    const/16 v0, 0xb4

    if-eq v7, v0, :cond_b

    const/16 v0, 0xb7

    if-eq v7, v0, :cond_d

    const/16 v0, 0xb8

    if-eq v7, v0, :cond_d

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p0

    if-nez p0, :cond_17

    if-eqz p1, :cond_17

    .line 29
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_3

    .line 30
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 31
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->onRecordingPrepare()V

    :cond_c
    if-eqz p1, :cond_17

    .line 32
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_17

    .line 33
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_3

    .line 34
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 35
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->onRecordingPrepare()V

    goto :goto_3

    .line 36
    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 37
    invoke-interface {p0, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearIndicator(I)V

    .line 38
    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 39
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->setShootingUI()V

    goto :goto_3

    :cond_11
    if-eqz p1, :cond_17

    .line 40
    invoke-interface {p1, v2, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(IZ)V

    goto :goto_3

    .line 41
    :cond_12
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setShootUI()V

    goto :goto_3

    .line 43
    :cond_13
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 44
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    .line 45
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    :cond_14
    if-nez v3, :cond_15

    if-eqz p1, :cond_15

    .line 46
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 47
    :cond_15
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 48
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_3

    :cond_16
    const-string/jumbo p0, "onPrepare mode not ready"

    .line 49
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_17
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 51
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 52
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    :cond_18
    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    const/16 v2, 0x8

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xb3

    const/4 v3, 0x1

    if-eq p0, v2, :cond_5

    const/16 v2, 0xb7

    const/4 v4, 0x4

    if-eq p0, v2, :cond_3

    const/16 v2, 0xbb

    if-eq p0, v2, :cond_2

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_1

    const/16 v2, 0xd7

    if-eq p0, v2, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    .line 10
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    .line 12
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 13
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v0, v3, v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->enableStopButton(ZZ)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    .line 16
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    .line 17
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 19
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    .line 20
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 21
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 22
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingResume()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 7

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v2

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    const/16 v5, 0x8

    .line 9
    invoke-direct {p0, v3, v5}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->hideHint()V

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, v5, v6}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_c

    const/16 v2, 0xac

    if-eq p0, v2, :cond_b

    const/16 v2, 0xb0

    if-eq p0, v2, :cond_a

    const/16 v2, 0xb3

    if-eq p0, v2, :cond_9

    const/16 v2, 0xb7

    if-eq p0, v2, :cond_8

    const/16 v2, 0xb9

    if-eq p0, v2, :cond_7

    const/16 v2, 0xbb

    const/4 v4, 0x7

    if-eq p0, v2, :cond_5

    const/16 v2, 0xd0

    if-eq p0, v2, :cond_4

    const/16 v2, 0xd4

    if-eq p0, v2, :cond_3

    const/16 v1, 0xd7

    if-eq p0, v1, :cond_2

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    goto/16 :goto_0

    .line 14
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    .line 15
    invoke-interface {v3, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto/16 :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingStart()V

    if-eqz v1, :cond_d

    .line 18
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    if-eqz v1, :cond_d

    .line 20
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->impl2()Lcom/android/camera/protocol/protocols/AmbilightProtocol;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 22
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    :cond_6
    if-eqz v1, :cond_d

    .line 23
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 25
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->processingStart()V

    goto :goto_0

    .line 26
    :cond_8
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    .line 27
    invoke-interface {v3, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    .line 28
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    .line 29
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingStart()V

    goto :goto_0

    .line 30
    :cond_a
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_d

    const v0, 0x7f120a33

    .line 32
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->updateHintText(I)V

    goto :goto_0

    .line 33
    :cond_b
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    if-eqz v3, :cond_d

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v5, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    .line 36
    invoke-interface {v3, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertESPFeatureTip(Z)V

    goto :goto_0

    .line 37
    :cond_c
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 v0, 0x0

    .line 39
    invoke-interface {p0, v4, v6, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateZoomRatioToggleButtonState(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/DualController;->setRecordingOrPausing(Z)V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_3
    :goto_1
    return-void
.end method
