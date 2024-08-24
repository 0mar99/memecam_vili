.class public Lcom/android/camera/features/mode/pixel/PixelModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "PixelModeUI.java"


# instance fields
.field public final getAi108ClickListener:Landroid/view/View$OnClickListener;

.field public final getAi108Updater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;-><init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V

    iput-object p1, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108Updater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    new-instance p1, Lcom/android/camera/features/mode/pixel/PixelModeUI$2;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI$2;-><init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V

    iput-object p1, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/pixel/PixelModeUI;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ContentDescriptString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mode/pixel/PixelModeUI;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object p0

    return-object p0
.end method

.method private getAi108ContentDescriptString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo000()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    const v0, 0x7f1200c9

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c4

    .line 2
    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const v0, 0x7f1200ca

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    goto :goto_0

    :cond_0
    new-array p0, v0, [Ljava/lang/String;

    const v0, 0x7f1209c1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c3

    .line 4
    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const v0, 0x7f1209c2

    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p0, p0, v2

    goto :goto_1

    :cond_1
    aget-object p0, p0, v1

    :goto_1
    return-object p0
.end method

.method private getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xab

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108Updater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getAiUltraPixelPhotographyDrawables()[I
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo000()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x7f08042e
        0x7f08042f
    .end array-data

    :array_1
    .array-data 4
        0x7f08042c
        0x7f08042d
    .end array-data
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
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xaf

    return p0
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

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopFilterEntry()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
