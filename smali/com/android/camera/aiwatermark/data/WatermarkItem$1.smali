.class public Lcom/android/camera/aiwatermark/data/WatermarkItem$1;
.super Ljava/lang/Object;
.source "WatermarkItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/aiwatermark/data/WatermarkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;->this$0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;->this$0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-static {p0, v0, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->access$000(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-static {}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "location"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "location_time_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "location_time_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateTopAlert(Z)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateTopAlert(Z)V

    .line 15
    invoke-interface {v0, p0, v5}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method
