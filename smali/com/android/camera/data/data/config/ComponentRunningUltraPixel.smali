.class public Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningUltraPixel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentRunningUltraPixel$UltraPixelSupport;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentRunningUltraPixel"

.field public static final ULTRA_PIXEL_OFF:Ljava/lang/String; = "OFF"

.field public static final ULTRA_PIXEL_ON_REAR_108M:Ljava/lang/String; = "REAR_0x3"

.field public static final ULTRA_PIXEL_ON_REAR_48M:Ljava/lang/String; = "REAR_0x2"

.field public static final ULTRA_PIXEL_ON_REAR_50M:Ljava/lang/String; = "REAR_0x5"

.field public static final ULTRA_PIXEL_ON_REAR_64M:Ljava/lang/String; = "REAR_0x1"

.field public static final ULTRA_PIXEL_ON_REAR_AI_100M:Ljava/lang/String; = "REAR_0x6"

.field public static final ULTRA_PIXEL_ON_REAR_AI_108M:Ljava/lang/String; = "REAR_0x4"


# instance fields
.field public mCloseTipString:Ljava/lang/String;

.field public mCurrentMode:I

.field public mDisplayTitleString:I

.field public mIsClosed:Landroid/util/SparseBooleanArray;

.field public mMenuDrawable:I

.field public mMenuString:Ljava/lang/String;

.field public mOpenTipString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    return-void
.end method

.method private add108M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c4

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120846

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f08042e

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x3"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add48M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c6

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120846

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f08035c

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x2"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add50M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c7

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120846

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f080430

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x5"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add64M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c8

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120846

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f08035e

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x1"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private addAI100M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c3

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120845

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f08042c

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x6"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private addAI108M(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1209c4

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120846

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f08042e

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x3"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "REAR_0x4"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private createItems(IILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa3

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_8

    const/16 p3, 0xaf

    if-eq p1, p3, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_d

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-le p1, v6, :cond_d

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addAI100M(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add50M(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add108M(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add64M(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addAI108M(Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add48M(Ljava/util/List;)V

    goto :goto_0

    :cond_8
    if-nez p2, :cond_d

    .line 12
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    .line 13
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getUltraPixelPhotographyRearSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;

    move-result-object p2

    if-le p1, v6, :cond_d

    .line 14
    invoke-static {p3, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isUltraPixelPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z

    move-result p2

    if-eqz p2, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    .line 15
    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rearPixel index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add50M(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add108M(Ljava/util/List;)V

    goto :goto_0

    .line 18
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add64M(Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add48M(Ljava/util/List;)V

    :cond_d
    :goto_0
    return-object v0
.end method

.method public static getNoSupportZoomTip()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f1209cc

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1209c6

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1209c3

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1209c7

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1209c4

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1209c8

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUltraPixelIcon()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f080377

    return v0

    :cond_1
    const v0, 0x7f080374

    return v0

    :cond_2
    const v0, 0x7f080378

    return v0

    :cond_3
    const v0, 0x7f080376

    return v0

    :cond_4
    const v0, 0x7f080375

    return v0
.end method

.method public static getUltraPixelSwitchTipsString()[Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    const v2, 0x7f1200ca

    const v3, 0x7f1200c9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_3

    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const v7, 0x7f1209c6

    .line 3
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const v7, 0x7f1209c3

    .line 5
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const v7, 0x7f1209c7

    .line 7
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const v7, 0x7f1209c4

    .line 9
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const v7, 0x7f1209c8

    .line 11
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    return-object v1
.end method

.method public static getUltraPixelTopMenuResources()[I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    return-object v0

    :cond_1
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    return-object v0

    :cond_2
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    return-object v0

    :cond_3
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    return-object v0

    :array_0
    .array-data 4
        0x7f08035c
        0x7f08035d
    .end array-data

    :array_1
    .array-data 4
        0x7f08042c
        0x7f08042d
    .end array-data

    :array_2
    .array-data 4
        0x7f080430
        0x7f080431
    .end array-data

    :array_3
    .array-data 4
        0x7f08042e
        0x7f08042f
    .end array-data

    :array_4
    .array-data 4
        0x7f08035e
        0x7f08035f
    .end array-data
.end method

.method private initUltraPixelResource(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "REAR_0x6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :pswitch_1
    const-string v1, "REAR_0x5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :pswitch_2
    const-string v1, "REAR_0x4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :pswitch_3
    const-string v1, "REAR_0x3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :pswitch_4
    const-string v1, "REAR_0x2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :pswitch_5
    const-string v1, "REAR_0x1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v8, 0x7f120846

    const v9, 0x7f1209c9

    const v10, 0x7f1209ca

    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v5, :cond_4

    const v5, 0x7f120845

    const v11, 0x7f1209c1

    const v12, 0x7f1209c2

    if-eq v1, v4, :cond_3

    const v4, 0x7f12058c

    const v13, 0x7f08042e

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ultra pixel size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4
    :cond_1
    iput v13, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f120132

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v12, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    .line 8
    iput v4, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_2

    .line 9
    :cond_2
    iput v13, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f1209c4

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    .line 13
    iput v4, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_2

    :cond_3
    const p1, 0x7f08042c

    .line 14
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f1209c3

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v12, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_2

    :cond_4
    const p1, 0x7f08035e

    .line 19
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f1209c8

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f12058f

    .line 23
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto :goto_2

    :cond_5
    const p1, 0x7f080430

    .line 24
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f1209c7

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f12058e

    .line 28
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto :goto_2

    :cond_6
    const p1, 0x7f08035c

    .line 29
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v7, [Ljava/lang/Object;

    const v1, 0x7f1209c6

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f12058d

    .line 33
    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4372e32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentSupportUltraPixel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "OFF"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

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

    const-string/jumbo p0, "pref_ultra_pixel"

    return-object p0
.end method

.method public getMenuDrawable()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    return p0
.end method

.method public getUltraPixelCloseTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    return-object p0
.end method

.method public getUltraPixelOpenTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    return-object p0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isRear108MPSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear48MPSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear50MPSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear64MPSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRearSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear48MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear50MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear64MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear108MPSwitchOn()Z

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

.method public isSwitchOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->createItems(IILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public setClosed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public switchOff()V
    .locals 2

    const/16 v0, 0xa0

    const-string v1, "OFF"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public switchOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public switchOnCurrentSupported(IILcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "UltraPixel:"

    const-string p1, "CameraCapabilities not supported"

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    const/16 p1, 0xa0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getCurrentSupportUltraPixel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
