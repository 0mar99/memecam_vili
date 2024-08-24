.class public Lcom/android/camera2/HardwareCapabilities$6;
.super Lcom/xiaomi/camera/util/TypedValue;
.source "HardwareCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/HardwareCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/TypedValue<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/TypedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Boolean;
    .locals 9

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result p0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    const-class v5, Landroid/media/MediaRecorder;

    const v6, 0x8004

    invoke-static {v4, v5, v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithTargetMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v5

    .line 13
    new-instance v6, Lcom/android/camera/CameraSize;

    const/16 v7, 0x1e00

    const/16 v8, 0x10e0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-static {v3, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :catch_0
    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne v2, p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/HardwareCapabilities$6;->create()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
