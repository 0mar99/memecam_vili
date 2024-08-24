.class public Lcom/xiaomi/camera/core/ParallelDataZipper$3;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic val$cameraType:I

.field public final synthetic val$image:Landroid/media/Image;

.field public final synthetic val$imageType:I

.field public final synthetic val$isPoolImage:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iput p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iput p4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    iput-boolean p5, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 3
    sget-object v6, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    .line 4
    iget-object v7, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v7}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v7, :cond_2

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 6
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v8, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v8}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 8
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0Oo;

    invoke-direct {v9, v7}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0Oo;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0OO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0OO;

    .line 10
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 11
    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    const/4 v9, 0x0

    .line 12
    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v8, :cond_0

    .line 13
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImage: no capture data with captureId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v7, v8

    :cond_1
    if-nez v7, :cond_2

    .line 14
    iget-object v7, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v7, v3, v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v7

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImage: try to find capture data with timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v9, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v9}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/camera/core/CaptureData;

    move-wide/from16 v19, v7

    move-object v7, v9

    move-wide/from16 v8, v19

    goto :goto_0

    :cond_2
    move-wide v8, v3

    :goto_0
    if-nez v7, :cond_3

    .line 17
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImage: no capture data with timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v2

    move v10, v7

    move-wide v11, v8

    move v8, v10

    move-object v9, v6

    move v6, v8

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v6

    .line 19
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v8

    .line 20
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v9

    .line 21
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v10

    .line 22
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v11

    move v7, v1

    :goto_1
    if-nez v5, :cond_4

    .line 23
    new-instance v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v13, v5

    move v14, v6

    move v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZLOooO0OO/OooO0OO;ZZ)V

    .line 24
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    move v1, v2

    :cond_4
    if-nez v1, :cond_9

    .line 25
    invoke-virtual {v5, v11, v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 26
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    if-eq v1, v6, :cond_5

    if-eqz v6, :cond_5

    .line 27
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setImage: update stream number with: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    .line 29
    :cond_5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v1

    if-eq v1, v8, :cond_6

    .line 30
    invoke-virtual {v5, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    .line 31
    :cond_6
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v1

    if-eq v1, v9, :cond_7

    .line 32
    invoke-virtual {v5, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 33
    :cond_7
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v1

    if-eq v1, v10, :cond_8

    .line 34
    invoke-virtual {v5, v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    .line 35
    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImage: timestamp = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", firstTimestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", streamNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fusionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasCaptureData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHdrSr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v5, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    .line 39
    :cond_9
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iget v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    iget-boolean v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IIZ)V

    .line 40
    iget-object v0, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v0, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void

    .line 41
    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    aput-object v0, v1, v2

    const-string v0, "setImage: %s is closed!"

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
