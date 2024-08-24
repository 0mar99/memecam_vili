.class public Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;
.super Ljava/lang/Object;
.source "TopConfigUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TopConfigUtils"

.field public static getAiAudioClickListener:Landroid/view/View$OnClickListener;

.field public static getAiAudioUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getCvTypeClickListener:Landroid/view/View$OnClickListener;

.field public static getCvTypeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getEspDisplayClickListener:Landroid/view/View$OnClickListener;

.field public static getEspDisplayUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getLiveDurationClickListener:Landroid/view/View$OnClickListener;

.field public static getLiveDurationUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getMasterFilterListener:Landroid/view/View$OnClickListener;

.field public static getMasterFilterUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static motionDetectionClickListener:Landroid/view/View$OnClickListener;

.field public static motionDetectionUpdateResource:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$1;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$1;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getLiveDurationUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$2;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$2;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getLiveDurationClickListener:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$3;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$3;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiAudioUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$4;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$4;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiAudioClickListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$5;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$5;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$6;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$6;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$7;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$7;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 8
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$8;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$8;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayClickListener:Landroid/view/View$OnClickListener;

    .line 9
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$9;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$9;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->motionDetectionUpdateResource:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 10
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$10;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$10;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->motionDetectionClickListener:Landroid/view/View$OnClickListener;

    .line 11
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$11;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$11;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 12
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$12;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils$12;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryRes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryRes(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryShadowRes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopFilterEntry()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setColoring(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineContentDescriptString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO(Landroid/view/View;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackShineClick()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->onTopAnimClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    const v1, 0x7f0803a0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120021

    goto :goto_0

    :cond_0
    const p0, 0x7f120020

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc9

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v0, 0x7f08024c

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f1204e8

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xd9

    .line 7
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0OO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    const v1, 0x7f080272

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getCinematicAnim()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f12008b

    goto :goto_0

    :cond_0
    const p0, 0x7f12008a

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Landroid/view/View;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xfb

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->onTopAnimClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic OooO0Oo(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedShadowDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getAnimId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 8
    invoke-static {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->isFlashActivated(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic OooO0Oo(Landroid/view/View;)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->onFlashClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedShadowDrawableId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic OooO0o(Landroid/view/View;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackMeterClick()V

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0xd6

    .line 12
    invoke-interface {v1, v0, p0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->isHdrActivated(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getAnimId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedShadowDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic OooO0o0(Landroid/view/View;)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->onHdrClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v0, 0x7f0803d4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f12008d

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0oO(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "menu_more"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->showExtraMenu()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oo(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f08042a

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1200a2

    .line 5
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12008f

    goto :goto_0

    :cond_0
    const v1, 0x7f120041

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0oo(Landroid/view/View;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xa3

    .line 10
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOO0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v1, 0x7f08029c

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    const/16 v1, 0xcc

    if-ne p0, v1, :cond_0

    const p0, 0x7f120394

    goto :goto_0

    :cond_0
    const p0, 0x7f120048

    .line 4
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOO0(Landroid/view/View;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xa4

    .line 7
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static getAiAudioItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiAudioUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiAudioClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOooo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOooo;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getBackItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOoo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOoo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getCinematicAspectRatioItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xfb

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOOo;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getCvTypeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xbe

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getCvTypeClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getEspDisplayContentDescriptString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1203c7

    goto :goto_0

    :cond_0
    const v1, 0x7f1206b9

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12008f

    goto :goto_1

    :cond_1
    const v1, 0x7f120041

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb5

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getFlashItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo000;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo000;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoo0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getInvalidItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveDurationItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getLiveDurationUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getLiveDurationClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMasterFilterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0x107

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMeterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo00o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOooO;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc5

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo00;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMotionDetectionItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xbd

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->motionDetectionUpdateResource:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->motionDetectionClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyWatermarkItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa3

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo00O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/Oooo00O;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getShineContentDescriptString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryDesRes()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoOO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOoO0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getUseGuideItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOOo0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO0OO/OooOo0O;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static isFlashActivated(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->impl2()Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "101"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "104"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "105"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "103"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->getAutoFlashTargetState()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHdrActivated(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->impl2()Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopConfigProtocol;->getAutoHDRTargetState()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
