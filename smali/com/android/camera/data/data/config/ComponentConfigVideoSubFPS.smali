.class public Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigVideoSubFPS.java"


# static fields
.field public static ALL_FPS_ITEMS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_FPS_VALUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FPS_120:Ljava/lang/String; = "120"

.field public static final FPS_24:Ljava/lang/String; = "24"

.field public static final FPS_30:Ljava/lang/String; = "30"

.field public static final FPS_60:Ljava/lang/String; = "60"

.field public static final TAG:Ljava/lang/String; = "ComponentConfigVideoSubFPS"


# instance fields
.field public mAllFpsIn8K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mForceValue:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    const-string v1, "60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    const-string v1, "120"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    return-void
.end method

.method private getSupportMinValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private initAllItem(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Ljava/util/List;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isSupport8K()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00Oo()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080282

    .line 3
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 4
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    const v2, 0x7f1208b6

    const-string v3, "24"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080283

    .line 8
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 9
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    const v2, 0x7f1208b7

    const-string v3, "30"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 10
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isSupport1080P()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x780

    const/16 v0, 0x438

    .line 13
    invoke-static {p0, v0, p4, p2}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 14
    :cond_1
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isSupport4K()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xf00

    const/16 v0, 0x870

    .line 15
    invoke-static {p0, v0, p4, p2}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 16
    :cond_2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p4, 0x7f080289

    .line 17
    invoke-static {p4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    .line 18
    invoke-static {p4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p4

    const v1, 0x7f1208b9

    const-string v2, "60"

    invoke-direct {p0, v0, p4, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 19
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isSupport4K()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 22
    invoke-static {p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isSupported4K120Fps(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 p4, 0x1

    if-nez p0, :cond_6

    .line 23
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraRoleIds(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object p5

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-eqz p5, :cond_4

    .line 24
    invoke-static {p5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p5

    if-ltz p5, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraRoleId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    if-ne p2, v0, :cond_5

    :goto_0
    move p2, p4

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    if-eqz p2, :cond_6

    .line 26
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isSupported4K120Fps(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p0, p4

    :cond_6
    if-eqz p0, :cond_7

    .line 28
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f08027f

    .line 29
    invoke-static {p2}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p4

    .line 30
    invoke-static {p2}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p2

    const p5, 0x7f1208b5

    const-string v0, "120"

    invoke-direct {p0, p4, p2, p5, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 31
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private initItem(ILjava/util/List;Lcom/android/camera2/CameraCapabilities;Ljava/util/List;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p6, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/16 v0, 0x35

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p6, v0, :cond_3

    const/16 v0, 0x36

    if-eq p6, v0, :cond_2

    const/16 v0, 0x38

    if-eq p6, v0, :cond_1

    const v0, 0x17e91e

    if-eq p6, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p6, "3001"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_1
    const-string p6, "8"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_2
    const-string p6, "6"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_3
    const-string p6, "5"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const p6, 0x7f1208b7

    const v0, 0x7f080283

    const-string v5, "30"

    if-eqz p1, :cond_d

    const v6, 0x7f1208b9

    const-string v7, "60"

    const v8, 0x7f080289

    if-eq p1, v4, :cond_c

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_5

    goto/16 :goto_5

    .line 3
    :cond_5
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    if-eqz p1, :cond_6

    const-string p3, "24"

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const p5, 0x7f080282

    .line 5
    invoke-static {p5}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    .line 6
    invoke-static {p5}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p5

    const v2, 0x7f1208b6

    invoke-direct {p1, v1, p5, v2, p3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_6
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    if-eqz p0, :cond_e

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 10
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 11
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 12
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p3

    invoke-direct {p0, p1, p3, p6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 13
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 15
    :cond_7
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 16
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 17
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 18
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xf00

    const/16 p1, 0x870

    .line 20
    invoke-static {p0, p1, p5, p3}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 21
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 22
    invoke-static {v8}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 23
    invoke-static {v8}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p5

    invoke-direct {p0, p1, p5, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 24
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_8
    invoke-static {p3}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isSupported4K120Fps(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 27
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraRoleIds(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object p1

    const/16 p5, 0x3e

    if-eqz p1, :cond_9

    .line 28
    invoke-static {p1, p5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraRoleId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-ne p1, p5, :cond_a

    :goto_2
    move p1, v4

    goto :goto_3

    :cond_a
    move p1, v3

    :goto_3
    if-eqz p1, :cond_b

    .line 30
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isSupported4K120Fps(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    move v4, p0

    :goto_4
    if-eqz v4, :cond_e

    .line 32
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08027f

    .line 33
    invoke-static {p1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p3

    .line 34
    invoke-static {p1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    const p5, 0x7f1208b5

    const-string p6, "120"

    invoke-direct {p0, p3, p1, p5, p6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 35
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_c
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 38
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 39
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 40
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x780

    const/16 p1, 0x438

    .line 42
    invoke-static {p0, p1, p5, p3}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 43
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 44
    invoke-static {v8}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 45
    invoke-static {v8}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p3

    invoke-direct {p0, p1, p3, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 46
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 48
    :cond_d
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 49
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p1

    .line 50
    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p3

    invoke-direct {p0, p1, p3, p6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 51
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_5
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

.method public static isSupported4K120Fps(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->TAG:Ljava/lang/String;

    const-string v1, "getSupportedHfrSettings: CameraCapabilities is null!!!"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHighSpeedVideoSize(Lcom/android/camera2/CameraCapabilities;)[Landroid/util/Size;

    move-result-object v2

    .line 4
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0xf00

    if-eq v6, v7, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {p0, v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHighSpeedVideoFPSRange(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v6

    .line 7
    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 8
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    aput-object v9, v11, v12

    const-string v9, "%dx%d:%d"

    .line 10
    invoke-static {v10, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 12
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "3840x2160:120"

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->TAG:Ljava/lang/String;

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

.method public getAllFpsIn8K()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    return-object p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object v1, p0, p1

    :goto_0
    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    const-class p1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

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
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getSupportMinValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "30"

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
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->TAG:Ljava/lang/String;

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

    const-string/jumbo p0, "pref_video_sub_fps_key"

    return-object p0
.end method

.method public isForceQuality()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V
    .locals 10

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00Oo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->get8KMaxFpsSupported(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const/16 v1, 0x18

    const-string v9, "30"

    if-le v0, v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00o0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mAllFpsIn8K:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, v7

    move-object v3, p3

    move-object v4, v8

    move v5, p4

    move-object v6, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->initItem(ILjava/util/List;Lcom/android/camera2/CameraCapabilities;Ljava/util/List;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V

    .line 9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    if-nez p2, :cond_5

    .line 10
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 11
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->initAllItem(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Ljava/util/List;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V

    .line 15
    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 16
    :cond_4
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_VALUE:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 17
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    invoke-virtual {p0, p1, v7}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 18
    invoke-virtual {p0, v7, v8}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 19
    :cond_5
    invoke-virtual {p5}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isForceQuality()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 21
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    .line 23
    :goto_0
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getKey(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "24"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
