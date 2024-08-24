.class public Lcom/xiaomi/camera/core/PostProcessor$1;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCallback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_7

    .line 2
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 3
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide p1

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onSessionCallback: task %d post process error"

    invoke-static {p3, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)V

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 7
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/IResultDataCallbackListener;->onResultDataReceived(ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResultDataCallback received"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionCallback: session died"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 13
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onMetadataReceived(ILjava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_5
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 15
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 16
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/protocol/ISessionStatusCallBackListener;

    if-eqz p0, :cond_6

    .line 17
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getResultId()I

    move-result p1

    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getFlawResult()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/protocol/ISessionStatusCallBackListener;->onSessionStatusFlawResultData(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    :cond_6
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSessionCallback: FLAW getResultId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getResultId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getFlawResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getFlawResult()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method
