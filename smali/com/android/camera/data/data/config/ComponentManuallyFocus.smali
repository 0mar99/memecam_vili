.class public Lcom/android/camera/data/data/config/ComponentManuallyFocus;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyFocus.java"


# instance fields
.field public mIsFixedFocus:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
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
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f12070f

    const/4 v2, -0x1

    const-string v3, "1000"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v3, "manual"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public disableUpdate()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return p0
.end method

.method public getContentDescriptionString()I
    .locals 0

    const p0, 0x7f1205ff

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "1000"

    return-object p0
.end method

.method public getDefaultValueDisplayString(I)I
    .locals 0

    const p0, 0x7f12070f

    return p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120864

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
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "pref_focus_position_key"

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_pro_video_focus_position_key"

    return-object p0

    :cond_1
    const-string/jumbo p0, "pref_fastmotion_pro_focus_position_key"

    return-object p0
.end method

.method public getValueDisplayString(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    const p0, 0x7f12070f

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedDrawable(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getValueSelectedDrawable(Lcom/android/camera/data/data/ComponentData;I)I

    move-result p0

    return p0
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getValueSelectedShadowDrawable(Lcom/android/camera/data/data/ComponentData;I)I

    move-result p0

    return p0
.end method

.method public setFixedFocusLens(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return-void
.end method
