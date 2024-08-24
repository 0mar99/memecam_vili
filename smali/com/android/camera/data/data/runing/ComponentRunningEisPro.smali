.class public Lcom/android/camera/data/data/runing/ComponentRunningEisPro;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningEisPro.java"


# static fields
.field public static final EIS_VALUE_NORMAL:Ljava/lang/String; = "normal"

.field public static final EIS_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final EIS_VALUE_PRO:Ljava/lang/String; = "pro"


# instance fields
.field public mPreValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string/jumbo p1, "off"

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result v1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffShadowRes()I

    move-result v2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result v3

    const v4, 0x7f1206b6

    const-string/jumbo v5, "off"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 7
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalShadowRes()I

    move-result v2

    .line 10
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result v3

    const v4, 0x7f1206b5

    const-string/jumbo v5, "normal"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 11
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result v1

    .line 13
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProShadowRes()I

    move-result v2

    .line 14
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result v3

    const v4, 0x7f1206b7

    const-string/jumbo v5, "pro"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 15
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getConfigEisNormalRes()I
    .locals 0

    const p0, 0x7f0802ce

    return p0
.end method

.method private getConfigEisNormalShadowRes()I
    .locals 0

    const p0, 0x7f0802ce

    return p0
.end method

.method private getConfigEisOffRes()I
    .locals 0

    const p0, 0x7f0802cd

    return p0
.end method

.method private getConfigEisOffShadowRes()I
    .locals 0

    const p0, 0x7f0802cd

    return p0
.end method

.method private getConfigEisProRes()I
    .locals 0

    const p0, 0x7f0802cf

    return p0
.end method

.method private getConfigEisProShadowRes()I
    .locals 0

    const p0, 0x7f0802cf

    return p0
.end method


# virtual methods
.method public getComponentPreValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    return-object p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->isEmpty()Z

    move-result p0

    const-string/jumbo p1, "off"

    if-eqz p0, :cond_0

    :cond_0
    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1206b8

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
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pref_eis_pro"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo v0, "normal"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result p0

    return p0

    :cond_1
    const-string/jumbo v0, "pro"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedShadowDrawableIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffShadowRes()I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo v0, "normal"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalShadowRes()I

    move-result p0

    return p0

    :cond_1
    const-string/jumbo v0, "pro"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProShadowRes()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "off"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f1200bb

    return p0

    :cond_0
    const-string/jumbo p1, "normal"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f1200bc

    return p0

    :cond_1
    const-string/jumbo p1, "pro"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f1200bd

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setComponentPreValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperEisPro(ILjava/lang/String;)V

    return-void
.end method
