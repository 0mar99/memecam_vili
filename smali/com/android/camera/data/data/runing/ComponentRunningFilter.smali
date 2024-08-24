.class public Lcom/android/camera/data/data/runing/ComponentRunningFilter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningFilter.java"


# instance fields
.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearClosed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0xb7

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveFilterId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

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

    const-string/jumbo p0, "pref_camera_shader_coloreffect_key"

    return-object p0
.end method

.method public isClosed(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public mapToItems(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    const/16 v1, 0xa2

    if-eq v1, p2, :cond_1

    const/16 v1, 0xb4

    if-eq v1, p2, :cond_1

    const/16 v1, 0xa9

    if-ne v1, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetention(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getTagUniqueFilterId()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v2

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v3

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v4

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getTagUniqueFilterId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public setClosed(ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setClosed: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", close = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentRunningFilter"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveFilterId(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
