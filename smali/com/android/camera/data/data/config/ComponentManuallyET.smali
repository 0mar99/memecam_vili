.class public Lcom/android/camera/data/data/config/ComponentManuallyET;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyET.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentManuallyET"


# instance fields
.field public mFastmotionEISEnabled:Z

.field public mFastmotionFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

.field public mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

.field public mSupperEISEnabled:Z

.field public mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 8
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa7

    const/16 v2, 0xb4

    const/16 v3, 0xa9

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_5

    .line 2
    :cond_1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureTimeRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;

    move-result-object p2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFastmotionFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 6
    aget-object p1, p0, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_5

    .line 7
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 8
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v3, 0x1

    .line 9
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_5

    .line 10
    aget-object v4, p0, v3

    .line 11
    iget-object v5, v4, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_4

    cmp-long v5, v5, p1

    if-gtz v5, :cond_4

    .line 12
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private getFastmotionFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoEisBeautyMeanwhileEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 2
    :goto_1
    iget-object v4, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFastmotionFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v4, :cond_2

    iget-boolean v5, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFastmotionEISEnabled:Z

    if-ne v5, v1, :cond_2

    return-object v4

    .line 3
    :cond_2
    iput-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFastmotionEISEnabled:Z

    const/16 v4, 0x17

    new-array v5, v4, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f1206f6

    const/4 v8, -0x1

    const-string v9, "0"

    invoke-direct {v6, v8, v8, v7, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v5, v2

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f1206e4

    const-string v9, "250000"

    invoke-direct {v6, v8, v8, v7, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v5, v3

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f1206de

    const-string v9, "312500"

    invoke-direct {v6, v8, v8, v7, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f1206d7

    const-string v10, "400000"

    invoke-direct {v6, v8, v8, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x3

    aput-object v6, v5, v9

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f1206d3

    const-string v11, "500000"

    invoke-direct {v6, v8, v8, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v10, 0x4

    aput-object v6, v5, v10

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f1206cb

    const-string v12, "625000"

    invoke-direct {v6, v8, v8, v11, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v11, 0x5

    aput-object v6, v5, v11

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206c5

    const-string v13, "800000"

    invoke-direct {v6, v8, v8, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v12, 0x6

    aput-object v6, v5, v12

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f1206c2

    const-string v14, "1000000"

    invoke-direct {v6, v8, v8, v13, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v13, 0x7

    aput-object v6, v5, v13

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f1206f2

    const-string v15, "1250000"

    invoke-direct {v6, v8, v8, v14, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v14, 0x8

    aput-object v6, v5, v14

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206ed

    const-string v4, "1562500"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x9

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206e8

    const-string v4, "2000000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xa

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206e3

    const-string v4, "2500000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xb

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206dd

    const-string v4, "3125000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xc

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206d6

    const-string v4, "4000000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xd

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206d2

    const-string v4, "5000000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xe

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206ca

    const-string v4, "6250000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xf

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206c4

    const-string v4, "8000000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x10

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206c1

    const-string v4, "10000000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x11

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206f1

    const-string v4, "12500000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x12

    aput-object v6, v5, v4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f1206ec

    const-string v4, "16670000"

    invoke-direct {v6, v8, v8, v15, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x13

    aput-object v6, v5, v4

    const/16 v6, 0x14

    new-instance v15, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e7

    const-string v14, "20000000"

    invoke-direct {v15, v8, v8, v4, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v15, v5, v6

    const/16 v4, 0x15

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f1206e2

    const-string v15, "25000000"

    invoke-direct {v6, v8, v8, v14, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v5, v4

    const/16 v4, 0x16

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f1206db

    const-string v15, "33300000"

    invoke-direct {v6, v8, v8, v14, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v5, v4

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v1, :cond_3

    new-array v1, v12, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206d5

    const-string v14, "40000000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206d1

    const-string v14, "50000000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v3

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206c8

    const-string v14, "66700000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v7

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206c6

    const-string v14, "76900000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v9

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206c0

    const-string v14, "100000000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v10

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206f0

    const-string v14, "125000000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v11

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOOO()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 9
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206eb

    const-string v14, "166700000"

    invoke-direct {v5, v8, v8, v6, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206e6

    const-string v6, "200000000"

    invoke-direct {v2, v8, v8, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206e1

    const-string v5, "250000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206bb

    const-string v5, "300000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206bc

    const-string v5, "400000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206bd

    const-string v5, "500000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206be

    const-string v5, "600000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206bf

    const-string v5, "800000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206d0

    const-string v5, "1000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206ce

    const-string v5, "1300000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206cf

    const-string v5, "1600000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206da

    const-string v5, "2000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206d9

    const-string v5, "2500000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206e0

    const-string v5, "3200000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206e5

    const-string v5, "4000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206ea

    const-string v5, "5000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206ef

    const-string v5, "6000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206f4

    const-string v5, "8000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c3

    const-string v5, "10000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c7

    const-string v5, "13000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const/16 v2, 0x14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206c9

    const-string v6, "15000000000"

    invoke-direct {v3, v8, v8, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206d4

    const-string v6, "20000000000"

    invoke-direct {v3, v8, v8, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206d8

    const-string v6, "25000000000"

    invoke-direct {v3, v8, v8, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206dc

    const-string v5, "30000000000"

    invoke-direct {v2, v8, v8, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFastmotionFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v1
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0()Z

    move-result v1

    const v2, 0x7f1206d6

    const-string v6, "2000000"

    const v7, 0x7f1206e8

    const/16 v9, 0x9

    const/16 v10, 0x8

    const-string v11, "1000000"

    const v12, 0x7f1206c2

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const-string v3, "0"

    const v4, 0x7f1206f6

    const/16 v20, 0x0

    const/4 v5, -0x1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00OO()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v8, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v8, v1, v20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v12, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "4000000"

    invoke-direct {v3, v5, v5, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v17

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c4

    const-string v4, "8000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206ec

    const-string v4, "16667000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206db

    const-string v4, "33333000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c8

    const-string v4, "66667000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206f0

    const-string v4, "125000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206e1

    const-string v4, "250000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206cd

    const-string v4, "500000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206d0

    const-string v4, "1000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206da

    const-string v4, "2000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206e5

    const-string v4, "4000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206f4

    const-string v6, "8000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206cc

    const-string v6, "16000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206df

    const-string v6, "32000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x35

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v8, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v8, v1, v20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e4

    const-string v8, "250000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206de

    const-string v8, "312500"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d7

    const-string v8, "400000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d3

    const-string v8, "500000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206cb

    const-string v8, "625000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c5

    const-string v8, "800000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v12, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v13

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206f2

    const-string v8, "1250000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ed

    const-string v8, "1562500"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v9

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e3

    const-string v6, "2500000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206dd

    const-string v6, "3125000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "4000000"

    invoke-direct {v3, v5, v5, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d2

    const-string v6, "5000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ca

    const-string v6, "6250000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c4

    const-string v6, "8000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c1

    const-string v6, "10000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206f1

    const-string v6, "12500000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ec

    const-string v6, "16670000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e7

    const-string v6, "20000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e2

    const-string v6, "25000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206db

    const-string v6, "33300000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d5

    const-string v6, "40000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d1

    const-string v6, "50000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c8

    const-string v6, "66700000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c6

    const-string v6, "76900000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c0

    const-string v6, "100000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206f0

    const-string v6, "125000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206eb

    const-string v6, "166700000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e6

    const-string v6, "200000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e1

    const-string v6, "250000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206bb

    const-string v6, "300000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206bc

    const-string v6, "400000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206bd

    const-string v6, "500000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206be

    const-string v6, "600000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206bf

    const-string v6, "800000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d0

    const-string v6, "1000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ce

    const-string v6, "1300000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206cf

    const-string v6, "1600000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206da

    const-string v6, "2000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d9

    const-string v6, "2500000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e0

    const-string v6, "3200000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206e5

    const-string v6, "4000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ea

    const-string v6, "5000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206ef

    const-string v6, "6000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206f4

    const-string v6, "8000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c3

    const-string v6, "10000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c7

    const-string v6, "13000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206c9

    const-string v6, "15000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d4

    const-string v6, "20000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206d8

    const-string v6, "25000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1206dc

    const-string v6, "30000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    :goto_1
    iget-object v0, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method private getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 14

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    if-ne v2, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206f6

    const/4 v4, -0x1

    const-string v5, "0"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206e4

    const-string v6, "250000"

    invoke-direct {v2, v4, v4, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1206de

    const-string v7, "312500"

    invoke-direct {v2, v4, v4, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f1206d7

    const-string v8, "400000"

    invoke-direct {v2, v4, v4, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f1206d3

    const-string v9, "500000"

    invoke-direct {v2, v4, v4, v8, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f1206cb

    const-string v10, "625000"

    invoke-direct {v2, v4, v4, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x5

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f1206c5

    const-string v11, "800000"

    invoke-direct {v2, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v10, 0x6

    aput-object v2, v1, v10

    const/4 v2, 0x7

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206c2

    const-string v13, "1000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x8

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206f2

    const-string v13, "1250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x9

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206ed

    const-string v13, "1562500"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xa

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206e8

    const-string v13, "2000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xb

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206e3

    const-string v13, "2500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xc

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206dd

    const-string v13, "3125000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xd

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206d6

    const-string v13, "4000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xe

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206d2

    const-string v13, "5000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xf

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206ca

    const-string v13, "6250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x10

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206c4

    const-string v13, "8000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x11

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206c1

    const-string v13, "10000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x12

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206f1

    const-string v13, "12500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x13

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206ec

    const-string v13, "16670000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x14

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206e7

    const-string v13, "20000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x15

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206e2

    const-string v13, "25000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x16

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f1206db

    const-string v13, "33300000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_1

    new-array v0, v10, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f1206d5

    const-string v11, "40000000"

    invoke-direct {v1, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206d1

    const-string v10, "50000000"

    invoke-direct {v1, v4, v4, v3, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c8

    const-string v5, "66700000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c6

    const-string v5, "76900000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206c0

    const-string v5, "100000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206f0

    const-string v5, "125000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v9

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFastmotionFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    .line 5
    :goto_0
    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v2, p0, v0

    .line 6
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_3
    sget-object p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->TAG:Ljava/lang/String;

    const-string p1, "checkValueValid: invalid value!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v2

    .line 7
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v2, "0"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getContentDescriptionString()I
    .locals 0

    const p0, 0x7f1205f9

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120844

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

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "pref_qc_camera_exposuretime_key"

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_qc_camera_pro_video_exposuretime_key"

    return-object p0

    :cond_1
    const-string/jumbo p0, "pref_qc_camera_fastmotion_pro_exposuretime_key"

    return-object p0
.end method

.method public getMillSecond(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    .line 2
    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getValueDisplayString(I)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFastmotionFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    .line 5
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 6
    iget-object v6, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    iget p0, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "mode %1$d, invalid value %2$s for %3$s"

    .line 10
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    const-class p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFastmotionLongExpose(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/32 v1, 0x7735940

    cmp-long p0, p0, v1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isLongExpose(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/32 v1, 0x17d78400

    cmp-long p0, p0, v1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
