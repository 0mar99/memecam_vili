.class public Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigVideoSubQuality.java"


# static fields
.field public static ALL_QUALITY_ITMES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_QUALITY_VALUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_4K:Ljava/lang/String; = "8"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final QUALITY_8K:Ljava/lang/String; = "3001"

.field public static final TAG:Ljava/lang/String; = "ComponentConfigVideoSubQuality"


# instance fields
.field public mForceValue:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    const-string v1, "3001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private initItem(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 3
    const-class p0, Landroid/media/MediaRecorder;

    const v0, 0x8004

    invoke-static {p3, p0, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithTargetMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance p3, Lcom/android/camera/CameraSize;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-direct {p3, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    .line 5
    invoke-static {p2, p3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08028a

    .line 7
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 8
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    const v2, 0x7f1208ba

    const-string v3, "5"

    invoke-direct {p3, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 9
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    new-instance p3, Lcom/android/camera/CameraSize;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p3, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x6

    .line 12
    invoke-static {p2, p3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 13
    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08027b

    .line 14
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 15
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    const v2, 0x7f1208b4

    const-string v3, "6"

    invoke-direct {p3, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 16
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result p3

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOoOo()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p2, p3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 22
    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080285

    .line 23
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 24
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    const v2, 0x7f1208b8

    const-string v3, "8"

    invoke-direct {p3, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 25
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result p3

    .line 28
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOoOo()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x1e00

    const/16 v2, 0x10e0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 30
    invoke-static {p2, p3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 31
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f08028c

    .line 32
    invoke-static {p2}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p3

    .line 33
    invoke-static {p2}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p2

    const v0, 0x7f1208bb

    const-string v1, "3001"

    invoke-direct {p0, p3, p2, v0, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 34
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
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
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkValueValid: invalid value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disableUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    aget-object v1, v2, p0

    :goto_0
    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    const-class p1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "6"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
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
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->TAG:Ljava/lang/String;

    const-string v1, "List is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_video_sub_quality_key"

    return-object p0
.end method

.method public isForceQuality()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupport1080P()Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 1
    :goto_0
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v2, "6"

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public isSupport4K()Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 1
    :goto_0
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v2, "8"

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public isSupport8K()Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 1
    :goto_0
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v2, "3001"

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 6

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 4
    invoke-direct {p0, p4, p2, p3, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->initItem(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Ljava/util/List;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    if-nez p2, :cond_5

    .line 6
    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 7
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    .line 10
    invoke-direct {p0, p2, v5, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->initItem(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Ljava/util/List;)V

    .line 11
    sget-object v3, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-virtual {p0, p2, v3}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 12
    :cond_2
    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    sget-object v3, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_VALUE:Ljava/util/List;

    invoke-virtual {p0, p2, v3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 13
    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    invoke-virtual {p0, p2, p4}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 14
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    if-eq p1, v1, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v3

    if-eq p2, v3, :cond_3

    .line 16
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v3

    if-eq p2, v3, :cond_3

    .line 17
    invoke-virtual {p0, p4, v0}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :cond_3
    if-ne p1, v1, :cond_5

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-eq p2, v1, :cond_4

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    if-eq p2, v1, :cond_4

    .line 20
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTeleMacro(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    :cond_4
    invoke-virtual {p0, p4, v0}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p2

    const-string v0, "6"

    if-eqz p2, :cond_6

    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 25
    :cond_6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOooO()[Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 29
    :cond_7
    invoke-static {p3, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p2

    const-string v1, "8"

    const-string v3, "5"

    if-eqz p2, :cond_8

    .line 30
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 31
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 32
    :cond_8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 35
    :cond_9
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 36
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result p2

    const/16 v4, 0xc8

    if-ne p2, v4, :cond_a

    .line 37
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 38
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_a
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 40
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 41
    :cond_b
    :goto_0
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 42
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getSupportVideoBokehQualities()[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c

    .line 43
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    .line 44
    :cond_c
    invoke-virtual {p0, p4, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 46
    :cond_d
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 47
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 48
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->mForceValue:[Ljava/lang/String;

    .line 49
    :cond_e
    :goto_1
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->ALL_QUALITY_ITMES:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getKey(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "3001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
