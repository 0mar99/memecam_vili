.class public Lcom/android/camera/features/mode/capture/CaptureModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "CaptureModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/capture/CaptureModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->showMale(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/features/mode/capture/CaptureModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->showFocusArea(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/features/mode/capture/CaptureModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->showFemale(Landroid/view/View;)V

    return-void
.end method

.method private onBeautyModeSwitch(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->onClick(Landroid/view/View;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0, p3, p4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigValueChanged(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showFemale(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/16 v0, 0xbc

    const/4 v1, 0x0

    const-string v2, "female"

    .line 2
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->onBeautyModeSwitch(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0000()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "classic"

    .line 4
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMaleTextureModeSwitch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "attr_beauty_mode_female"

    .line 5
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyModeSwitch(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showFocusArea(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0096

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getTopAlertSlideSwitchButtonIndicatorColor(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndicatorColor(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getPaintColor()I

    move-result v2

    .line 7
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setBackgroundColor(I)V

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTopAlertSlideSwitchButtonNormalColor(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)V

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTopAlertSlideSwitchButtonSelectColor(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)V

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setPaintAlpha(Landroid/graphics/Paint;)V

    .line 11
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setPaintStyle(Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xbc

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V

    const v0, 0x7f0a01b3

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0OO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0OO;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b4

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMale(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/16 v0, 0xbc

    const/4 v1, 0x1

    const-string v2, "male"

    .line 2
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->onBeautyModeSwitch(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0000()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "texture"

    .line 4
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMaleTextureModeSwitch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "attr_beauty_mode_male"

    .line 5
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyModeSwitch(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OOO()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 21
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 25
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getMacroModeExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 29
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result p0

    const/16 v3, 0xce

    invoke-virtual {v1, p0, v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(II)Z

    move-result p0

    if-nez p0, :cond_7

    .line 30
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 31
    :cond_7
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v4, :cond_9

    .line 32
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTiltExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v4, :cond_a

    .line 33
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 35
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getColorEnhanceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0OO()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 37
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerBurstExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getFragmentInfo()Landroid/util/SparseArray;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xff3

    aput v3, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xa3

    return p0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const/16 v2, 0xa3

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;-><init>(I)V

    const v2, 0x7f0d0030

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0O0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object p0

    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 3
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 8
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigCvType()Lcom/android/camera/data/data/config/ComponentConfigCvType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo00()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO00o()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result p0

    const/16 v5, 0xce

    invoke-virtual {v3, p0, v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 20
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->checkLensAvailability()Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez v0, :cond_6

    .line 22
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedSuperPortrait(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 24
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 26
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_8
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
