.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_FRONT_MAKEUPS:Ljava/lang/String; = "12"

.field public static final SHINE_FRONT_MAKEUPS_2:Ljava/lang/String; = "13"

.field public static final SHINE_FRONT_SUPER_NIGHT_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_KALEIDOSCOPE:Ljava/lang/String; = "10"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "9"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_PORTRAIT:Ljava/lang/String; = "14"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_MODEL_TRUESIGHT:Ljava/lang/String; = "5"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "8"

.field public static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field public isFrontCamera:Z

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mCurrentMode:I

.field public mCurrentStatus:Z

.field public mCurrentType:Ljava/lang/String;

.field public mDefaultType:Ljava/lang/String;

.field public mIsClosed:Z

.field public mIsCompare:Z

.field public mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mShineEntry:I

.field public mSupportBeautyBody:Z

.field public mSupportBeautyLevel:Z

.field public mSupportBeautyMakeUp:Z

.field public mSupportBeautyMiLive:Z

.field public mSupportBeautyMode:Z

.field public mSupportBeautyModel:Z

.field public mSupportFrontMakeups:Z

.field public mSupportFrontMakeups2:Z

.field public mSupportFrontNightBeauty:Z

.field public mSupportHalVideoFilter:Z

.field public mSupportPortraitBeautyItem:Z

.field public mSupportShineCompare:Z

.field public mSupportSmoothLevel:Z

.field public mSupportVideoBokehColorRetention:Z

.field public mTargetShow:Z

.field public mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo()Z

    move-result p0

    const-string v0, "1"

    const v1, 0x7f08025b

    const v2, 0x7f08025a

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120201

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1201fe

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1201fe

    goto :goto_0

    :cond_0
    const p1, 0x7f1201f4

    :goto_0
    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const-string v2, "6"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0803cf

    const v1, 0x7f0803d1

    const v2, 0x7f1206a2

    const-string v3, "7"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f1201fe

    const-string v3, "11"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08047e

    const v1, 0x7f120466

    const-string v2, "10"

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f120203

    const-string v3, "13"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f120203

    const-string v3, "12"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f1201fe

    const-string v3, "9"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo()Z

    move-result p0

    const v0, 0x7f08025b

    const v1, 0x7f08025a

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f120202

    const-string v2, "3"

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1201fe

    goto :goto_0

    :cond_1
    const p1, 0x7f120200

    .line 5
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "11"

    goto :goto_1

    :cond_2
    const-string v2, "4"

    .line 6
    :goto_1
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateProtraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f1201fe

    const-string v3, "14"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f1201fe

    const-string v3, "2"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f1201fe

    const-string v3, "5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08025a

    const v1, 0x7f08025b

    const v2, 0x7f120431

    const-string v3, "8"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v7, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v9, -0x1

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x61f

    if-eq v10, v11, :cond_7

    const/16 v11, 0x620

    if-eq v10, v11, :cond_6

    const/16 v11, 0x623

    if-eq v10, v11, :cond_5

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v10, "9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x5

    goto/16 :goto_1

    :pswitch_1
    const-string v10, "8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0xa

    goto/16 :goto_1

    :pswitch_2
    const-string v10, "7"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0x9

    goto :goto_1

    :pswitch_3
    const-string v10, "6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x6

    goto :goto_1

    :pswitch_4
    const-string v10, "5"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x3

    goto :goto_1

    :pswitch_5
    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x2

    goto :goto_1

    :pswitch_6
    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v8

    goto :goto_1

    :pswitch_7
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0x8

    goto :goto_1

    :pswitch_8
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v1

    goto :goto_1

    :cond_5
    const-string v10, "14"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x4

    goto :goto_1

    :cond_6
    const-string v10, "11"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x7

    goto :goto_1

    :cond_7
    const-string v10, "10"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0xb

    :cond_8
    :goto_1
    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_9
    if-nez v6, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v6

    goto/16 :goto_0

    :pswitch_a
    if-nez v5, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v7

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v9

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    move v5, v8

    goto/16 :goto_0

    :pswitch_b
    if-nez v4, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v7, :cond_3

    :goto_2
    move v4, v8

    goto/16 :goto_0

    .line 14
    :cond_9
    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v7, v9, :cond_3

    if-lez v7, :cond_3

    goto :goto_2

    :pswitch_c
    if-nez v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_d
    if-nez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSkinColorOpen()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    move v8, v1

    :cond_b
    :goto_3
    move v3, v8

    goto/16 :goto_0

    :cond_c
    if-nez v0, :cond_d

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    move v1, v8

    .line 18
    :cond_e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto :goto_5

    .line 19
    :cond_f
    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 20
    :goto_5
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getCurrentMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    return p0
.end method

.method public getCurrentStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopConfigEntryDesRes()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f120026

    return p0

    :cond_0
    const p0, 0x7f12005b

    return p0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f080421

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f0803d1

    goto :goto_0

    :cond_1
    const p0, 0x7f0803cf

    :goto_0
    return p0
.end method

.method public getTopConfigEntryShadowRes(I)I
    .locals 1

    const p0, 0x7f080421

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const p0, 0x7f0803cf

    if-eq p1, p0, :cond_3

    const v0, 0x7f0803d1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f080440

    if-ne p1, p0, :cond_2

    return p0

    :cond_2
    const/4 p0, -0x1

    :cond_3
    :goto_0
    return p0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return p0
.end method

.method public isFcNoneBeautyModeTsBeauty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isNoneBeautyModeTsVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShineComparing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return p0
.end method

.method public isTargetShow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return p0
.end method

.method public isTopFilterEntry()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoShineForceOn(I)Z
    .locals 2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1
    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInitData()V

    .line 3
    iput-object p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 4
    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    const/16 v2, 0xa7

    const/4 v3, 0x3

    if-eq p1, v2, :cond_39

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_36

    const/16 v2, 0xab

    const/4 v4, 0x4

    if-eq p1, v2, :cond_2e

    const/16 v2, 0xad

    if-eq p1, v2, :cond_2d

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_2b

    const/16 v2, 0xaf

    if-eq p1, v2, :cond_2a

    const/16 v2, 0xb0

    if-eq p1, v2, :cond_26

    const/16 p2, 0xb7

    const-string v2, "7"

    if-eq p1, p2, :cond_1c

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_1b

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_13

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_c

    .line 20
    :pswitch_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 22
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_3

    .line 23
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 24
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 25
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 26
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 29
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 31
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 33
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_3
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 36
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 37
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 39
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_6
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 42
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0o()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 44
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 45
    :cond_7
    :pswitch_1
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-nez p4, :cond_8

    sget-boolean p4, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo000:Z

    if-nez p4, :cond_8

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 47
    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 48
    :cond_8
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 49
    :goto_3
    iget-boolean p4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p4, :cond_a

    .line 50
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 51
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 52
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOO0()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 53
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 54
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 55
    :cond_9
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 56
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOO()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 57
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 58
    :cond_a
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 59
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0OO()Z

    move-result p4

    if-nez p4, :cond_11

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 61
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_c

    if-ne p1, p2, :cond_b

    .line 62
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 63
    :cond_b
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 64
    :cond_c
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_4
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBeautyMakeup(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 66
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 67
    :cond_d
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 68
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    :cond_e
    const/16 p2, 0xa3

    if-ne p1, p2, :cond_f

    .line 70
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo0()Z

    move-result p4

    if-eqz p4, :cond_f

    .line 71
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    :cond_f
    if-ne p1, p2, :cond_10

    .line 72
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOO()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    :cond_10
    if-ne p1, p2, :cond_12

    .line 74
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 75
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    goto :goto_5

    .line 77
    :cond_11
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 78
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_12
    :goto_5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 80
    :cond_13
    :pswitch_2
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 81
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 82
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 83
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 84
    :cond_14
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 86
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_15
    :goto_6
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 88
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 90
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_16

    .line 91
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 92
    :cond_16
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    if-eqz p4, :cond_19

    .line 93
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustFront(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 94
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 95
    :cond_18
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_19
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehColorRetention(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 97
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    .line 98
    :cond_1a
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_3b

    .line 99
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 100
    :cond_1b
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_c

    .line 101
    :cond_1c
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOooO()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 102
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 103
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 104
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 105
    :cond_1d
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 106
    :goto_7
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_20

    .line 107
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 108
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOO0()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 109
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 110
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 111
    :cond_1e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOO0()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 112
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oO0Ooo()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 113
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 114
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 115
    :cond_1f
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 116
    :cond_20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 117
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto :goto_8

    .line 119
    :cond_21
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 120
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0OO()Z

    move-result p1

    if-nez p1, :cond_22

    .line 121
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 123
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 124
    :cond_22
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 125
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 126
    :cond_23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0OO()Z

    move-result p1

    if-nez p1, :cond_24

    .line 127
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 128
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 129
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 130
    :cond_24
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 131
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_25
    :goto_8
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 133
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 134
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f0803cf

    const p4, 0x7f0803d1

    const v1, 0x7f1206a2

    invoke-direct {p2, p3, p4, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0o()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 136
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 137
    :cond_26
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 138
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOoO()Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_9

    .line 139
    :cond_27
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 140
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 141
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 142
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 143
    :cond_28
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 144
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 145
    :cond_29
    :goto_9
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 146
    :cond_2a
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 147
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 148
    :cond_2b
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto/16 :goto_c

    .line 149
    :cond_2c
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 150
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 151
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    goto/16 :goto_c

    .line 153
    :cond_2d
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_3b

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00o0()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 154
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 155
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 157
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 158
    :cond_2e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oOooo0o()Z

    move-result p1

    .line 159
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo()Z

    move-result p4

    .line 160
    iget-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez v2, :cond_2f

    .line 161
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOOo()Z

    move-result v2

    and-int/2addr p1, v2

    .line 162
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oOO()Z

    move-result v2

    and-int/2addr p4, v2

    :cond_2f
    if-nez p1, :cond_31

    if-eqz p4, :cond_30

    goto :goto_a

    .line 163
    :cond_30
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 164
    :cond_31
    :goto_a
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    if-eqz p1, :cond_35

    .line 165
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOO()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_32

    .line 166
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    .line 167
    :cond_32
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_33

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPortraitBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 168
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    .line 171
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateProtraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 172
    :cond_33
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 173
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 174
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 175
    :cond_34
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 176
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_b
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyModeTextureVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 178
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    :cond_35
    if-eqz p4, :cond_3b

    .line 179
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 180
    :cond_36
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_c

    .line 181
    :cond_37
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO()Z

    move-result p1

    if-nez p1, :cond_38

    .line 182
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_c

    .line 183
    :cond_38
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 184
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 185
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    goto :goto_c

    .line 187
    :cond_39
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO00()Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_c

    .line 188
    :cond_3a
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 189
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_3b
    :goto_c
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 191
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 192
    :cond_3c
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInitData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setShineComparation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return-void
.end method

.method public setTargetShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return-void
.end method

.method public setVideoShineForceOn(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return p0
.end method

.method public supportBeautyLevel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return p0
.end method

.method public supportBeautyMakeUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return p0
.end method

.method public supportBeautyMiLive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return p0
.end method

.method public supportBeautyMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    return p0
.end method

.method public supportBeautyModel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return p0
.end method

.method public supportFrontMakeups()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    return p0
.end method

.method public supportFrontMakeups2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    return p0
.end method

.method public supportFrontNightBeauty()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    return p0
.end method

.method public supportPopUpEntry()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public supportPortraitBeautyItem()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    return p0
.end method

.method public supportShineCompare()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    return p0
.end method

.method public supportSmoothLevel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return p0
.end method

.method public supportVideoBokehColorRetention()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    return p0
.end method

.method public supportVideoFilter()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    return p0
.end method
