.class public Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source "MultiWakeupEngineImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start msg.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->i(Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 5
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0, v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    goto/16 :goto_0

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "data"

    .line 8
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 9
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 10
    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    .line 12
    :cond_2
    new-instance v5, Lcom/xiaomi/asr/engine/jni/WakeupInfo;

    invoke-direct {v5}, Lcom/xiaomi/asr/engine/jni/WakeupInfo;-><init>()V

    .line 13
    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v6

    invoke-virtual {v6, v0, v4, v2, v5}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupFeedData([BIILcom/xiaomi/asr/engine/jni/WakeupInfo;)Lcom/xiaomi/asr/engine/jni/WakeupInfo;

    .line 14
    iget v4, v5, Lcom/xiaomi/asr/engine/jni/WakeupInfo;->wakeup:I

    if-ne v4, v3, :cond_3

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice wakeup has been successful:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/xiaomi/asr/engine/jni/WakeupInfo;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 16
    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v3, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    .line 17
    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    new-instance v3, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    .line 19
    invoke-virtual {v3, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    .line 20
    iget-object v1, v5, Lcom/xiaomi/asr/engine/jni/WakeupInfo;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v3, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    .line 22
    invoke-virtual {v3, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    .line 23
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    .line 25
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiWakeupEngineImpl call wakeupReset"

    .line 26
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupReset()I

    .line 28
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 30
    array-length v1, v0

    new-array v3, v1, [B

    .line 31
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "case 0x03 process failed !!!"

    .line 35
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 39
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupDestroy()I

    .line 41
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    .line 42
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 43
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto :goto_0

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    .line 46
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    .line 47
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupReset()I

    goto :goto_0

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    .line 50
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "init failed"

    .line 51
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    .line 54
    :cond_b
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end msg.what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->d(Ljava/lang/String;)V

    return v2
.end method
