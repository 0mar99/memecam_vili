.class public Lcom/android/camera/data/data/config/ComponentConfigGradienter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigGradienter.java"


# static fields
.field public static final SCOPE_NS_DUMMY_FILM:Ljava/lang/String; = "film"

.field public static final SCOPE_NS_PHOTO:Ljava/lang/String; = "photo"

.field public static final SCOPE_NS_PHOTO_PRO:Ljava/lang/String; = "photo_pro"

.field public static final SCOPE_NS_UNSUPPORTED:Ljava/lang/String; = "unsupported"

.field public static final SCOPE_NS_VIDEO:Ljava/lang/String; = "video"

.field public static final SCOPE_NS_VIDEO_PRO:Ljava/lang/String; = "video_pro"

.field public static final TAG:Ljava/lang/String; = "CCGradienter"

.field public static final VALUE_GRADIENTER_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_GRADIENTER_ON:Ljava/lang/String; = "on"


# instance fields
.field public mCameraId:I

.field public mCapturingMode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    const-string/jumbo v1, "off"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

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
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CCGradienter#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const-string/jumbo p0, "pref_camera_gradienter_key_unsupported"

    return-object p0

    :sswitch_0
    const-string/jumbo p0, "pref_camera_gradienter_key"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xaf -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xcd -> :sswitch_0
        0xcf -> :sswitch_0
        0xd0 -> :sswitch_0
        0xd1 -> :sswitch_0
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_0
        0xd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSwitchOn(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_referenceline_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reInit(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCapturingMode:I

    .line 2
    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unsupported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public toSwitch(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string/jumbo p2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "off"

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
