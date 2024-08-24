.class public Lcom/xiaomi/camera/core/ParallelDataZipper$2;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public final synthetic val$isFirst:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

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
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v3

    .line 3
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getCaptureId()Ljava/lang/String;

    move-result-object v4

    .line 4
    sget-object v5, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    .line 5
    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 6
    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v9, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;

    invoke-direct {v9, v4}, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO00o;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {v6, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v9, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0O0/OooO0O0;

    .line 8
    invoke-interface {v6, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 9
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    const/4 v9, 0x0

    .line 10
    invoke-virtual {v6, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v6, :cond_0

    .line 11
    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v9

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v8

    .line 13
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "setResult: no capture data with captureId: %s, try timestamp: %d"

    .line 14
    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    goto :goto_0

    :cond_0
    move-wide v9, v1

    :goto_0
    if-nez v6, :cond_1

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setResult: no capture data with timestamp: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    move v7, v6

    move-wide v11, v9

    move v10, v7

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v8

    .line 18
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v5

    .line 19
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v9

    .line 20
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v10

    .line 21
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v11

    move v6, v5

    move-object v5, v9

    .line 22
    :goto_1
    iget-object v9, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v9}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-nez v9, :cond_2

    .line 23
    new-instance v9, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v13, v9

    move v14, v8

    move v15, v6

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZLOooO0OO/OooO0OO;ZZ)V

    .line 24
    invoke-virtual {v9, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 25
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v9}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {v9, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 27
    :goto_2
    invoke-virtual {v9, v11, v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 28
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v4

    if-eq v4, v8, :cond_3

    if-eqz v8, :cond_3

    .line 29
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setResult: update stream number with: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v9, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    .line 31
    :cond_3
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v4

    if-eq v4, v6, :cond_4

    .line 32
    invoke-virtual {v9, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    .line 33
    :cond_4
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v4

    if-eq v4, v5, :cond_5

    .line 34
    invoke-virtual {v9, v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 35
    :cond_5
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v4

    if-eq v4, v10, :cond_6

    .line 36
    invoke-virtual {v9, v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    .line 37
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResult: timestamp = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstTimestamp = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceId = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamNum = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fusionType = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasCaptureData = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdrSr = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v9, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    .line 41
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iget-boolean v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v9, v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 42
    iget-object v0, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v0, v9}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void
.end method
