.class public Lcom/android/camera/data/data/config/ComponentConfigRatio;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    }
.end annotation


# static fields
.field public static final FULL_RATIOS:[Ljava/lang/String;

.field public static final RATIO_16X9:Ljava/lang/String; = "16x9"

.field public static final RATIO_1X1:Ljava/lang/String; = "1x1"

.field public static final RATIO_4X3:Ljava/lang/String; = "4x3"

.field public static final RATIO_FULL_16X10:Ljava/lang/String; = "16x10"

.field public static final RATIO_FULL_18X9:Ljava/lang/String; = "18x9"

.field public static final RATIO_FULL_18_7_5X9:Ljava/lang/String; = "18.75x9"

.field public static final RATIO_FULL_195X9:Ljava/lang/String; = "19.5x9"

.field public static final RATIO_FULL_19X9:Ljava/lang/String; = "19x9"

.field public static final RATIO_FULL_20X9:Ljava/lang/String; = "20x9"

.field public static final RATIO_FULL_20_5X9:Ljava/lang/String; = "20.5x9"

.field public static final RATIO_FULL_21X9:Ljava/lang/String; = "21x9"

.field public static final RATIO_FULL_9X8:Ljava/lang/String; = "9x8"


# instance fields
.field public mForceValue:Ljava/lang/String;

.field public final mSupportDefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "9x8"

    const-string v1, "21x9"

    const-string v2, "20.5x9"

    const-string v3, "18x9"

    const-string v4, "19.5x9"

    const-string v5, "19x9"

    const-string v6, "20x9"

    const-string v7, "16x10"

    const-string v8, "18.75x9"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->FULL_RATIOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    return-void
.end method

.method private checkFullSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0xe4b9

    const-string v1, "21x9"

    const-string v2, "9x8"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v0, :cond_2

    const v0, 0x177d7f

    if-eq p0, v0, :cond_1

    const v0, 0x178140

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_1
    const-string p0, "20x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    return-object p1

    .line 2
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    :cond_5
    const p0, 0x40155555

    .line 3
    invoke-static {p0}, Lcom/android/camera/display/Display;->supportFullRatio(F)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v1

    .line 4
    :cond_6
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const v0, 0x400e38e4

    cmpg-float p0, p0, v0

    if-gez p0, :cond_7

    const-string p0, "4x3"

    return-object p0

    :cond_7
    return-object p1
.end method

.method private getRatio(Ljava/lang/String;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "20.5x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "19.5x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "16x10"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_3
    const-string p0, "21x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string p0, "20x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string p0, "19x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    const-string p0, "18x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_7
    const-string p0, "16x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_8
    const-string p0, "9x8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_9
    const-string p0, "4x3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_a
    const-string p0, "1x1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_b
    const-string p0, "18.75x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid ratio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x3fe38e38

    goto :goto_2

    :pswitch_1
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :pswitch_2
    const p0, 0x3faaaaaa

    goto :goto_2

    :pswitch_3
    const p0, 0x40055555

    goto :goto_2

    :pswitch_4
    const p0, 0x3fcccccd    # 1.6f

    goto :goto_2

    :pswitch_5
    const p0, 0x400e38e4

    goto :goto_2

    :pswitch_6
    const p0, 0x40071c72

    goto :goto_2

    :pswitch_7
    const p0, 0x400aaaab

    goto :goto_2

    :pswitch_8
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_2

    :pswitch_9
    const p0, 0x4011c71c

    goto :goto_2

    :pswitch_a
    const p0, 0x40155555

    goto :goto_2

    :pswitch_b
    const p0, 0x3f904cf6

    :goto_2
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7dbd367a -> :sswitch_b
        0xc6aa -> :sswitch_a
        0xd1ef -> :sswitch_9
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
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method


# virtual methods
.method public cleanDefaultValues()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "16x9"

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getItems()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120785

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_camera_picturesize_key"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSensorRatio(Ljava/util/Map;IILcom/android/camera2/CameraCapabilities;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/android/camera/CameraSize;",
            ">;II",
            "Lcom/android/camera2/CameraCapabilities;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "16x9"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public isSquareModule()Z
    .locals 3

    const/16 v0, 0xa3

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-super {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "1x1"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->cleanDefaultValues()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->isInMultiWindowMode()Z

    move-result v5

    .line 4
    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigRatio;->FULL_RATIOS:[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    move v9, v8

    :goto_1
    const/4 v10, 0x0

    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 5
    invoke-direct {v0, v9}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getRatio(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Lcom/android/camera/display/Display;->supportFullRatio(F)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v17, v9

    move v9, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_1

    :cond_2
    move-object/from16 v17, v10

    :goto_2
    if-nez v5, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    and-int v2, v9, v3

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v4, 0xa3

    const-string v5, "4x3"

    if-eq v1, v4, :cond_e

    const/16 v6, 0xab

    if-eq v1, v6, :cond_b

    const/16 v6, 0xad

    if-eq v1, v6, :cond_e

    const/16 v6, 0xb6

    if-eq v1, v6, :cond_a

    const/16 v6, 0xcd

    if-eq v1, v6, :cond_a

    const/16 v6, 0xd5

    if-eq v1, v6, :cond_9

    const/16 v6, 0xd8

    if-eq v1, v6, :cond_9

    const/16 v6, 0xa6

    if-eq v1, v6, :cond_8

    const/16 v6, 0xa7

    if-eq v1, v6, :cond_5

    const/16 v6, 0xaf

    if-eq v1, v6, :cond_9

    const/16 v6, 0xb0

    if-eq v1, v6, :cond_a

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 8
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v4, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v4}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 10
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080284

    const v8, 0x7f080284

    const v9, 0x7f080284

    const v10, 0x7f120781

    const v11, 0x7f120094

    const-string v12, "4x3"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 12
    :cond_4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v19, 0x7f080284

    const v20, 0x7f080284

    const v21, 0x7f080284

    const v22, 0x7f120781

    const v23, 0x7f120094

    const-string v24, "4x3"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080280

    const v6, 0x7f080280

    const v7, 0x7f080280

    const v8, 0x7f120782

    const v9, 0x7f120095

    const-string v10, "16x9"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_14

    .line 14
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0802b1

    const v13, 0x7f0802b1

    const v14, 0x7f0802b1

    const v15, 0x7f120783

    const v16, 0x7f120096

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 15
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 17
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080281

    const v6, 0x7f080281

    const v7, 0x7f080281

    const v8, 0x7f120780

    const v9, 0x7f120093

    const-string v10, "1x1"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v19, 0x7f080284

    const v20, 0x7f080284

    const v21, 0x7f080284

    const v22, 0x7f120781

    const v23, 0x7f120094

    const-string v24, "4x3"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080280

    const v6, 0x7f080280

    const v7, 0x7f080280

    const v8, 0x7f120782

    const v9, 0x7f120095

    const-string v10, "16x9"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_14

    .line 21
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0802b1

    const v13, 0x7f0802b1

    const v14, 0x7f0802b1

    const v15, 0x7f120783

    const v16, 0x7f120096

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    const-string v1, "16x9"

    .line 22
    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080280

    const v6, 0x7f080280

    const v7, 0x7f080280

    const v8, 0x7f120782

    const v9, 0x7f120095

    const-string v10, "16x9"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 24
    :cond_9
    :pswitch_1
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto/16 :goto_5

    .line 25
    :cond_a
    :pswitch_2
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f080284

    const v13, 0x7f080284

    const v14, 0x7f080284

    const v15, 0x7f120781

    const v16, 0x7f120094

    const-string v17, "4x3"

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    if-nez p2, :cond_c

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000ooo0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080284

    const v8, 0x7f080284

    const v9, 0x7f080284

    const v10, 0x7f120781

    const v11, 0x7f120094

    const-string v12, "4x3"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 30
    :cond_c
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v19, 0x7f080284

    const v20, 0x7f080284

    const v21, 0x7f080284

    const v22, 0x7f120781

    const v23, 0x7f120094

    const-string v24, "4x3"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080280

    const v8, 0x7f080280

    const v9, 0x7f080280

    const v10, 0x7f120782

    const v11, 0x7f120095

    const-string v12, "16x9"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_d

    .line 32
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0802b1

    const v13, 0x7f0802b1

    const v14, 0x7f0802b1

    const v15, 0x7f120783

    const v16, 0x7f120096

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 34
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto/16 :goto_6

    .line 35
    :cond_e
    :goto_5
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 36
    :cond_f
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_10
    if-ne v1, v4, :cond_11

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 38
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 39
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 40
    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 41
    iput-object v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_12
    if-ne v1, v4, :cond_13

    .line 42
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f080281

    const v9, 0x7f080281

    const v10, 0x7f080281

    const v11, 0x7f120780

    const v12, 0x7f120093

    const-string v13, "1x1"

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_13
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v19, 0x7f080284

    const v20, 0x7f080284

    const v21, 0x7f080284

    const v22, 0x7f120781

    const v23, 0x7f120094

    const-string v24, "4x3"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080280

    const v6, 0x7f080280

    const v7, 0x7f080280

    const v8, 0x7f120782

    const v9, 0x7f120095

    const-string v10, "16x9"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_14

    .line 45
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0802b1

    const v13, 0x7f0802b1

    const v14, 0x7f0802b1

    const v15, 0x7f120783

    const v16, 0x7f120096

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_14
    :goto_6
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public supportRatioSwitch()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
