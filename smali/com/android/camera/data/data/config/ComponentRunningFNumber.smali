.class public Lcom/android/camera/data/data/config/ComponentRunningFNumber;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningFNumber.java"


# static fields
.field public static final F_NUMBERS:[Ljava/lang/String;

.field public static final F_NUMBER_1X:Ljava/lang/String; = "1.4"

.field public static final F_NUMBER_2X:Ljava/lang/String; = "2.0"

.field public static final F_NUMBER_3X:Ljava/lang/String; = "2.8"


# instance fields
.field public mPortraitBokehZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-string v0, "1.0"

    const-string v1, "1.1"

    const-string v2, "1.2"

    const-string v3, "1.4"

    const-string v4, "1.6"

    const-string v5, "1.8"

    const-string v6, "2.0"

    const-string v7, "2.2"

    const-string v8, "2.5"

    const-string v9, "2.8"

    const-string v10, "3.2"

    const-string v11, "3.5"

    const-string v12, "4.0"

    const-string v13, "4.5"

    const-string v14, "5.0"

    const-string v15, "5.6"

    const-string v16, "6.3"

    const-string v17, "7.1"

    const-string v18, "8.0"

    const-string v19, "9.0"

    const-string v20, "10"

    const-string v21, "11"

    const-string v22, "13"

    const-string v23, "14"

    const-string v24, "16"

    .line 1
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private mapValueToProgress(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/16 p1, 0x64

    mul-int/2addr p0, p1

    .line 4
    sget-object v0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length v0, v0

    div-int/2addr p0, v0

    .line 5
    invoke-static {p0, v1, p1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :pswitch_4
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 3
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "1.4"

    return-object p0

    :cond_2
    const-string p0, "1.2"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooooOo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo0o0()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->mPortraitBokehZoomRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v1, "1.4"

    if-lez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 6
    :cond_1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->mPortraitBokehZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    const-string p1, "2.0"

    goto :goto_1

    :cond_3
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_4

    const-string p1, "2.8"

    :cond_4
    :goto_1
    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFNumberProgress()I
    .locals 4

    const/16 v0, 0xa0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->mapValueToProgress(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v1, "pref_f_number_progress"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    sub-int v1, p0, v0

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    return v0

    :cond_0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo p1, "pref_ultra_wide_bokeh_enabled"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "pref_ultrawide_f_number"

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_f_number"

    return-object p0
.end method

.method public progressToValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v0, "pref_f_number_progress"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 2
    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length p0, p0

    mul-int/2addr p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 3
    sget-object p1, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 4
    sget-object p1, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->F_NUMBERS:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitBokehZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->mPortraitBokehZoomRatio:F

    return-void
.end method
