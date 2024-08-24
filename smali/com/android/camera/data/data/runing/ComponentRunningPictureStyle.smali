.class public Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningPictureStyle.java"


# static fields
.field public static final CONTRAST:Ljava/lang/String; = "2"

.field public static final NONE:Ljava/lang/String; = "0"

.field public static final SATURATION:Ljava/lang/String; = "1"

.field public static final SHARPNESS:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private createComponentDataItem(IILjava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getModeDrawableRes(Landroid/content/Context;I)I

    move-result p0

    .line 2
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p1, p0, p0, p2, p3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1204e1

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
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
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_picture_style"

    return-object p0
.end method

.method public initItems()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f080442

    const v2, 0x7f12022d

    const-string v3, "0"

    .line 2
    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->createComponentDataItem(IILjava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080353

    const v2, 0x7f12079f

    const-string v3, "1"

    .line 3
    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->createComponentDataItem(IILjava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080352

    const v2, 0x7f1206a5

    const-string v3, "2"

    .line 4
    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->createComponentDataItem(IILjava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080354

    const v2, 0x7f1207b2

    const-string v3, "3"

    .line 5
    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->createComponentDataItem(IILjava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 7
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public isActivated()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallySaturation()Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallySaturation;->isChanged()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyContrast()Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->isChanged()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallySharpness()Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;->isChanged()Z

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
