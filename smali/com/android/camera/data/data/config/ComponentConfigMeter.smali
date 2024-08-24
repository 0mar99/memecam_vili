.class public Lcom/android/camera/data/data/config/ComponentConfigMeter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigMeter.java"


# static fields
.field public static final METERING_MODE_CENTER_WEIGHTED:Ljava/lang/String; = "1"

.field public static final METERING_MODE_FRAME_AVERAGE:Ljava/lang/String; = "0"

.field public static final METERING_MODE_SPOT_METERING:Ljava/lang/String; = "2"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object p0

    const/4 v2, 0x1

    aget p0, p0, v2

    const v2, 0x7f12067e

    const-string v3, "1"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCenterWeighted()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803c6
        0x7f0803c6
    .end array-data
.end method

.method private getFrameAverage()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803c8
        0x7f0803c8
    .end array-data
.end method

.method private getSpotMetering()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803ca
        0x7f0803ca
    .end array-data
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120681

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

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "pref_camera_autoexposure_key"

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_pro_video_autoexposure_key"

    return-object p0

    :cond_1
    const-string/jumbo p0, "pref_fastmotion_pro_autoexposure_key"

    return-object p0
.end method

.method public getTrackValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "average_photometry"

    return-object p0

    :cond_0
    const-string p1, "1"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "center_weight"

    return-object p0

    :cond_1
    const-string p1, "2"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "center_photometry"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unspecified"

    return-object p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_0
    const-string v0, "1"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_1
    const-string v0, "2"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object p0

    aget p0, p0, v1

    return p0
.end method

.method public getValueSelectedShadowDrawableId(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f0803c8

    return p0

    :cond_0
    const-string p1, "1"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f0803c6

    return p0

    :cond_1
    const-string p1, "2"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0803ca

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f12067f

    return p0

    :cond_0
    const-string p1, "1"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f12067e

    return p0

    :cond_1
    const-string p1, "2"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f120680

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object v1

    const/4 v8, 0x0

    aget v2, v1, v8

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()[I

    move-result-object v1

    const/4 v9, 0x1

    aget v4, v1, v9

    const v3, 0x7f0803c6

    const v5, 0x7f12067e

    const-string v6, "1"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()[I

    move-result-object v2

    aget v11, v2, v8

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()[I

    move-result-object v2

    aget v13, v2, v9

    const v12, 0x7f0803c8

    const v14, 0x7f12067f

    const-string v15, "0"

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()[I

    move-result-object v2

    aget v3, v2, v8

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()[I

    move-result-object v2

    aget v5, v2, v9

    const v4, 0x7f0803ca

    const v6, 0x7f120680

    const-string v7, "2"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
