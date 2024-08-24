.class public Lcom/android/camera/features/mode/portrait/PortraitModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "PortraitModeUI.java"


# static fields
.field public static getBokehLensUpdater:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# instance fields
.field public final getUltraWideBokehClickListener:Landroid/view/View$OnClickListener;

.field public final getUltraWideBokehUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$2;

    invoke-direct {v0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$2;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getBokehLensUpdater:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/camera/features/mode/portrait/PortraitModeUI$3;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$3;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    iput-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    new-instance p1, Lcom/android/camera/features/mode/portrait/PortraitModeUI$4;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$4;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    iput-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showLighting(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokehLens(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokeh(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokeh(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->scrollFnumberSlide(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    return-object v0
.end method

.method private getUltraWideBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xcf

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private scrollFnumberSlide(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/FNumberController;->impl2()Lcom/android/camera/protocol/protocols/FNumberController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/FNumberController;->scrollFnumberSlide(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private showBokeh(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "bokeh_adjust_entry"

    const-string v0, "click"

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/FNumberController;->impl2()Lcom/android/camera/protocol/protocols/FNumberController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FNumberController;->showBokehPanel()V

    :cond_0
    return-void
.end method

.method private showBokehLens(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "beauty_lens_entry"

    const-string v0, "click"

    invoke-static {p1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/FNumberController;->impl2()Lcom/android/camera/protocol/protocols/FNumberController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FNumberController;->showBeautyLensPanel()V

    :cond_0
    return-void
.end method

.method private showLighting(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0xcb

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OOO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getFragmentInfo()Landroid/util/SparseArray;
    .locals 5
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
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOoO()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    new-array v3, v2, [I

    const/16 v4, 0xffb

    aput v4, v3, v1

    .line 3
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0()Z

    move-result v0

    const/16 v3, 0x15

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0O0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-array v0, v2, [I

    const/16 v4, 0xff8

    aput v4, v0, v1

    .line 5
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportCvLensDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->isCvVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v2, [I

    const/16 v2, 0xfff

    aput v2, v0, v1

    .line 7
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xab

    return p0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 13
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

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedCvLens()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->isCvVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v7

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v8

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getIsWidgetLauncher()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedCvLens()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v5

    .line 8
    :goto_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    .line 9
    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v7, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 11
    invoke-virtual {p0, v12, v2}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_5

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->isCvVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    .line 13
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 14
    invoke-virtual {v1, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getNormalPanelEntranceItemRes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 16
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getNormalPanelEntranceItemDesc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 17
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0Oo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0Oo;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 19
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    invoke-direct {v1, v12}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;-><init>(I)V

    .line 22
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getCustomView(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getCvLensUpdaterListener(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 24
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getCvGuideCallBack(Landroid/content/Context;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setShowGuideListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0Oo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0Oo;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    .line 26
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    .line 27
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 29
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v7, :cond_9

    .line 30
    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_9

    .line 31
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_8

    .line 32
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0O0()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33
    :cond_8
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v1, v12}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 34
    invoke-virtual {v1, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v4, 0x7f08049c

    .line 35
    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 36
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v4, 0x7f12007b

    .line 37
    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO00o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO00o;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 42
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    if-nez v8, :cond_b

    if-nez v9, :cond_b

    .line 44
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 45
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    invoke-direct {v1, v6}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;-><init>(I)V

    const v2, 0x7f0d0033

    .line 46
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getBokehLensUpdater:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0O0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0O0;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object p0

    .line 51
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 52
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOoO()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 54
    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f080447

    .line 55
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 56
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 57
    invoke-direct {p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGestureListener(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f120098

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooOO0O/OooO0OO;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object p0

    .line 61
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooO00()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigCvType()Lcom/android/camera/data/data/config/ComponentConfigCvType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo00()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public showCvLens(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->showCvLens()V

    return-void
.end method
