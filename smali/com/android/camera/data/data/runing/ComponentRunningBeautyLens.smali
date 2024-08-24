.class public Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningBeautyLens.java"


# instance fields
.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mTotalDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080252

    const v2, 0x7f080447

    const v3, 0x7f12020f

    const-string v4, "4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080256

    const v2, 0x7f08024e

    const v3, 0x7f120206

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080255

    const v2, 0x7f08024f

    const v3, 0x7f120208

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080254

    const v2, 0x7f080250

    const v3, 0x7f12020a

    const-string v4, "1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080253

    const v1, 0x7f080251

    const v2, 0x7f12020c

    const-string v3, "3"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "4"

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

    const-string/jumbo p0, "pref_portrait_beauty_lens"

    return-object p0
.end method

.method public isSwitchOn()Z
    .locals 1

    const/16 v0, 0xab

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;II)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xab

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedBeautyLens(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->mTotalDataItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_4
    :goto_0
    return-void
.end method
