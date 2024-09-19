.class public Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningAIWatermark.java"


# instance fields
.field public mBackEnable:Z

.field public mCurrentModule:I

.field public mCurrentType:Ljava/lang/String;

.field public mFrontEnable:Z

.field public mIWatermarkEnable:Z

.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMajorCurrentKey:Ljava/lang/String;

.field public mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMinorCurrentKey:Ljava/lang/String;

.field public mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    const-string v0, "ai_trigger"

    .line 3
    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    const-string/jumbo v0, "super_moon_reset"

    .line 4
    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorCurrentKey:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mIWatermarkEnable:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 8
    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mFrontEnable:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mBackEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/data/data/runing/DataItemRunning;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    .line 12
    iput-object p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mList:Ljava/util/ArrayList;

    .line 13
    iput p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    return-void
.end method

.method private updateDualWatermarkItem(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 6
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    goto :goto_0

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 10
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 11
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    :cond_3
    return-void
.end method


# virtual methods
.method public getAIWatermarkEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0xcd

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAIWatermarkEnable(I)Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->supportTopConfigEntry(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorCurrentKey:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "off"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEnable(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mFrontEnable:Z

    return p0

    .line 2
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mBackEnable:Z

    return p0
.end method

.method public getIWatermarkEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mIWatermarkEnable:Z

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
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_watermark_key"

    return-object p0
.end method

.method public getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuperMoonTextEnable()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const/4 v1, 0x1

    const-string/jumbo v2, "super_moon_reset"

    const/16 v3, 0xc

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDualWatermark()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFixedLocation()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFixedOrientation()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSwitchOn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string/jumbo v1, "super_moon_reset"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needActive()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getIWatermarkEnable()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needForceDisable(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceEnable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "4x3"

    .line 4
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public needForceEnable()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public needMoveUp(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xcd

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAIWatermark(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setIWatermarkEnable(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 4
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 5
    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentModule:I

    const/16 v1, 0xbc

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "super_moon_reset"

    .line 6
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorCurrentKey:Ljava/lang/String;

    const/16 p1, 0xb

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "ai_trigger"

    .line 9
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setAIWatermarkEnable(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xcd

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorCurrentKey:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorCurrentKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setEnable(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mFrontEnable:Z

    goto :goto_0

    .line 2
    :cond_1
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mBackEnable:Z

    :goto_0
    return-void
.end method

.method public setHasMove(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    :cond_1
    return-void
.end method

.method public setIWatermarkEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mIWatermarkEnable:Z

    return-void
.end method

.method public supportTopConfigEntry(I)Z
    .locals 0

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xbc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcd

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public updateLocation([ILandroid/graphics/Rect;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-eq v0, p3, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p3, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateCoordinate([I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setLimitArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateCoordinate([I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setLimitArea(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateWatermarkItem(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMinorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateDualWatermarkItem(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->mMajorWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    :goto_0
    return-void
.end method
