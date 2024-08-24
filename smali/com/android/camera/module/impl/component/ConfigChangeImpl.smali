.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/ConfigChanges;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "ConfigChangeImpl"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mRecordingClosedElements:[I

.field public mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/module/video/UserRecordSetting;

    invoke-direct {v0}, Lcom/android/camera/module/video/UserRecordSetting;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->reselectCamera()V

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/TimeFreezeModule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/module/TimeFreezeModule;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/TimeFreezeModule;->dispatchConfigChange(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/module/Module;)V
    .locals 1

    .line 12
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/image/hdr/HDRManager;->setHdrModeChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/module/Module;)V
    .locals 1

    .line 26
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p2

    const/16 v0, 0xa2

    if-ne p2, v0, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "off"

    .line 27
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o([ILcom/android/camera/module/Module;)V
    .locals 1

    .line 23
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 24
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(ZLcom/android/camera/module/Module;)V
    .locals 2

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const/16 v0, 0x68

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    :cond_1
    const/16 v0, 0x69

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    return-void
.end method

.method public static synthetic OooO0O0([ILcom/android/camera/module/Module;)V
    .locals 0

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooO0OO(ZLcom/android/camera/module/Module;)V
    .locals 2

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const/16 v0, 0x69

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    :cond_1
    const/16 v0, 0x68

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    return-void
.end method

.method public static synthetic OooO0Oo(ZLcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateGifConfig(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
        0x25
        0x52
    .end array-data
.end method

.method public static synthetic OooO0o0(ZLcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->onHanGestureSwitched(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/module/Module;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "meter"

    .line 4
    invoke-interface {v1, v3, v2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1d

    aput v1, v0, v2

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->onSharedPreferenceChanged()V

    return-void
.end method

.method public static synthetic OooOO0(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRemoteCamera()V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "exitNightInCaptureMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->exitNightInCaptureMode()V

    .line 5
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_asd_detect_tip"

    const-string v1, "close_night_in_capture_mode"

    .line 6
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_common_tips"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic OooOO0o(Lcom/android/camera/module/Module;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOOO(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOOO0(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->resetAiSceneInDocumentModeOn()V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOOOo(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOOo(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOo0(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyConfig(II)V
    .locals 1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_4

    const/16 v0, 0xce

    if-eq p1, v0, :cond_3

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideMasterFilter()V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSpeechShutter()V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRGBHistogramSwitch(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoLogSwitch(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAutoZoom()V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchHandGesture()V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCinematicAspectRatio(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configColorEnhance(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubtitle()V

    goto/16 :goto_0

    .line 12
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceLineSwitch(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEIS()V

    goto/16 :goto_0

    .line 14
    :pswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBack()V

    goto/16 :goto_0

    .line 15
    :pswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto/16 :goto_0

    .line 16
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudioSingle()V

    goto/16 :goto_0

    .line 19
    :pswitch_12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configESPDisplay()V

    goto/16 :goto_0

    .line 20
    :pswitch_13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideManualPictureStyle()V

    goto/16 :goto_0

    .line 21
    :pswitch_14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    goto/16 :goto_0

    .line 22
    :pswitch_15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto/16 :goto_0

    .line 23
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    goto/16 :goto_0

    .line 24
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMacroMode()V

    goto/16 :goto_0

    .line 25
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperResolutionSwitch(I)V

    goto/16 :goto_0

    .line 26
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto/16 :goto_0

    .line 27
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch(I)V

    goto/16 :goto_0

    .line 28
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto/16 :goto_0

    .line 29
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAIWatermark(I)V

    goto/16 :goto_0

    .line 30
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto/16 :goto_0

    .line 31
    :sswitch_8
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    goto/16 :goto_0

    :sswitch_9
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto/16 :goto_0

    .line 33
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    goto/16 :goto_0

    .line 34
    :sswitch_b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto/16 :goto_0

    .line 35
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto/16 :goto_0

    .line 36
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->exitNightInCaptureMode()V

    goto :goto_0

    .line 37
    :sswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiEnhancedVideo()V

    goto :goto_0

    .line 38
    :pswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIntoWorkspace()V

    goto :goto_0

    .line 39
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAi108()V

    goto :goto_0

    .line 40
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_0

    .line 41
    :pswitch_19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPanoramaDirection()V

    goto :goto_0

    .line 42
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto :goto_0

    .line 43
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configNearRangeMode()V

    goto :goto_0

    .line 44
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCard()V

    goto :goto_0

    .line 45
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEISPro()V

    goto :goto_0

    .line 46
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0oo;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0oo;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 47
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->togglePrivacyWatermark()V

    goto :goto_0

    .line 48
    :pswitch_20
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGif()V

    goto :goto_0

    :pswitch_21
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showMimojiPanel(I)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMultiCamReselect()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRemoteCamera()V

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWideBokeh(I)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCvType()V

    goto :goto_0

    .line 55
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMotionDetection()V

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMotionDetectionSwitch(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xaf -> :sswitch_e
        0xba -> :sswitch_d
        0xc4 -> :sswitch_c
        0xc7 -> :sswitch_b
        0xc9 -> :sswitch_a
        0xcb -> :sswitch_9
        0xd1 -> :sswitch_8
        0xd4 -> :sswitch_7
        0xdf -> :sswitch_6
        0xe1 -> :sswitch_5
        0xed -> :sswitch_4
        0xef -> :sswitch_3
        0xf1 -> :sswitch_2
        0xff -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xb2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd7
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe3
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfb
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x104
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyConfigValue(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xad

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_a

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_9

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_8

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_6

    const/16 v0, 0xe2

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentModeValue(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautyMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveVideoQuality(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTilt(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSlowQuality(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoQuality(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFPS960(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceSwitch(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubFps(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubQuality(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private beautyMutexHandle()V
    .locals 0

    return-void
.end method

.method private changeMode(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore changeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private changeModeWithoutConfigureData(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_2

    .line 1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getWideCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    .line 3
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    .line 5
    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 7
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p3

    const/high16 v0, 0x40c00000    # 6.0f

    .line 8
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    .line 11
    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 13
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p0

    .line 15
    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_2
    :goto_0
    return-void
.end method

.method private closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOO;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOO;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p2, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private closeVideoFast()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/16 v1, 0xa2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo p0, "pref_video_speed_fast_key"

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private configAIWatermark(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    const/16 v2, 0xbc

    if-eq v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v3

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x1

    const-string v6, "ai_watermark"

    .line 5
    invoke-direct {p0, v6, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    xor-int/2addr v3, v5

    .line 6
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configAIWatermark: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->watermarkToast()V

    .line 11
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    .line 12
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    if-ne v5, p1, :cond_6

    if-eqz v3, :cond_5

    const-string p1, "ai_watermark_open"

    goto :goto_0

    :cond_5
    const-string p1, "ai_watermark_close"

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result p1

    .line 18
    invoke-virtual {v2, p1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setEnable(IZ)V

    .line 19
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 21
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x7

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private configAiAudio()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ai_aduio_new_desc"

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v2, v1

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    move v2, v1

    :cond_3
    const/16 v4, 0xb4

    if-ne v0, v4, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "macro"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v2, "wide"

    .line 13
    invoke-virtual {v4, v0, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    const-string v2, "ai_audio"

    .line 14
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 15
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result p0

    if-nez p0, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_6

    return-void

    .line 18
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result v2

    .line 21
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudio:isSwitchOn -> enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v4, v2, 0x1

    .line 22
    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioNew(Z)V

    xor-int/lit8 v4, v2, 0x1

    .line 23
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    .line 24
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudio:setAiAudioNewEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120792

    .line 25
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setShow(Z)V

    goto :goto_1

    .line 26
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x8

    .line 29
    :goto_2
    invoke-interface {p0, v3, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method private configAiAudioSingle()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ai_audio_single"

    .line 3
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const-string v2, "ai_aduio_single_desc"

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v2

    .line 7
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudioSingle -> enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v2, 0x1

    .line 8
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioSingle(Z)V

    xor-int/lit8 v3, v2, 0x1

    .line 9
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setAiAudioSingleEnabled(IZ)V

    .line 10
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudioSingle:setAiAudioSingleEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v0

    const v2, 0x7f12088c

    .line 12
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setShow(Z)V

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 13
    :goto_0
    invoke-interface {p0, v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioSingleBGHint(II)V

    return-void
.end method

.method private configAiEnhancedVideo()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAiEnhancedVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    const-string v3, "attr_video_ai"

    const/16 v4, 0xaf

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array v1, v5, [I

    aput v4, v1, v6

    .line 7
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 8
    invoke-static {v3, v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array v1, v5, [I

    aput v4, v1, v6

    .line 10
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 11
    invoke-static {v3, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    new-array v1, v5, [I

    const/16 v2, 0xd8

    aput v2, v1, v6

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 14
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 16
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 17
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 18
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 19
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 22
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 23
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 24
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 26
    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 28
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    const/16 v1, 0xcc

    const/16 v2, 0xa2

    if-ne v0, v1, :cond_5

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 31
    :cond_5
    invoke-direct {p0, v2, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 32
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configAiSceneSwitch(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    const/16 v4, 0xc9

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    if-eq p1, v5, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v8, "configAiSceneSwitch: MUTEX false"

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 8
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    goto/16 :goto_1

    .line 9
    :cond_2
    sget-object v8, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configAiSceneSwitch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "aiCC"

    const-string v9, "aiScene"

    const-string v10, "ai"

    const/4 v11, 0x0

    if-nez v2, :cond_4

    const v12, 0x7f120717

    .line 10
    invoke-interface {v3, v10, v6, v12}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 11
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    .line 12
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v1

    if-lt v1, v7, :cond_3

    .line 13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v9, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v12, 0x8

    const v13, 0x7f120716

    .line 15
    invoke-interface {v3, v10, v12, v13}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 16
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    .line 17
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v1

    if-lt v1, v7, :cond_5

    .line 18
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v9, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 21
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAiTips()V

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeCvLens()V

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "4"

    .line 25
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setBeautyLens(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 28
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 29
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/FNumberController;->impl2()Lcom/android/camera/protocol/protocols/FNumberController;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 30
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/FNumberController;->toHideBeautyLensPanel()Z

    .line 31
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 32
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    :cond_a
    new-array v1, v7, [I

    aput v4, v1, v6

    .line 33
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 34
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    new-array v2, v7, [I

    const/16 v3, 0x24

    aput v3, v2, v6

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 35
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_b
    if-ne p1, v7, :cond_c

    .line 37
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_c
    if-ne p1, v7, :cond_d

    .line 39
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    :cond_d
    return-void

    :array_0
    .array-data 4
        0x30
        0x5c
    .end array-data
.end method

.method private configAutoZoom()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    const-string v3, "auto_zoom"

    .line 4
    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    .line 6
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    .line 7
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configAutoZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v5, 0xfd

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 9
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v0, v2, [I

    aput v5, v0, v6

    .line 10
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v4, v2, [I

    aput v5, v4, v6

    .line 12
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    new-array v1, v2, [I

    const/16 v4, 0xd8

    aput v4, v1, v6

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 15
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 17
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 18
    invoke-direct {p0, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 19
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 20
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    .line 21
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 22
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 25
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    const-string/jumbo v4, "normal"

    .line 27
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 28
    :goto_0
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 29
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 30
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 32
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 33
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 34
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 35
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x5

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    .line 38
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_7
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    if-ne v3, v0, :cond_8

    .line 41
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 42
    :cond_8
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configBack()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_time_freeze_exit_preview"

    .line 4
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilmDreamBack()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDollyZoomBack()V

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneModeBack()V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCardBack()V

    goto :goto_0

    .line 11
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVVBack()V

    :goto_0
    return-void
.end method

.method private configBeautyMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configBeautyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;->setBeautyMode(ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    :cond_1
    return-void
.end method

.method private configCloneModeBack()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configCloneModeBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "value_clone_click_back"

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->showExitConfirm(Z)V

    :cond_0
    return-void
.end method

.method private configCloneUseGuide()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneAction;->impl2()Lcom/android/camera/protocol/protocols/CloneAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneAction;->onCloneGuideClicked()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configCloneUseGuide"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0xb9

    const-string/jumbo v3, "value_m_film_user_guide"

    const/4 v4, 0x0

    if-eq p0, v2, :cond_5

    const/16 v2, 0xbd

    if-eq p0, v2, :cond_4

    const/16 v2, 0xcf

    if-eq p0, v2, :cond_3

    const/16 v2, 0xd5

    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p0, 0x26

    new-array v1, v4, [I

    .line 7
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x23

    new-array v1, v4, [I

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_4
    const/16 p0, 0x27

    new-array v1, v4, [I

    .line 9
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_5
    const/16 p0, 0x17

    new-array v2, v4, [I

    .line 10
    invoke-interface {v0, p0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_6

    const-string/jumbo v1, "value_clone_click_photo_guide"

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_7

    const-string/jumbo v1, "value_clone_click_video_guide"

    goto :goto_1

    .line 13
    :cond_7
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_8

    const-string/jumbo v1, "value_clone_click_freeze_frame_guide"

    :cond_8
    :goto_1
    const-string p0, "attr_user_guide"

    const-string v0, "click"

    .line 14
    invoke-static {p0, v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private configColorEnhance(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configColorEnhance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f1208e4

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    const/16 v0, 0x8

    .line 8
    invoke-interface {v2, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_close"

    .line 9
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1, v4, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    .line 11
    invoke-interface {v2, v3, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_open"

    .line 12
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    :goto_0
    new-array p1, v4, [I

    const/16 v0, 0xe3

    aput v0, p1, v3

    .line 13
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v4, [I

    const/16 v0, 0x4a

    aput v0, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private configCvType()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0o;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configDocumentModeValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configDocumentModeValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object p0

    const/16 v0, 0xba

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method private configDollyZoomBack()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DollyZoomProcess;->impl2()Lcom/android/camera/protocol/protocols/DollyZoomProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DollyZoomProcess;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private configDualVideo(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configDualVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getTypeByName(Ljava/lang/String;)Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->adjustViewBackground()V

    return-void
.end method

.method private configESPDisplay()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->cancelFlatSelfiePresentation()V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setESPSDisplaywitch(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/16 v5, 0xb5

    aput v5, v3, v4

    .line 6
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "attr_espdisplay"

    .line 8
    invoke-static {v4, v2, v3}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->show(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->cancel()V

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigESPDisplay(Z)V

    return-void
.end method

.method private configFilmDreamBack()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configFilmDreamBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configGif()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0;

    invoke-direct {v3, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v1, v1, [I

    const/16 v3, 0xa2

    aput v3, v1, v2

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configIDCardBack()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->impl2()Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;->callBackEvent()V

    :cond_0
    return-void
.end method

.method private configIntoWorkspace()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object v0

    const-string/jumbo v1, "vlog2"

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configIntoWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffc

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->controlPlay(Z)V

    .line 9
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    return-void
.end method

.method private configLiveVideoQuality(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configLiveVideoQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const-string/jumbo v3, "pref_mi_live_quality"

    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v2, 0xa0

    .line 7
    invoke-virtual {v0, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configMacroMode()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "ignore configMacroMode"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configMacroMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v4

    new-array v5, v1, [I

    const/16 v6, 0xd8

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 9
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v5

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v5

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    .line 14
    invoke-direct {p0, v6, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    :cond_2
    const/16 v6, 0xa2

    if-eqz v0, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    if-eq v8, v6, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    const/16 v9, 0xa9

    if-ne v8, v9, :cond_5

    .line 17
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 18
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    if-eqz v3, :cond_4

    .line 20
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x3

    .line 21
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 22
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    const/4 v9, 0x5

    .line 23
    invoke-interface {v4, v8, v9}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v8

    invoke-virtual {v8}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-static {v8, v7}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    .line 30
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v8

    .line 31
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v9

    const-string/jumbo v10, "normal"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 32
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const-string v8, "macro"

    .line 33
    invoke-direct {p0, v8, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v8

    const-string v9, "m"

    if-eqz v0, :cond_8

    .line 35
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOn(I)V

    .line 36
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    if-eq v8, v6, :cond_a

    new-array v6, v1, [I

    const/16 v8, 0xc2

    aput v8, v6, v7

    .line 37
    invoke-virtual {p0, v9, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v6, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    goto :goto_1

    .line 39
    :cond_8
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    if-eq v10, v6, :cond_9

    .line 40
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 41
    invoke-virtual {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    new-array v6, v1, [I

    const/16 v9, 0xc1

    aput v9, v6, v7

    .line 44
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 45
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 46
    :cond_a
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_b

    const-string/jumbo v8, "on"

    goto :goto_2

    :cond_b
    const-string/jumbo v8, "off"

    :goto_2
    const-string v9, "attr_switch_macro"

    .line 47
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "key_macro_mode"

    .line 48
    invoke-static {v8, v6}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v6

    .line 50
    invoke-direct {p0, v6, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 51
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0xa3

    if-ne v6, v5, :cond_c

    .line 52
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    .line 54
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v5

    .line 55
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v6

    if-eqz v0, :cond_e

    if-eqz v5, :cond_d

    .line 56
    invoke-interface {v5, v7}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 57
    invoke-interface {v5, v7}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    :cond_d
    if-eqz v6, :cond_15

    .line 58
    invoke-interface {v6}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    .line 59
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    if-eqz v4, :cond_10

    .line 60
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    move v1, v7

    :cond_11
    :goto_3
    if-eqz v5, :cond_12

    if-nez v1, :cond_12

    .line 61
    invoke-interface {v5}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_12
    if-eqz v6, :cond_15

    if-nez v1, :cond_15

    .line 62
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 63
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v0, 0xac

    if-ne p0, v0, :cond_13

    .line 64
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OOO()Z

    move-result p0

    if-nez p0, :cond_14

    .line 65
    :cond_13
    invoke-interface {v6}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    :cond_14
    if-eqz v2, :cond_15

    .line 66
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_15
    :goto_4
    return-void
.end method

.method private configMotionDetection()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMotionDetectionSwitch(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v2

    new-array v0, v0, [I

    const/16 v3, 0xbd

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 5
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 6
    invoke-interface {v2, p0}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->updateMotionDetection(Z)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    const v0, 0x7f12084a

    const-string v2, "motion_detection"

    .line 7
    invoke-interface {v1, v2, v4, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 8
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMotionDetectionState:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackMotionDetection()V

    return-void
.end method

.method private configMultiCamReselect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configMultiCamReselect: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoOO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configPanoramaDirection()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result p0

    .line 2
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPanoramaDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->toggleCaptureDirection()V

    :cond_0
    return-void
.end method

.method private configReferenceLineSwitch(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_referenceline_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    const/16 v5, 0xb6

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configReferenceLineSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, p1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineChanged(Z)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onGradienterSwitched(Z)V

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 18
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    .line 20
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method private configRemoteCamera()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configSlowQuality(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSlowQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSlowMotionQuality(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configSpeechShutter()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configSpeechShutter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSpeechShutterStatus(Z)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSpeechShutterStatus(Z)V

    if-eqz v0, :cond_2

    const-string/jumbo v2, "speech_shutter_desc"

    .line 7
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v2, 0xd2

    if-ne p0, v2, :cond_3

    const/4 v0, 0x0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingSpeechShutter(ZZ)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;->impl2()Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 13
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_5
    return-void
.end method

.method private configSuperEIS()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "super_eis"

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    .line 5
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    .line 6
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configSuperEIS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v5, 0xda

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v2, v2, [I

    aput v5, v2, v6

    .line 9
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v7, v2, [I

    aput v5, v7, v6

    .line 11
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    new-array v5, v2, [I

    const/16 v7, 0xd8

    aput v7, v5, v6

    .line 12
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 14
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 17
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 21
    :cond_3
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 22
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    .line 24
    invoke-static {v5, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 25
    invoke-direct {p0, v5, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 26
    :cond_4
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 27
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 28
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    const/4 v7, 0x5

    .line 31
    invoke-interface {v2, v5, v7}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_5
    :goto_0
    xor-int/lit8 v2, v4, 0x1

    .line 32
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperEISChanged(Z)V

    const/16 v2, 0xcc

    const/16 v5, 0xa2

    if-ne v3, v2, :cond_6

    .line 33
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 34
    :cond_6
    invoke-direct {p0, v5, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 35
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz v4, :cond_7

    const/16 v2, 0x8

    const v3, 0x7f120956

    .line 36
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 37
    :cond_7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSuperEISPro()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const-string/jumbo v2, "super_eis_pro"

    .line 3
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configSuperEISPro: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    new-array v4, v1, [I

    const/16 v5, 0xa5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 9
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    const-string/jumbo v0, "off"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v1, [I

    const/16 v3, 0xd8

    aput v3, v0, v6

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 13
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 16
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 20
    :cond_2
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 21
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 22
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 24
    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 26
    :cond_3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 27
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    const/4 v3, 0x5

    .line 30
    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_4
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    if-ne v2, v0, :cond_5

    .line 31
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 32
    :cond_5
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 33
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSwitchHandGesture()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configSwitchHandGesture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v2, "hand_gesture_desc"

    .line 6
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 7
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setHandGestureStatus(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0;-><init>(Z)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private configSwitchUltraWideBokeh(I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const v3, 0x7f1209cf

    const/4 v4, 0x0

    const-string/jumbo v5, "ultra_wide_bokeh"

    const/4 v6, 0x1

    if-eq p1, v6, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configSwitchUltraWideBokeh: MUTEX false"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateFlatSelfieBokehState()V

    .line 8
    invoke-interface {v0, v5, v4, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result p1

    if-nez p1, :cond_6

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configSwitchUltraWideBokeh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v7, "M_portrait_"

    const-string v8, "attr_whole_body"

    .line 13
    invoke-static {v7, v8, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v5, v4, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0, v5, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/16 p1, 0x8

    const v1, 0x7f1209d0

    .line 18
    invoke-interface {v0, v5, p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateFlatSelfieBokehState()V

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeCvLens()V

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method private configTilt(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTilt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private configTimerBurst(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v0

    const v1, 0x7f1209b1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 p1, 0x1

    xor-int/2addr v0, p1

    .line 2
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configTimerBurst: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "attr_timer_burst"

    invoke-static {v6, v4, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    new-array p1, p1, [I

    const/16 v2, 0xd1

    aput v2, p1, v4

    .line 12
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 13
    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    :cond_2
    invoke-interface {v0, v4, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertTimerBurstHint(II)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    .line 15
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configTimerBurst: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->muteTimerConfig()V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x8

    .line 19
    invoke-interface {p0, p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertTimerBurstHint(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private configUseGuide(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUseGuide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xbb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    move-object p1, v1

    move-object v0, p1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/android/camera/dualvideo/user_guide/FragmentDualVideoUserGuide;

    invoke-direct {p1}, Lcom/android/camera/dualvideo/user_guide/FragmentDualVideoUserGuide;-><init>()V

    const-string v0, "dualvideo_user_guide"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/android/camera/fragment/ambilight/FragmentAmbilightDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilightDescription;-><init>()V

    const-string v0, "ambilight_user_guide"

    :goto_0
    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    const v3, 0x7f1300ba

    .line 8
    invoke-virtual {p1, v2, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string p0, "attr_user_guide"

    const-string p1, "click"

    .line 12
    invoke-static {p0, v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private configVV()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf

    const/16 v3, 0xa2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffa

    if-eq v1, v6, :cond_8

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00oo()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    invoke-interface {v6}, Lcom/android/camera/protocol/protocols/TopAlert;->clearVideoUltraClear()V

    :cond_0
    const/16 v6, 0xa9

    if-ne v1, v6, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    move v6, v4

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    move v6, v4

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v6, v4

    .line 14
    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v6

    .line 16
    invoke-virtual {v6, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v6, v4

    .line 17
    :cond_5
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 18
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    move v6, v4

    :cond_6
    if-eqz v6, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 19
    invoke-static {v7, v1}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    .line 20
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v7

    const-string v8, "6"

    .line 21
    invoke-virtual {v7, v8}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    .line 22
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    new-array v1, v5, [I

    .line 23
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    const/4 v6, 0x0

    .line 25
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v6, 0x8

    const v7, 0x7f120a23

    .line 27
    invoke-interface {v1, v6, v7}, Lcom/android/camera/protocol/protocols/TopAlert;->alertTopHint(II)V

    :cond_9
    new-array v1, v5, [I

    .line 28
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoUltraClearTip()V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideo4KHDR10P()V

    move v6, v5

    .line 31
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-array v1, v4, [I

    const/16 v2, 0xd8

    aput v2, v1, v5

    .line 32
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    new-array v1, v4, [I

    const/16 v2, 0x100

    aput v2, v1, v5

    .line 33
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 34
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->refreshExtraMenu()V

    if-eqz v6, :cond_b

    .line 35
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_b
    return-void
.end method

.method private configVVBack()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configVVBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configVideoHdrIfNeed()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_6

    .line 4
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const-string v3, "hdr"

    .line 5
    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "attr_video_hdr"

    if-nez v3, :cond_3

    .line 7
    invoke-static {v4, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    .line 8
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "video Hdr mutex"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v3, v2, [I

    const/16 v4, 0xd8

    aput v4, v3, v1

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 14
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 15
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    .line 18
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v3

    const-string/jumbo v4, "normal"

    .line 20
    invoke-virtual {v3, v0, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    .line 22
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    .line 25
    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->getMaxMainZoomRatio(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v3

    if-gtz v6, :cond_2

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4

    .line 26
    :cond_2
    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v4, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    .line 28
    :cond_4
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 30
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 31
    invoke-interface {p0, v2, v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method private configVideoQuality(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xd8

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v4

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setComponentValue(ILjava/lang/String;)V

    .line 8
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configVideoQuality: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    const-string/jumbo v6, "pref_video_quality_key"

    invoke-static {v6, v5, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v5, "super_night_video_4k_desc"

    const/16 v6, 0xd6

    if-ne v2, v6, :cond_0

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0oO0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "8,24"

    .line 11
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-direct {p0, v5, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 13
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperNightVideo4K()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, v5, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 15
    :goto_0
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    .line 16
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubFps(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubFps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "120"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "8"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubQuality(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "8"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "120"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    const-string v1, "3001"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->openVideo8K()V

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubtitle()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v2

    .line 5
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configVideoSubtitle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v2, 0x1

    .line 6
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitle(Z)V

    const/16 v3, 0xa2

    const/16 v4, 0xdc

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 8
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 10
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    const/16 v0, 0xd6

    if-eq v1, v0, :cond_4

    .line 11
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    .line 12
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    new-array v0, v6, [I

    const/16 v2, 0xd8

    aput v2, v0, v5

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 18
    :cond_3
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    :cond_4
    :goto_0
    const/16 v0, 0xcc

    if-ne v1, v0, :cond_5

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 20
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    .line 22
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/protocols/SubtitleRecording;->impl2()Lcom/android/camera/protocol/protocols/SubtitleRecording;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/SubtitleRecording;->initPermission()V

    .line 25
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/SubtitleRecording;->checkNetWorkStatus()V

    .line 26
    :cond_6
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private conflictWithFlashAndHdr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_super_resolution_key"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getModule()Ljava/util/Optional;
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
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OoooO00;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getUpDistance()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->getDistanceForWM()I

    move-result p0

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->getDistanceForWM()I

    move-result p0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private is4KQuality(II)Z
    .locals 0

    const/16 p0, 0xf00

    if-lt p1, p0, :cond_0

    const/16 p0, 0x870

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private is8KQuality(II)Z
    .locals 0

    const/16 p0, 0x1e00

    if-lt p1, p0, :cond_0

    const/16 p0, 0x10e0

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBeautyPanelShow()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isChangeManuallyParameters()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v5

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v0

    .line 10
    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v2

    .line 11
    invoke-virtual {v3, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v3

    .line 12
    invoke-virtual {v4, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v4

    .line 13
    invoke-virtual {v5, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v5

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result p0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isShowMimojiView(Lcom/android/camera/protocol/protocols/BaseDelegate;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 1
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result p1

    const v0, 0xfff0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isVideoRecoding(Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/camera/module/VideoBase;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private moduleExist()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private moduleIndex()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private mutexBeautyBusiness(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0xd8

    aput v3, v2, v1

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 7
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->hideSwitchTip()V

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->hideSwitchTip()V

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 18
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v3

    .line 20
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->hideSwitchTip()V

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 24
    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 30
    :cond_4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 31
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    if-eqz v2, :cond_5

    new-array p0, v0, [I

    const/16 p1, 0x100

    aput p1, p0, v1

    .line 32
    invoke-interface {v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_5
    if-eqz v2, :cond_6

    .line 33
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 34
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    :cond_6
    return-void
.end method

.method private openVideo8K()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    const/16 v3, 0x1e

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->track8KVideo(ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    :cond_2
    const/4 v1, 0x1

    new-array v3, v1, [I

    const/16 v4, 0xd8

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oooo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 13
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    .line 20
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v4

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v4

    .line 23
    :goto_1
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_8

    .line 24
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 25
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_8

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v3

    const-string/jumbo v4, "wide"

    .line 29
    invoke-virtual {v3, v2, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 30
    :cond_8
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 31
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 33
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 34
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 35
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 36
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 37
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 38
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, v3, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    .line 40
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 41
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    .line 42
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array p0, v1, [I

    const/16 v1, 0x100

    aput v1, p0, v5

    .line 43
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    const p0, 0x7f1207e2

    .line 44
    invoke-interface {v0, v5, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    return-void
.end method

.method private persistFilter(I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persistFilter: filterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method public static preload()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preload"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reConfigTipOfHdr(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "on"

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string/jumbo p1, "normal"

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isHDRShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x8

    .line 9
    invoke-interface {v0, p0, v1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertHDR(IZZ)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-interface {v0, v1, v1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertHDR(IZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private resetVideoBokehLevel()V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    return-void
.end method

.method private resetVideoFilter()V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method private setTipsState(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->setTipsState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private showDualController(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 p1, 0xa3

    if-ne p0, p1, :cond_2

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showOrHideManualPictureStyle()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideContrastSaturationSharpness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object v3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v4, 0xa7

    if-eq p0, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 10
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v3, 0x3

    new-array v1, v1, [I

    const/16 v4, 0xe3

    aput v4, v1, v2

    .line 12
    invoke-interface {p0, v3, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_5
    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->show()V

    goto :goto_2

    :cond_6
    if-eqz p0, :cond_8

    const/16 v0, 0x28

    new-array v1, v2, [I

    .line 14
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    const/4 p0, 0x2

    const/4 v1, 0x6

    .line 15
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_8
    :goto_2
    return-void
.end method

.method private showOrHideTipImage(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    :cond_0
    return-void
.end method

.method private singeSwitchVideoBeauty(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    const/16 v1, 0x28

    goto :goto_0

    :cond_2
    move v1, v2

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    if-nez p1, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    .line 11
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    .line 12
    :cond_3
    invoke-static {v2}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    .line 14
    invoke-static {v2}, Lcom/android/camera/fragment/beauty/ShineHelper;->onFilterChanged(Z)V

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    :cond_5
    :goto_1
    return-void
.end method

.method private togglePrivacyWatermark()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isDocumentMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    const-class p0, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isIDCardMode()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 5
    const-class p0, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;->showGotoInputDialog()V

    :cond_2
    return-void

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;->togglePrivacyWatermarkView(Z)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_5

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0xa3

    aput v2, v0, v1

    .line 13
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 14
    :cond_5
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackPrivacyWaterMarkTriggerCommon()V

    :cond_6
    return-void
.end method

.method private trackCenterMarkChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "center_mark"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "M_manual_"

    const-string v0, "manual_focus_peak"

    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "gradient"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "HHT"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackReferenceLineChanged(Z)V
    .locals 1

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo p1, "pref_camera_referenceline_type_key"

    const-string v0, "jiugongge"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "attr_reference_line"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackReferenceLineTypeChanged()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_referenceline_type_key"

    const-string v1, "jiugongge"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_reference_line_type"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackSuperEISChanged(Z)V
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_module_name"

    .line 4
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    const-string v1, "attr_sensor_id"

    .line 6
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attr_super_eis"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_video_common_click"

    .line 8
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackSuperResolutionChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "M_manual_"

    const-string/jumbo v0, "super_resolution"

    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private trackUltraPixelPortraitChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ultrapixel_portrait"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateAiScene(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->setClosed(ZI)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc9

    aput v1, p1, v0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutoZoom(Z)V
    .locals 0

    return-void
.end method

.method private updateComponentBeauty(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 8
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    const/16 v0, 0xef

    .line 10
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateComponentFilter: close = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFilter()Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->setClosed(ZI)V

    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onFilterChanged(Z)V

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 10
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateComponentFlash(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "d"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isNeenExpand()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "0"

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->enableFlashAnim(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p2, 0x0

    const/16 v0, 0xc1

    aput v0, p0, p2

    .line 11
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateComponentHdr(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0O;

    invoke-direct {v2, p2, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo0O;-><init>(ZLcom/android/camera/data/data/config/ComponentConfigHdr;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isNeenExpand()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->enableHdrAnim(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->enableHdrAnim(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xc2

    aput v0, p0, p1

    .line 11
    invoke-interface {p2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateComponentShine(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setClosed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLiveShot(Z)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->setClosed(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xce

    aput v1, p1, v0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateRaw(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setClosed(ZI)V

    return-void
.end method

.method private updateUltraPixel(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    return-void
.end method

.method private watermarkToast()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f120135

    const-string v2, "ai_watermark"

    .line 2
    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 p1, 0xcf

    if-eq v0, p1, :cond_1

    const/16 p1, 0xd2

    if-eq v0, p1, :cond_1

    const/16 p1, 0xd5

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUseGuide(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;ILcom/android/camera/module/Module;)V
    .locals 1

    .line 14
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p3

    const-string/jumbo v0, "off"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 22
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/module/Module;)V
    .locals 5

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa2

    if-eq v0, v4, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v2, [I

    const/16 v0, 0xb

    aput v0, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 9
    :cond_0
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x3a
    .end array-data
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/module/Module;)V
    .locals 2

    const-string v0, "cvtype"

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/module/Module;)V
    .locals 6

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    const/16 v5, 0x8

    .line 8
    :goto_0
    invoke-interface {v2, v5, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    const-string v0, "960fps_desc"

    if-eqz v2, :cond_5

    .line 9
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O000o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {v2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const p1, 0x7f120430

    .line 12
    invoke-interface {v2, v0, v4, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    .line 13
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS960Direct(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    invoke-interface {v2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 15
    :cond_6
    invoke-direct {p0, v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const p1, 0x7f120597

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v3, 0x3c0

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x1

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 18
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v0, v4, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public closeCvLens()V
    .locals 0

    const-string p0, "0"

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setCvLens(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->impl2()Lcom/android/camera/protocol/protocols/CvLensProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->toHideCvLens()Z

    :cond_1
    return-void
.end method

.method public varargs closeMutexElement(Ljava/lang/String;[I)V
    .locals 6

    .line 1
    array-length v0, p2

    new-array v0, v0, [I

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_d

    .line 4
    aget v2, p2, v1

    const/16 v3, 0xc1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_b

    const/16 v3, 0xc2

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc4

    const/4 v5, 0x2

    if-eq v2, v3, :cond_8

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xce

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd4

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe3

    if-eq v2, v3, :cond_3

    const/16 v3, 0xed

    if-eq v2, v3, :cond_2

    const/16 v3, 0xef

    if-eq v2, v3, :cond_1

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_0

    .line 5
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v2, 0x33

    .line 6
    aput v2, v0, v1

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v2, 0xd

    .line 9
    aput v2, v0, v1

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v2, 0x2c

    .line 11
    aput v2, v0, v1

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x4a

    .line 12
    aput v2, v0, v1

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    .line 14
    aput v5, v0, v1

    goto :goto_1

    .line 15
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    const/16 v2, 0x32

    .line 16
    aput v2, v0, v1

    goto :goto_1

    .line 17
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const/16 v2, 0x31

    .line 18
    aput v2, v0, v1

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    .line 21
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v5, 0xa3

    if-ne v3, v5, :cond_c

    .line 22
    check-cast v2, Lcom/android/camera/features/mode/capture/CaptureModule;

    .line 23
    invoke-virtual {v2}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lcom/xiaomi/camera/liveshot/LiveShotManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->stopLiveShot(Z)V

    goto :goto_1

    .line 24
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v2, 0x24

    .line 25
    aput v2, v0, v1

    goto :goto_1

    .line 26
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 27
    aput v5, v0, v1

    goto :goto_1

    .line 28
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    .line 29
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 30
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    :cond_a
    const/16 v2, 0xb

    .line 31
    aput v2, v0, v1

    goto :goto_1

    .line 32
    :cond_b
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v2, 0xa

    .line 33
    aput v2, v0, v1

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 34
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOOo;

    invoke-direct {p1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOOo;-><init>([I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configAi108()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configAi108: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xaf

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setAi108Running(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "ultra_pixel"

    .line 7
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->setTipsState(Ljava/lang/String;Z)V

    new-array v2, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xab

    aput v5, v2, v4

    .line 8
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 10
    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configBackSoftLightSwitch(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOoo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOoo;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configBeautySwitch(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v0, 0xa2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v3, 0xa9

    if-eq p1, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/16 v4, 0xa3

    const/16 v5, 0xa1

    if-eq p1, v4, :cond_2

    const/16 v4, 0xab

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    if-nez v3, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    .line 4
    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "i:0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    .line 6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    xor-int/2addr v7, v8

    .line 7
    invoke-virtual {v4, p1, v6}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    .line 8
    invoke-static {v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautySwitchChanged(Ljava/lang/String;)V

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    if-eq p1, v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    const-string/jumbo v5, "pref_video_speed_fast_key"

    .line 11
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 12
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 13
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 14
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo p1, "normal"

    .line 15
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    if-ne p1, v5, :cond_5

    .line 17
    invoke-direct {p0, v5, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v2, [I

    const/16 v0, 0xd

    aput v0, p1, v1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_1
    return-void
.end method

.method public configCenterMarkSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    .line 5
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCenterMarkSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-ne v2, p1, :cond_3

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackCenterMarkChanged(Z)V

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method public configCinematicAspectRatio(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 7
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCinematicAspectRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    const/16 v2, 0xab

    const-string/jumbo v3, "on"

    const-string/jumbo v4, "off"

    const/4 v5, 0x0

    if-eq p1, v2, :cond_6

    const/16 v2, 0xa3

    if-eq p1, v2, :cond_6

    const/16 v2, 0xad

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    const-string v0, "attr_video_ratio_movie"

    .line 9
    invoke-static {v0, v3, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v1, [I

    const/16 v1, 0xd8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 11
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 12
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oooo()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 15
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_3

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    const-string p1, "attr_picture_ration_movie"

    .line 16
    invoke-static {p1, v3, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configClone: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneChooser;->impl2()Lcom/android/camera/protocol/protocols/CloneChooser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneChooser;->hide()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xb9

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneProcess;->quit()V

    :cond_3
    const/16 p1, 0xd2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configExposureFeedbackSwitch(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    if-ne p0, p1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    if-ne p0, p1, :cond_3

    const/16 p0, 0xa7

    if-ne v3, p0, :cond_1

    const-string p0, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p0, "M_proVideo_"

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo p1, "on"

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "off"

    :goto_1
    const-string v3, "manual_focus_peak"

    .line 5
    invoke-static {p0, v3, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_3
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configExposureFeedbackSwitch: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string/jumbo p1, "pref_camera_peak_key"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 11
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    .line 12
    new-instance p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoO;

    invoke-direct {p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoO;-><init>(Z)V

    invoke-virtual {v2, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configFPS960(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configFPS960: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "slow_motion_480"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "slow_motion_960"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "slow_motion_960_direct"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "slow_motion_1920"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "slow_motion_3840"

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "960fps_desc"

    .line 11
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    :cond_2
    const/16 v2, 0xac

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSlowMotion3840(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p3

    const-string v0, "configFilm: start="

    if-nez p1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", filmItem.id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v0, 0xd4

    const/16 v1, 0xcf

    const/16 v2, 0xbd

    const/16 v3, 0xd0

    if-eqz p2, :cond_7

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V

    .line 5
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v4, "video_a"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v2, "video_b"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v1, "video_c"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p2

    if-nez p2, :cond_3

    .line 11
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startShot ignore, configChanges is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {v1}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 13
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p2, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v1, "video_d"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo p2, "video_e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->reset()V

    .line 19
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 20
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1207f7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1207f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 26
    invoke-static {p3, p1}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_9

    if-eq p3, v3, :cond_9

    if-eq p3, v0, :cond_9

    const/16 p1, 0xd5

    if-eq p3, p1, :cond_9

    goto :goto_2

    .line 28
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_a

    if-ne p3, v3, :cond_a

    const/4 p2, 0x0

    .line 29
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->setAlertAnim(Z)V

    const/16 p2, 0x8

    const p3, 0x7f1203fa

    const-wide/16 v0, -0x1

    .line 30
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_a
    const/16 p1, 0xd3

    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public configFlash(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertHDR(IZZ)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoo0;

    invoke-direct {v0, p0, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoo0;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v2, 0xa7

    if-ne p1, v2, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "on"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "off"

    :goto_1
    const-string v3, "manual_focus_peak"

    invoke-static {p1, v3, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configFocusPeakSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 9
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoo;

    invoke-direct {p1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoo;-><init>(Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    .line 5
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGradienterSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, p1, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onGradienterSwitched(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoHdrIfNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "auto"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v0, 0xa3

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->reclaimMemoryForCamera(J)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOo0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOo0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0OO;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v1, "off"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0oO;

    invoke-direct {v2, p0, p1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0oO;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigTipOfHdr(I)V

    return-void
.end method

.method public configIDCard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configIDCard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xdd

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoIDCard()V

    const/16 v0, 0xb6

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configLiveMusicSelect()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const-string v0, "mi_live_click_music"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/fragment/music/LiveMusicActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    return-void
.end method

.method public configLiveShotSwitch(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 8
    :cond_5
    check-cast v0, Lcom/android/camera/features/mode/capture/CaptureModule;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    goto/16 :goto_1

    .line 9
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 10
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configLiveShotSwitch: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lcom/xiaomi/camera/liveshot/LiveShotManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->stopLiveShot(Z)V

    goto/16 :goto_1

    .line 13
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    .line 14
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    .line 15
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configLiveShotSwitch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lcom/xiaomi/camera/liveshot/LiveShotManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->stopLiveShot(Z)V

    const/16 p0, 0x8

    const p1, 0x7f120249

    .line 17
    invoke-interface {v1, p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertLiveShotHint(II)V

    goto :goto_1

    .line 18
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-nez p1, :cond_a

    .line 20
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lcom/xiaomi/camera/liveshot/LiveShotManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->startLiveShot()V

    const p1, 0x7f12024a

    .line 26
    invoke-interface {v1, v5, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertLiveShotHint(II)V

    :goto_0
    const-string p1, "live_shot"

    .line 27
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_1

    .line 28
    :cond_a
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "Ignore #startLiveShot in ultra pixel photography mode"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    new-array p0, v4, [I

    const/16 p1, 0xce

    aput p1, p0, v5

    .line 29
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method public configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/data/observeable/VMProcessing;->setCurrentWorkspaceItem(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    .line 4
    sget-object p2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configLiveVV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVChooser;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVChooser;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/live/LiveVVChooser;->hide()V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V

    const/16 p1, 0xb3

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget p1, p1, Lcom/android/camera/fragment/vv/VVItem;->index:I

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->quit()V

    .line 14
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/16 p2, 0xd1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_2

    .line 16
    :cond_6
    :goto_1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configLiveVV exit background"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :goto_2
    return-void
.end method

.method public configMeter(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMeter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckParameterResetTip(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0O0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configMotionDetectionSwitch(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configNearRangeMode()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configRGBHistogramSwitch(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    .line 5
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configRGBHistogramSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoHistogramOpen(Z)V

    if-eqz v0, :cond_2

    const-string/jumbo v1, "off"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "on"

    :goto_0
    const-string v2, "M_proVideo_"

    const-string v3, "histogram"

    .line 7
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 9
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRGBHistogramSwitched(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configRatio(ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideLighting()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v0, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureSize(ILjava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->reConfigCinematicAspectRatioIfRatioChanged(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    new-array v5, v4, [I

    const/16 v6, 0xfb

    aput v6, v5, v3

    .line 12
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 13
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const-string v5, "16x9"

    if-eqz v1, :cond_5

    move p1, v4

    move-object p2, v5

    :cond_5
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "20.5x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_1
    const-string v5, "19.5x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string v5, "16x10"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v5, "21x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v5, "20x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "19x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v5, "18x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_1

    :sswitch_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v3

    goto :goto_1

    :sswitch_8
    const-string v5, "9x8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v5, "1x1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v1, 0x9

    :cond_6
    :goto_1
    packed-switch v1, :pswitch_data_0

    move v1, v3

    :goto_2
    move v5, v1

    goto :goto_3

    :pswitch_0
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_7

    .line 15
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    :cond_7
    :pswitch_1
    move v1, v4

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_8

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    :cond_8
    if-eqz v5, :cond_9

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v4, [I

    const/16 v4, 0xd1

    aput v4, v1, v3

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    :cond_9
    if-nez p1, :cond_a

    .line 20
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configRatio: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v2, v0, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 22
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "4x3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeCvLens()V

    .line 24
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 25
    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_9
        0xe4b9 -> :sswitch_8
        0x171fa6 -> :sswitch_7
        0x172728 -> :sswitch_6
        0x172ae9 -> :sswitch_5
        0x177d7f -> :sswitch_4
        0x178140 -> :sswitch_3
        0x2ccd452 -> :sswitch_2
        0x56d670f0 -> :sswitch_1
        0x580c7606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configRawSwitch(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configRawSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "raw"

    const-string v5, "M_manual_"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1, v6}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    const-string/jumbo v0, "off"

    .line 8
    invoke-static {v5, p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v1, v4}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    .line 10
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v4, [I

    const/16 v2, 0xd1

    aput v2, v0, v6

    const-string v2, "n"

    .line 11
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    :cond_3
    const-string/jumbo v0, "on"

    .line 12
    invoke-static {v5, p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 14
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckRaw()V

    :goto_1
    return-void
.end method

.method public configReferenceSwitch(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configReferenceSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;->setComponentValue(ILjava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 11
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineTypeChanged()V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    .line 16
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    const/4 p1, 0x1

    .line 17
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    .line 18
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    :cond_3
    :goto_0
    return-void
.end method

.method public configRotationChange(II)V
    .locals 4

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRotationChange: show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_4

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_0

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0, v2, v2}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_1
    if-eqz v0, :cond_7

    const/4 p0, 0x2

    .line 5
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->isSubTipShowing(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {v0, v2, v2}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 7
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0, v2, v2}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_5
    if-eqz p0, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    .line 9
    :goto_1
    invoke-interface {p0, v1, v2}, Lcom/android/camera/protocol/protocols/LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public configSuperResolutionSwitch(I)V
    .locals 4

    const-string/jumbo v0, "pref_camera_super_resolution_key"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSuperResolutionSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperResolutionChanged(Z)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 6
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object p1

    const-string v1, "c"

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xc1
        0xc2
    .end array-data
.end method

.method public configSwitchUltraPixel(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2
    iget-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/Module;

    invoke-interface {v4}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v4

    if-nez v4, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "ignore configSwitchUltraPixel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getCurrentSupportUltraPixel()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    const/16 v10, 0x8

    const-string v11, "REAR_0x2"

    const-string/jumbo v12, "ultra_pixel"

    const-string v13, "j"

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-eq v1, v15, :cond_6

    if-eq v1, v14, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v5, :cond_11

    .line 11
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v3, "configSwitchUltraPixel: MUTEX false"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0, v13}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v1

    if-ne v1, v14, :cond_5

    .line 16
    invoke-direct {v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, v4}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    .line 18
    :goto_0
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v10, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 19
    :cond_6
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configSwitchUltraPixel: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    invoke-static {v4, v9}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    .line 24
    invoke-interface {v1, v9}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    :cond_7
    const/4 v1, 0x2

    if-eqz v6, :cond_d

    const/4 v5, -0x1

    .line 25
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v10, "REAR_0x5"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v5, v15

    goto :goto_1

    :pswitch_2
    const-string v10, "REAR_0x3"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v5, v14

    goto :goto_1

    :pswitch_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v5, v9

    goto :goto_1

    :pswitch_4
    const-string v10, "REAR_0x1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v5, v1

    :cond_8
    :goto_1
    const/16 v10, 0xed

    if-eqz v5, :cond_a

    if-eq v5, v15, :cond_9

    if-eq v5, v1, :cond_9

    if-eq v5, v14, :cond_9

    goto :goto_2

    .line 26
    :cond_9
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-array v3, v15, [I

    aput v10, v3, v9

    .line 27
    invoke-virtual {v0, v13, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_2

    :cond_a
    const/4 v5, 0x4

    new-array v5, v5, [I

    .line 28
    fill-array-data v5, :array_0

    .line 29
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    .line 30
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 31
    array-length v3, v5

    sub-int/2addr v3, v15

    aput v10, v5, v3

    .line 32
    :cond_b
    invoke-virtual {v0, v13, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 33
    :cond_c
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    iget-object v5, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    .line 34
    invoke-static {v8}, Lcom/android/camera/CameraSettings;->switchOnUltraPixel(Ljava/lang/String;)V

    .line 35
    invoke-direct {v0, v14}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_3

    .line 36
    :cond_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 37
    invoke-virtual {v0, v13}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 39
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 40
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    goto :goto_4

    :cond_e
    move v5, v9

    :goto_4
    if-eqz v5, :cond_f

    .line 41
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 42
    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 43
    invoke-direct {v0, v4, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    if-eqz v6, :cond_10

    .line 44
    invoke-direct {v0, v12, v15}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_5

    .line 45
    :cond_10
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v2, v12, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xa7

    if-ne v4, v0, :cond_11

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M_manual_"

    const-string/jumbo v3, "supreme_pixel"

    invoke-static {v1, v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_11
    :goto_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v6, :cond_13

    .line 53
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v0, :cond_12

    .line 54
    invoke-interface {v0, v9}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 55
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    :cond_12
    if-eqz v1, :cond_17

    .line 56
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_7

    :cond_13
    if-eqz v3, :cond_14

    .line 57
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v9

    :cond_14
    if-eqz v0, :cond_15

    if-nez v9, :cond_15

    .line 58
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_15
    if-eqz v1, :cond_17

    if-nez v9, :cond_17

    const/16 v0, 0xa7

    if-eq v4, v0, :cond_16

    .line 59
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    :cond_16
    if-eqz v2, :cond_17

    .line 60
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_17
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4372e32
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xc2
        0xef
        0xc9
        0xce
    .end array-data
.end method

.method public configTiltSwitch(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 3
    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const/16 v3, 0xa0

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configTiltSwitch: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v7

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    const-string p1, "circle"

    .line 10
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    .line 12
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    move v4, v6

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "off"

    .line 13
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v7

    .line 15
    :goto_0
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTiltSwitch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p0, 0xe4

    .line 16
    invoke-interface {v1, v4, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 17
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 18
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 20
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigQrCodeTip()Z

    .line 21
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigAiTip()Z

    :cond_6
    return-void
.end method

.method public configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneChooser;->impl2()Lcom/android/camera/protocol/protocols/CloneChooser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/CloneChooser;->hide()V

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/protocols/CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xd5

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configTimerSwitch(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configTimerSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object p0

    .line 4
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTimerChanged(Ljava/lang/String;)V

    const/16 v0, 0xa0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public configUltraPixelPortrait(I)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ultra_pixel_portrait_mode_key"

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    const/16 v4, 0x8

    const-string/jumbo v5, "o"

    const v6, 0x7f1209cb

    const-string/jumbo v7, "ultra_pixel_portrait"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_3

    const/4 v10, 0x3

    if-eq p1, v10, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_6

    .line 5
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configUltraPixelPortrait: MUTEX false"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {v3, v7, v4, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configUltraPixelPortrait: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 12
    invoke-interface {v3, v7, v4, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 14
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 16
    fill-array-data p1, :array_0

    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 20
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 21
    :cond_5
    invoke-interface {v3, v7, v8, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_0
    xor-int/lit8 p1, v2, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackUltraPixelPortraitChanged(Z)V

    .line 23
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v9, [I

    const/16 v0, 0x39

    aput v0, p1, v8

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    new-array p0, v9, [I

    const/16 p1, 0xd7

    aput p1, p0, v8

    .line 26
    invoke-interface {v3, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    return-void

    :array_0
    .array-data 4
        0xc2
        0xc4
        0xc9
        0xef
    .end array-data
.end method

.method public configVideoLogSwitch(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 4
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configVideoLogSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    .line 5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "off"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "on"

    :goto_0
    const-string v2, "M_proVideo_"

    const-string v3, "log"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 9
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 12
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 15
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    const-string/jumbo v2, "wide"

    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 22
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public exitNightInCaptureMode()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOO0O;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public findBestWatermarkItem(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public hideLighting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    const/16 v2, 0xab

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyFlatSelfieOnFolded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    .line 6
    invoke-interface {v0, p0}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onConfigChanged(I)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO00o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO00o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 6
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v4, v3

    const/16 v5, 0xb0

    move v6, v1

    move v7, v6

    move v8, v5

    :goto_0
    if-ge v6, v4, :cond_c

    aget v9, v3, v6

    if-ne v9, p1, :cond_2

    goto :goto_3

    :cond_2
    const/16 v10, 0xe5

    const/16 v11, 0xd1

    if-ne p1, v11, :cond_3

    if-eq v9, v10, :cond_b

    :cond_3
    if-ne p1, v10, :cond_4

    if-ne v9, v11, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0xcb

    if-eq v9, v12, :cond_a

    const/16 v12, 0xce

    if-eq v9, v12, :cond_8

    if-eq v9, v11, :cond_6

    if-eq v9, v10, :cond_5

    .line 7
    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v10

    if-eqz v10, :cond_b

    if-ne p1, v12, :cond_7

    goto :goto_2

    .line 9
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v10

    if-eqz v10, :cond_b

    move v7, v2

    :cond_7
    :goto_1
    move v8, v9

    goto :goto_3

    .line 10
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v12

    if-eqz v12, :cond_b

    if-ne p1, v11, :cond_9

    :goto_2
    move v8, v5

    goto :goto_3

    :cond_9
    if-ne p1, v10, :cond_7

    goto :goto_2

    .line 11
    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 12
    invoke-interface {v9}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    if-nez v7, :cond_e

    if-eq v8, v5, :cond_d

    .line 14
    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 15
    :cond_d
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    .line 16
    :cond_e
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    if-eq v8, v5, :cond_10

    .line 17
    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    .line 18
    :cond_f
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_10
    :goto_4
    return-void
.end method

.method public onConfigValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfigValue(ILjava/lang/String;)V

    return-void
.end method

.method public onShineDismiss(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v0, 0xa7

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onThermalNotification(I)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThermalNotification isAlive false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThermalNotification current module is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    .line 7
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8
    invoke-interface {p0}, Lcom/android/camera/module/Module;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setThermalLevel(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "thermalConstrained"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-interface {p0}, Lcom/android/camera/module/Module;->thermalConstrained()V

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 15
    :cond_4
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    new-array v1, v1, [I

    const/16 v4, 0x42

    aput v4, v1, v3

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 16
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v1

    const-string v2, ""

    const-string v4, "0"

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "thermalCloseFlash"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 21
    :cond_5
    invoke-interface {p0}, Lcom/android/camera/module/Module;->isThermalThreshold()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseFront()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    :cond_6
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseBoth()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    :cond_7
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "recording time is up to thermal threshold"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_8
    move-object v1, v2

    .line 26
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    const-string v6, "104"

    if-eqz v5, :cond_c

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo00()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 29
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThermalDetector;->thermalCloseFront()Z

    move-result v5

    if-nez v5, :cond_9

    .line 30
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThermalDetector;->thermalCloseBoth()Z

    move-result v5

    if-nez v5, :cond_9

    .line 31
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 32
    :cond_9
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v2, v6

    goto :goto_2

    .line 35
    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    move-object v2, v4

    goto :goto_2

    :cond_c
    move-object v2, v1

    .line 37
    :cond_d
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v3

    .line 38
    :cond_e
    invoke-static {p1, p0, v2}, Lcom/android/camera/module/common/ModuleUtil;->updateFlashModeAndRefreshUI(ILcom/android/camera/module/Module;Ljava/lang/String;)V

    return v3

    .line 39
    :cond_f
    :goto_3
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThermalNotification don\'t support hardware flash"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 40
    :cond_10
    :goto_4
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThermalNotification current module has not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public reCheckAIWatermark(Z)V
    .locals 7

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0OOoo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0O0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    const/16 v2, 0xcd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    const/16 v5, 0xbc

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result v2

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceDisable(I)Z

    move-result v0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_4

    const v5, 0x7f120135

    const-string v6, "ai_watermark"

    .line 10
    invoke-interface {v0, v6, v3, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_4
    if-nez p1, :cond_e

    .line 11
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getIWatermarkEnable()Z

    move-result p1

    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->impl2()Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->resetResult()V

    .line 14
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    goto :goto_5

    .line 15
    :cond_6
    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p1

    if-ne v0, v2, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v3

    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    const/4 v5, 0x4

    if-eq v0, v5, :cond_9

    const/16 v5, 0xb

    if-eq v0, v5, :cond_9

    const/16 v5, 0xc

    if-eq v0, v5, :cond_9

    move v3, v4

    goto :goto_2

    :cond_8
    move v3, v0

    :cond_9
    :goto_2
    if-eqz v3, :cond_b

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->impl2()Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 19
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;->resetResult()V

    .line 20
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    goto :goto_4

    .line 22
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 23
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 24
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getUpDistance()I

    move-result p1

    if-lez p1, :cond_c

    goto :goto_3

    :cond_c
    move v4, v2

    .line 25
    :goto_3
    invoke-interface {v0, v4, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->moveWatermarkLayout(II)V

    .line 26
    :cond_d
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public reCheckAiAudio()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reCheckAiAudio:SupportAiAudioNew"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f120792

    goto :goto_0

    :cond_2
    move p0, v4

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p0

    :goto_0
    if-eq p0, v4, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 9
    :goto_1
    invoke-interface {v1, v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method public reCheckAiAudioNewDescTip()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "ai_aduio_new_desc"

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-eqz p0, :cond_2

    const p0, 0x7f1208dc

    goto :goto_0

    :cond_2
    const p0, 0x7f1208db

    .line 8
    :goto_0
    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiAudioSingle()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f12088c

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-eq p0, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 5
    :goto_1
    invoke-interface {v1, v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioSingleBGHint(II)V

    .line 6
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reCheckAiAudioSingle:alertAiAudioSingleBGHint"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reCheckAiAudioSingleDescTip()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "ai_aduio_single_desc"

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-eqz p0, :cond_2

    const p0, 0x7f1208df

    goto :goto_0

    :cond_2
    const p0, 0x7f1208de

    .line 8
    :goto_0
    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiEnhancedVideo()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f1207e3

    .line 4
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiEnhancedVideoHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckAiScene()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const v1, 0x7f120717

    const-string v2, "ai"

    .line 4
    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckAmbilight()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOoO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->updateTips()V

    :cond_3
    return-void
.end method

.method public reCheckCenterMark()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckColorEnhance()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const v1, 0x7f1208e4

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertProColourHint(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckCvType()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigCvType()Lcom/android/camera/data/data/config/ComponentConfigCvType;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigCvType;->getSelectedStringId()I

    move-result p0

    const/4 v1, 0x0

    const-string v2, "cvtype"

    .line 6
    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    return-void
.end method

.method public reCheckDocumentMode()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/16 v2, 0xba

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    const/16 v2, 0xdd

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOo00;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public reCheckDualVideoMode()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->hasRemote()Z

    move-result v3

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/StandaloneRecorderProtocol;->impl2()Lcom/android/camera/protocol/protocols/StandaloneRecorderProtocol;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    .line 7
    invoke-interface {v4, v7}, Lcom/android/camera/protocol/protocols/StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v7, 0xcc

    if-ne p0, v7, :cond_3

    const/16 p0, 0xde

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-interface {v0, v5, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v0, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    :goto_1
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getTopTipRes()I

    move-result p0

    invoke-interface {v0, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertDualVideoHint(II)V

    :cond_3
    return-void
.end method

.method public reCheckExposureFeedbackConfig()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reCheckExposureFeedbackConfig: configExposureFeedbackSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFastMotion(Z)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_b

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->isModified()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v5

    .line 12
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;

    move-result-object v6

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v7

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->impl2()Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;

    move-result-object v8

    if-eqz v3, :cond_a

    if-eqz v6, :cond_6

    .line 15
    invoke-interface {v6}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_6
    if-eqz v8, :cond_7

    .line 16
    invoke-interface {v8}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    const/16 v6, 0xa0

    .line 17
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v1

    const-string v8, ""

    if-eqz v1, :cond_8

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_8
    move-object v6, v8

    .line 19
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10001d

    const/16 v2, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v4

    invoke-virtual {p0, v1, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 20
    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f1206fc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v4, p0

    move v1, v3

    move-object v2, v7

    move-object v3, v6

    move v5, p1

    .line 21
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    const/16 v1, 0x8

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move v5, p1

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public reCheckFilm()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xd0

    const/16 v2, 0xcf

    const/16 v3, 0xd4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    return-void

    :cond_2
    if-ne p0, v3, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v3, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setAlertAnim(Z)V

    if-ne p0, v2, :cond_5

    const p0, 0x7f1203f6

    goto :goto_0

    :cond_5
    const p0, 0x7f1203fa

    :goto_0
    const-wide/16 v2, -0x1

    .line 9
    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public reCheckFocusPeakConfig()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reCheckFocusPeakConfig: configFocusPeakSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFrontBokenTip()V
    .locals 0

    return-void
.end method

.method public reCheckGradienter()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckHanGestureDescTip()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "hand_gesture_desc"

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f12043f

    .line 5
    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckHandGesture()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f120440

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertHandGestureHint(I)V

    :cond_1
    return-void
.end method

.method public reCheckLighting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    const/16 v2, 0xab

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->showOrHideLightingView()Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/LightingProtocol;->setLightingViewStatus(Z)V

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->showOrHideLightingView()Z

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_3
    return-void
.end method

.method public reCheckLiveDurationTip()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v1, 0xb7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getCurrentPromptInfo(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v5, 0xbb8

    const-string v1, "live_duration"

    .line 7
    invoke-interface/range {v0 .. v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckLiveShot()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f12024a

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertLiveShotHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckLiveVV()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00oO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v1, 0x4

    .line 7
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const v1, 0xfffa

    if-ne p0, v1, :cond_4

    const/4 p0, 0x0

    const v1, 0x7f120a23

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertTopHint(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public reCheckMacroMode()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-eq v3, v4, :cond_2

    .line 4
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa2

    if-eq v3, v4, :cond_2

    .line 5
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xac

    if-eq v3, v4, :cond_2

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xba

    if-eq v3, v4, :cond_2

    .line 7
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xcd

    if-eq v3, v4, :cond_2

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v3

    invoke-interface {v0, v4, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMacroModeHint(II)V

    .line 13
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public reCheckModuleUltraPixel()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_module_ultra_pixel_tip"

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "ultra_pixel"

    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckMutexConfigs(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget v5, v1, v4

    const/16 v6, 0xcb

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd1

    if-eq v5, v6, :cond_4

    .line 6
    invoke-static {v5}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    .line 7
    invoke-direct {p0, v5, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckLighting()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v5, v3}, Lcom/android/camera/protocol/protocols/LightingProtocol;->setLightingViewStatus(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public reCheckMutexEarly(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_0

    const-string/jumbo p1, "o"

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo p0, "pref_camera_ultra_pixel_portrait_mode_key"

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reCheckParameterDescriptionTip()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isParameterDescriptionEnable()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v3

    const/16 v4, 0xb4

    const/16 v5, 0xa9

    const/16 v6, 0xa2

    const/4 v7, 0x0

    if-eq v2, v6, :cond_1

    const/16 v8, 0xa7

    if-eq v2, v8, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_1

    move v1, v7

    :cond_1
    if-ne v2, v5, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO()Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v7

    :cond_2
    if-ne v2, v6, :cond_4

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v1, v7

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    move v1, v8

    :cond_5
    if-ne v2, v6, :cond_6

    if-eqz v3, :cond_6

    .line 10
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    goto :goto_0

    :cond_6
    move v5, v7

    .line 11
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->isUseParameterDescriptionTip()Z

    move-result v9

    if-nez v9, :cond_7

    if-ne v2, v6, :cond_8

    move v1, v7

    goto :goto_1

    :cond_7
    if-ne v2, v4, :cond_8

    if-eqz v3, :cond_8

    .line 12
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    move v5, v8

    .line 13
    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    xor-int/2addr p0, v8

    and-int/2addr p0, v1

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    xor-int/2addr v1, v8

    and-int/2addr p0, v1

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    const/16 v7, 0x8

    .line 16
    :goto_2
    invoke-interface {v0, v7, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertParameterDescriptionTip(II)V

    :cond_a
    return-void
.end method

.method public reCheckParameterResetTip(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isChangeManuallyParameters()Z

    move-result p0

    const v2, 0x7f120902

    if-eqz p0, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 9
    invoke-interface {v0, p1, p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertParameterResetTip(ZII)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p0, 0x8

    .line 10
    invoke-interface {v0, p1, p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertParameterResetTip(ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public reCheckRaw()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result p0

    const v1, 0x7f1204e2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 7
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckSpeechShutterDescTip()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "speech_shutter_desc"

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const v2, 0x7f12094a

    .line 4
    invoke-interface {p0, v0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckSubtitleMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f1208c3

    .line 5
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckSuperEIS()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f120955

    const-string/jumbo v2, "super_eis"

    .line 5
    invoke-interface {v0, v2, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckSuperEISPro()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentPreValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "pro"

    const-string/jumbo v4, "normal"

    const-string/jumbo v5, "super_eis"

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v2, 0x8

    if-eqz p0, :cond_2

    const p0, 0x7f120956

    .line 9
    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f120958

    .line 11
    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const p0, 0x7f120955

    .line 13
    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f120957

    .line 15
    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckSuperNightVideo4KTip()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperNightVideo4K(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f0a009f

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v1, 0xfffa

    if-ne v0, v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string/jumbo v1, "super_night_video_4k_desc"

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v2, 0x7f120243

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-interface {v0, v1, v5, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public reCheckTilt()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0xe4

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    :cond_1
    return-void
.end method

.method public reCheckTimerBurst()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const v1, 0x7f1209b1

    .line 6
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertTimerBurstHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckUltraWideBokeh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string/jumbo v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v1, "ultra_wide_bokeh"

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const v2, 0x7f1209d0

    .line 5
    invoke-interface {v0, v1, p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    const v2, 0x7f1209cf

    .line 6
    invoke-interface {v0, v1, p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckVideo4KHDR10P()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHDR10POrPro(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isTrueColour4K60FpsOrHigher(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v1, 0xfffa

    if-ne v0, v1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "pref_camcorder_tip_4khdr10p_max_video_duration_shown"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v0, :cond_5

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f120242

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "4khdr10p_desc"

    invoke-interface {v0, v1, v4, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public reCheckVideoBeautify()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const-string/jumbo v2, "video_beautify"

    if-eqz p0, :cond_4

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x1

    if-le p0, v3, :cond_4

    const p0, 0x7f1209e7

    .line 9
    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    const p0, 0x7f1209e6

    .line 10
    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckVideoBeautyPipeline()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_3

    :cond_1
    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v4

    .line 8
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    :cond_2
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_3
    return-void
.end method

.method public reCheckVideoCastPauseState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f1209fa

    .line 2
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertCastVideoHint(II)V

    return-void
.end method

.method public reCheckVideoHDR10Tip()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f120a19

    .line 5
    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120a12

    .line 7
    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f120a10

    .line 9
    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f120a11

    .line 11
    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public reCheckVideoHdr()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "off"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 6
    invoke-interface {v0, p0, p0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertHDR(IZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckVideoLog()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    const v1, 0x7f1207ea

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    :cond_3
    return-void
.end method

.method public reCheckVideoUltraClearTip()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/CameraAction;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoModule;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->getVideoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    .line 9
    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    .line 10
    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x4

    .line 12
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const v4, 0xfffa

    if-ne v3, v4, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    .line 15
    :cond_6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_7

    const v1, 0x7f120a1b

    .line 17
    invoke-interface {v3, v4, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    .line 18
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v5, 0x1

    const-string/jumbo v6, "pref_camcorder_tip_8k_max_video_duration_shown"

    invoke-virtual {v1, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v3, :cond_8

    .line 21
    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 22
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120241

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8k_desc"

    invoke-interface {v3, v0, v4, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public reCheckWidgetIntent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getMiThemeWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;->getWidgetIntentInfo(Landroid/app/Activity;)V

    return-void
.end method

.method public reConfigAiAudio(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object p0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reConfigAiAudio:SupportAiAudioNew"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f120792

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p0

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p0, v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    .line 8
    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioBGHint(II)V

    .line 9
    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudio(II)V

    .line 10
    sget-boolean p2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-eqz p2, :cond_1

    const p2, 0x7f1208dc

    goto :goto_1

    :cond_1
    const p2, 0x7f1208db

    :goto_1
    const-string v2, "ai_aduio_new_desc"

    .line 11
    invoke-interface {v1, v2, p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reConfigAiAudio -> isSupportAiAudioNew"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioMutexToastIfNeed(I)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioMutexToastIfNeed(I)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 18
    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudio(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public reConfigESPDisplay(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eqz v2, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f1203c7

    goto :goto_1

    :cond_3
    const v2, 0x7f1206b9

    :goto_1
    const-string v4, "esp_display"

    .line 6
    invoke-interface {v0, v4, p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTipShow()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertESPFeatureTip(Z)V

    goto :goto_2

    .line 10
    :cond_6
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertESPFeatureTip(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public reConfigSpeechShutter()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;->impl2()Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->shouldEnableSpeechShutter(I)Z

    move-result p0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_3
    return-void
.end method

.method public recheckVideoFps(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0o0;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetMeter(I)V
    .locals 3

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->reverseExpandTopBar(Z)Z

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    new-array p1, v2, [I

    const/4 v0, 0x0

    const/16 v2, 0xd6

    aput v2, p1, v0

    .line 6
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreAllMutexElement(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_c

    .line 4
    aget v3, v3, v2

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_b

    const/16 v4, 0xc2

    if-eq v3, v4, :cond_a

    const/16 v4, 0xc4

    const/4 v5, 0x2

    if-eq v3, v4, :cond_9

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xce

    const/16 v6, 0x32

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd1

    if-eq v3, v4, :cond_5

    const/16 v4, 0xd4

    if-eq v3, v4, :cond_4

    const/16 v4, 0xed

    if-eq v3, v4, :cond_3

    const/16 v4, 0xef

    if-eq v3, v4, :cond_2

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v3, 0x33

    .line 6
    aput v3, v0, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v3, 0xd

    .line 9
    aput v3, v0, v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v3, 0x2c

    .line 11
    aput v3, v0, v2

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    .line 13
    aput v5, v0, v2

    goto :goto_1

    .line 14
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    .line 15
    aput v6, v0, v2

    goto :goto_1

    .line 16
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const-string v3, "j"

    if-eq p1, v3, :cond_7

    const/16 v3, 0x31

    .line 17
    aput v3, v0, v2

    goto :goto_1

    .line 18
    :cond_7
    aput v6, v0, v2

    goto :goto_1

    .line 19
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v3, 0x24

    .line 20
    aput v3, v0, v2

    goto :goto_1

    .line 21
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 22
    aput v5, v0, v2

    goto :goto_1

    .line 23
    :cond_a
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Ljava/lang/String;Z)V

    const/16 v3, 0xb

    .line 24
    aput v3, v0, v2

    goto :goto_1

    .line 25
    :cond_b
    invoke-direct {p0, v5, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    .line 26
    aput v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 27
    :cond_c
    iput-object v5, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOO0;

    invoke-direct {p1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOO0;-><init>([I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreMutexFlash(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO0Oo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBeautyLens(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setBeautyLens(Ljava/lang/String;)V

    const-string v2, "4"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, v3, v3, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const/4 p1, 0x3

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    .line 13
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFilter()Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    move-result-object p0

    .line 15
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 16
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xd
        0x2
        0x30
        0x5c
    .end array-data

    :array_1
    .array-data 4
        0x30
        0x5c
    .end array-data
.end method

.method public setCVLens(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setCvLens(Ljava/lang/String;)V

    const-string v2, "0"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "attr_value"

    .line 6
    invoke-static {v4, p1, v3}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 10
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const-string/jumbo v3, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWideBokeh(I)V

    .line 14
    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFilter()Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    move-result-object p1

    .line 16
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFNumber()Lcom/android/camera/data/data/config/ComponentRunningFNumber;

    move-result-object p1

    .line 18
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 21
    :cond_5
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->refreshExtraMenu()V

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    const/16 v0, 0xab

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4x3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_0

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :goto_0
    return-void
.end method

.method public setFilter(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->persistFilter(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eq v0, p1, :cond_1

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 5
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    if-eq v0, p1, :cond_5

    const/16 v0, 0xa9

    if-ne v1, v0, :cond_5

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 12
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 13
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 15
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    .line 16
    :cond_5
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFilter: filterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 18
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFilterChanged: category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v2}, Lcom/android/camera/fragment/beauty/ShineHelper;->onFilterChanged(Z)V

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;->impl2()Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;->onKaleidoscopeChanged(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onFilterChanged(Z)V

    return-void
.end method

.method public setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLighting: newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const-string v4, "0"

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_1
    const/4 p2, 0x1

    new-array v3, p2, [I

    const/16 v5, 0xcb

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 7
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 8
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->lightingStart()V

    .line 10
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/protocols/LightingProtocol;->setLightingViewStatus(Z)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/LightingProtocol;->lightingCancel()V

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 v0, 0x21

    new-array v2, v6, [I

    .line 13
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    new-array v0, v6, [I

    .line 14
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    .line 16
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertLightingTip(I)V

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOoO0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p4, :cond_6

    const/16 p0, 0xab

    .line 18
    invoke-static {p0, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackLightingChanged(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setMasterFilter(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x107

    aput v6, v5, v4

    .line 9
    invoke-interface {v3, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-ne v0, p1, :cond_7

    :cond_4
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_7

    if-eq p1, v3, :cond_6

    if-eqz p1, :cond_6

    if-eq v0, v3, :cond_5

    if-nez v0, :cond_6

    .line 11
    :cond_5
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isOnlySupportMasterFilter720P(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-nez p1, :cond_8

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooO0O()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    :cond_7
    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 15
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    .line 16
    :cond_8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 17
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMasterFilter: filterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFilterChanged: category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/16 p1, 0xc4

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onShineChanged(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setSkinColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooOOOO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setVideoSky(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->setMagicVideoSkyValue(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x57

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public setWatermarkEnable(Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showDualController(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideTipImage(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x6

    .line 10
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_3
    return-void
.end method

.method public showMimojiPanel(I)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMimojiPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/protocols/BaseDelegate;)Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/protocols/BaseDelegate;)Z

    move-result p0

    xor-int/2addr p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    if-nez v0, :cond_2

    return p0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiPanelState(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    new-array v4, v1, [I

    const/16 v5, 0xc1

    aput v5, v4, p0

    .line 8
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    const/4 v3, 0x3

    if-eqz p1, :cond_6

    const-string v4, "key_mimoji_show_avatar_list"

    if-eq p1, v1, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "key_mimoji_show_timbre_list"

    goto :goto_1

    :cond_4
    const-string v4, "key_mimoji_show_background_list"

    :cond_5
    :goto_1
    const/4 v5, 0x0

    .line 9
    invoke-static {v5, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v4, 0xe

    new-array v5, p0, [I

    .line 10
    invoke-interface {v0, v4, v5}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    if-eqz p1, :cond_7

    new-array p1, v1, [I

    const/16 v2, 0xea

    aput v2, p1, p0

    .line 11
    invoke-interface {v0, v3, p1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_8

    new-array p0, p0, [I

    .line 13
    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_8
    :goto_2
    return v1
.end method

.method public showOrHideAIWatermark()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    const/4 v1, 0x6

    .line 7
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xe1

    aput v5, v4, v2

    .line 8
    invoke-interface {v1, v3, v4}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->show()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v0, 0x15

    new-array v2, v2, [I

    .line 10
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_4
    :goto_0
    const/16 v0, 0xbc

    if-eq p0, v0, :cond_5

    const-string p0, "ai_watermark_list_show"

    .line 11
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p0, "attr_super_moon_click_effect"

    .line 12
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonClick(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showOrHideLighting(Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->beautyMutexHandle()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/LightingProtocol;->showOrHideLightingView()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 5
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideLighting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v4

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v5

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/Module;

    invoke-interface {v6}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    const-string v7, "0"

    const/16 v8, 0xab

    if-eqz v1, :cond_6

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v9

    if-nez v9, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFilter()Lcom/android/camera/data/data/runing/ComponentRunningFilter;

    move-result-object v6

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 13
    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setFilter(I)V

    :cond_3
    if-eqz v4, :cond_4

    .line 14
    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/TopAlert;->refreshExtraMenu()V

    :cond_4
    const/4 v4, 0x3

    new-array v2, v2, [I

    const/16 v6, 0xe9

    aput v6, v2, v3

    .line 15
    invoke-interface {v0, v4, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    const/4 v2, 0x5

    .line 16
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v4, 0xff7

    if-eq v2, v4, :cond_5

    const/16 v2, 0x21

    new-array v4, v3, [I

    .line 17
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    .line 18
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v3, v7, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v8, v7}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v7, v4

    .line 28
    :goto_1
    invoke-virtual {p0, v2, v0, v7, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    if-eqz p1, :cond_8

    const/4 p0, 0x0

    const-string p1, "lighting_out_button"

    .line 29
    invoke-static {p1, p0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    .line 30
    invoke-interface {v5, v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    :cond_9
    return-void
.end method

.method public showOrHideMasterFilter()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideMasterFilter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 7
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 11
    invoke-interface {v3, v2, v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object v3

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p0

    const/16 v4, 0xa7

    if-eq p0, v4, :cond_4

    const/16 v4, 0xb4

    if-eq p0, v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 15
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->resetManuallyUnselected()V

    .line 16
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v3, 0x3

    new-array v1, v1, [I

    const/16 v4, 0xe2

    aput v4, v1, v2

    .line 17
    invoke-interface {p0, v3, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_6
    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->show()V

    goto :goto_2

    :cond_7
    if-eqz p0, :cond_9

    const/16 v0, 0x25

    new-array v1, v2, [I

    .line 19
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    const/4 p0, 0x2

    const/4 v1, 0x6

    .line 20
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public showOrHideShine()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    .line 6
    :goto_0
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showOrHideShine: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 7
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v7

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v8

    const/16 v9, 0xa2

    if-eq v0, v9, :cond_3

    const/16 v10, 0xcc

    if-eq v0, v10, :cond_2

    move p0, v4

    goto :goto_4

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    const-string/jumbo v11, "video_beautify"

    .line 10
    invoke-direct {p0, v11, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    if-nez v7, :cond_4

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    goto :goto_2

    :cond_4
    move v10, v3

    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 12
    invoke-virtual {v8, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 13
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v11

    invoke-virtual {v11}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v11

    sget-object v12, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/OooO;

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    xor-int/2addr v7, v3

    .line 16
    invoke-virtual {v8, v9, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    .line 17
    invoke-static {v3}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    if-eqz v10, :cond_7

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 v7, 0x0

    .line 19
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    .line 20
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    .line 21
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    .line 22
    invoke-static {v4}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    .line 23
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    .line 24
    invoke-static {v4}, Lcom/android/camera/fragment/beauty/ShineHelper;->onFilterChanged(Z)V

    :cond_7
    if-eqz v10, :cond_9

    if-ne v0, v9, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    goto :goto_3

    .line 26
    :cond_8
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    :goto_3
    move p0, v3

    :goto_4
    const/4 v7, 0x2

    if-eqz v5, :cond_12

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 29
    invoke-interface {v5, v4}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 30
    invoke-interface {v5, v4}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    .line 31
    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 32
    invoke-interface {v5}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    const/16 v5, 0xab

    if-eq v0, v5, :cond_b

    if-nez p0, :cond_b

    if-eqz v2, :cond_b

    .line 33
    invoke-interface {v2, v4, v4, v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 34
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_d

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_d

    const/16 p0, 0xbb

    if-eq v0, p0, :cond_c

    goto :goto_5

    .line 35
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 36
    invoke-interface {p0, v4}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_5

    .line 37
    :cond_d
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OOo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/ManualPictureStyleProtocol;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 39
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x4

    const/4 v5, 0x6

    .line 40
    invoke-interface {v0, v2, v5}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_e
    if-eqz p0, :cond_f

    .line 41
    invoke-interface {p0, v4}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 42
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 v0, 0x3

    new-array v2, v3, [I

    const/16 v3, 0xe0

    aput v3, v2, v4

    .line 43
    invoke-interface {p0, v0, v2}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_10
    if-eqz v1, :cond_11

    .line 44
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->show()V

    goto :goto_6

    :cond_11
    if-eqz p0, :cond_13

    new-array v0, v4, [I

    .line 45
    invoke-interface {p0, v7, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_6

    :cond_12
    if-eqz v1, :cond_13

    .line 46
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    :cond_13
    :goto_6
    return-void
.end method

.method public showOrHideVideoSky(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooO0o()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/VideoSkyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/VideoSkyProtocol;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 5
    :goto_0
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showOrHideMagicVideoSky fromTopConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " targetShowPanel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-eqz p1, :cond_6

    const/16 p1, 0xb7

    const/16 v7, 0xd7

    if-ne v0, v7, :cond_3

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_3
    if-ne v0, p1, :cond_5

    .line 8
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo p1, "videosky"

    .line 10
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    .line 11
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->reset(I)V

    :cond_6
    if-eqz v4, :cond_b

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 13
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    .line 14
    invoke-interface {p0, v3}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    .line 15
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 16
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 18
    invoke-interface {p0, v3, v3, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 19
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 p1, 0x3

    new-array v0, v2, [I

    const/16 v2, 0xe7

    aput v2, v0, v3

    .line 20
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    :cond_9
    if-eqz v1, :cond_a

    .line 21
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->show()V

    goto :goto_3

    :cond_a
    if-eqz p0, :cond_c

    const/16 p1, 0x29

    new-array v0, v3, [I

    .line 22
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    .line 23
    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->dismiss(II)Z

    :cond_c
    :goto_3
    return-void
.end method

.method public showSetting()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "config showSetting"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xd8

    aput v3, v1, v2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showWatermarkSample(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->findBestWatermarkItem(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->setWatermarkVisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs switchOffElementsSilent([I)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v2, :cond_1

    const-string v2, "j"

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/LightingProtocol;->showOrHideLightingView()Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateASDForWatermark()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public updateFlatSelfieBokehState()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result p0

    const-string/jumbo v0, "pref_ultra_wide_bokeh_enabled"

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/display/device/FlatSelfieManager;->setBokehStateIdle(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/display/device/FlatSelfieManager;->setBokehStateReverse(Z)V

    :cond_1
    :goto_0
    return-void
.end method
