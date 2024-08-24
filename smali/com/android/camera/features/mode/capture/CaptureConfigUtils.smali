.class public Lcom/android/camera/features/mode/capture/CaptureConfigUtils;
.super Ljava/lang/Object;
.source "CaptureConfigUtils.java"


# static fields
.field public static getAiDetectClickListener:Landroid/view/View$OnClickListener;

.field public static getAiDetectUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getColorEnhanceExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static getLiveShotClickListener:Landroid/view/View$OnClickListener;

.field public static getLiveShotExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field public static getLiveShotUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getMacroModeClickListener:Landroid/view/View$OnClickListener;

.field public static getMacroModeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public static getUltraPixelPortraitClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static getUltraPixelPortraitUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$1;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 2
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$2;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$2;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectClickListener:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$3;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$3;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 4
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$4;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$4;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotClickListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$5;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$5;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 6
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$6;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$6;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitClickListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$7;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$7;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 8
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$8;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$8;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeClickListener:Landroid/view/View$OnClickListener;

    .line 9
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$9;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$9;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getColorEnhanceExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 10
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$10;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils$10;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAiDetectItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xf2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getColorEnhanceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe3

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getColorEnhanceExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveShotExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xce

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotExtraUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveShotItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xce

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMacroModeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xff

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getUltraPixelPortraitItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd7

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method
