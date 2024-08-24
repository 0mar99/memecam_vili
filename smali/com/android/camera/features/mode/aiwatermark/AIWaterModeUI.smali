.class public Lcom/android/camera/features/mode/aiwatermark/AIWaterModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "AIWaterModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/aiwatermark/AIWaterModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModeUI;->showAiWatermarkPanel(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic OooO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private showAiWatermarkPanel(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->showOrHideAIWatermark()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
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
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    .line 9
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTiltExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public getFragmentInfo()Landroid/util/SparseArray;
    .locals 3
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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xff2

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xcd

    return p0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 6
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

    const v2, 0x7f120022

    const v3, 0x7f08023f

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v1, :cond_0

    const/16 v1, 0xcd

    .line 3
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v1, v5}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 5
    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/mode/aiwatermark/AIWaterModeUI;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0O0;

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setSupportedCallback(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object p0

    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v1, v5}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 14
    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 16
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/mode/aiwatermark/AIWaterModeUI;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO00o/OooO00o;

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setSupportedCallback(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 3
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

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
