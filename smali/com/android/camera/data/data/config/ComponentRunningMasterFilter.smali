.class public Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningMasterFilter.java"


# instance fields
.field public mIsSupportColorRentention:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    .line 1
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1206a2

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

    const-string/jumbo p0, "pref_camera_master_shader_coloreffect_key"

    return-object p0
.end method

.method public initItems(I)V
    .locals 5

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getTagUniqueFilterId()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->mIsSupportColorRentention:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v3

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v4

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getTagUniqueFilterId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public isSupportColorRentention()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->mIsSupportColorRentention:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetention(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->mIsSupportColorRentention:Z

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->initItems(I)V

    return-void
.end method
