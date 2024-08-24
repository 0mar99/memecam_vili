.class public Lcom/android/camera/features/mode/video/VideoConfigUtils;
.super Ljava/lang/Object;
.source "VideoConfigUtils.java"


# static fields
.field public static getAiAudioSingleExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field public static getAiEnhancedVideoExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field public static getAutoZoomExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field public static getSettingClickListener:Landroid/view/View$OnClickListener;

.field public static getSettingUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getSuperEisClickListener:Landroid/view/View$OnClickListener;

.field public static getSuperEisProClickListener:Landroid/view/View$OnClickListener;

.field public static getSuperEisProUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getSuperEisUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$1;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 2
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$2;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$2;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisClickListener:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$3;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$3;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisProUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 4
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$4;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$4;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisProClickListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$5;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$5;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 6
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$6;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$6;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingClickListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$7;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$7;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAutoZoomExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 8
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$8;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$8;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiAudioSingleExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 9
    new-instance v0, Lcom/android/camera/features/mode/video/VideoConfigUtils$9;

    invoke-direct {v0}, Lcom/android/camera/features/mode/video/VideoConfigUtils$9;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiEnhancedVideoExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAiAudioSingleExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiAudioSingleExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getAiEnhancedVideoExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xaf

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiEnhancedVideoExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoZoomExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xfd

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAutoZoomExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperEisItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xda

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperEisProItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa5

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisProUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisProClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method
