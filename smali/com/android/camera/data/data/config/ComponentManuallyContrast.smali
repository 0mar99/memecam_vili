.class public Lcom/android/camera/data/data/config/ComponentManuallyContrast;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyContrast.java"


# instance fields
.field public mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method public static synthetic OooO00o([Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    aget-object p0, p0, p2

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, -0x1

    invoke-direct {v0, p2, p2, p0, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0o0;

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v3, "0"

    const-string v4, "2"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    .line 4
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string v3, "-3"

    const-string v4, "-2"

    const-string v5, "-1"

    const-string v6, "0"

    const-string v7, "1"

    const-string v8, "2"

    const-string v9, "3"

    .line 5
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v2, v3, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;-><init>([Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getContentDescriptionString()I
    .locals 0

    const p0, 0x7f1206a5

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "3"

    goto :goto_0

    :cond_0
    const-string p0, "5"

    :goto_0
    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1206a5

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

    const-string/jumbo p0, "pref_qc_camera_contrast_key"

    return-object p0
.end method

.method public isChanged()Z
    .locals 2

    const/16 v0, 0xa0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-nez p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0

    :cond_1
    const/16 p2, 0xa7

    if-ne p1, p2, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
