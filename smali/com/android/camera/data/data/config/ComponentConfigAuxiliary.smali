.class public Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigAuxiliary.java"


# static fields
.field public static final A_CLOSE:Ljava/lang/String; = "close"

.field public static final A_EXPOSURE_FEEDBACK:Ljava/lang/String; = "exposure_feedback"

.field public static final A_FOCUS_PEAK:Ljava/lang/String; = "peak_focus"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private getAuxiliaryRes()I
    .locals 0

    const p0, 0x7f080298

    return p0
.end method

.method private getExposurceFeedbackRes()I
    .locals 0

    const p0, 0x7f0802ab

    return p0
.end method

.method private getFocusPeakRes()I
    .locals 0

    const p0, 0x7f0802af

    return p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "close"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120688

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

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_camera_pro_video_auxiliary"

    return-object p0

    :cond_1
    const-string/jumbo p0, "pref_camera_pro_photo_auxiliary"

    return-object p0
.end method

.method public getValueSelectedDrawable(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "peak_focus"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getFocusPeakRes()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "exposure_feedback"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getExposurceFeedbackRes()I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getAuxiliaryRes()I

    move-result p0

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "peak_focus"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f12015d

    return p0

    :cond_0
    const-string p1, "exposure_feedback"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f12015c

    return p0

    :cond_1
    const p0, 0x7f12015b

    return p0
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 4
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
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_0
    const/16 p2, 0xa7

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getAuxiliaryRes()I

    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getAuxiliaryRes()I

    move-result v1

    const v2, 0x7f120685

    const-string v3, "close"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getFocusPeakRes()I

    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getFocusPeakRes()I

    move-result v1

    const v2, 0x7f120687

    const-string/jumbo v3, "peak_focus"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getExposurceFeedbackRes()I

    move-result v0

    .line 11
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->getExposurceFeedbackRes()I

    move-result v1

    const v2, 0x7f120686

    const-string v3, "exposure_feedback"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method
