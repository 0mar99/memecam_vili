.class public Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelRepeating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelRepeating;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$302(Lcom/android/camera2/MiCamera2ShotParallelRepeating;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureFailed: reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timestamp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " frameNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParallelRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v3, v4, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureProgressed: frameNumber="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParallelRepeating"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParallelRepeating"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " latestSequenceId= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ParallelRepeating"

    .line 3
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onRepeatingCaptureEnd()V

    .line 6
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRepeating;ZI)V

    .line 7
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ParallelRepeating"

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->mFrameNumberToTimestamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$108(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    .line 6
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result v1

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    .line 7
    :goto_0
    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0o:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)I

    move-result v1

    invoke-static {}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$000()I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v1, v11

    goto :goto_1

    :cond_1
    move v1, v10

    :cond_2
    :goto_1
    const/4 v12, 0x4

    if-eqz v1, :cond_4

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: drop task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v9, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const-string v6, ""

    move-object v1, v9

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)LOooO0OO/OooO0OO;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 13
    invoke-virtual {v9, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 14
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 17
    :cond_3
    invoke-virtual {v9, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    .line 18
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto/16 :goto_2

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 20
    new-instance v14, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 21
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v14

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 22
    new-instance v1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 23
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    .line 24
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    .line 27
    invoke-interface {v13, v14, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 29
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRepeating;)LOooO0OO/OooO0OO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(LOooO0OO/OooO0OO;)V

    .line 30
    invoke-virtual {v1, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 31
    invoke-virtual {v1, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 32
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-boolean v3, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz v3, :cond_5

    .line 33
    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 34
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iput-boolean v10, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 35
    :cond_5
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_2

    :cond_6
    const-string v0, "onCaptureStarted: null task data"

    .line 36
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v0, "onCaptureStarted: null picture callback"

    .line 37
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algo_device_multi_capture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    return-void
.end method
