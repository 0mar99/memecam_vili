.class public Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;
.super Ljava/lang/Object;
.source "VoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/record/VoiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordingRunnable"
.end annotation


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mIsEnd:Z

.field public mIsExit:Z

.field public final synthetic this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return-void
.end method

.method private init()Z
    .locals 9

    const-string v0, "VoiceRecord: init start"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V

    :cond_0
    const-string v1, "VoiceRecord: The user set up stop"

    .line 5
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    return v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    if-gez v1, :cond_2

    const-string v1, "VoiceRecord: AudioRecord call getMinBufferSize < 0"

    .line 7
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_3

    .line 10
    new-instance v8, Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v5

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v6

    move-object v2, v8

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v8, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mChannels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mAudioEncodingBits:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mRecordBufferSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mixRecordBufferSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onAudioSessionId(I)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const-string v1, "AudioRecord state is not correct"

    .line 15
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_4
    return v2

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "VoiceRecord: init Exception"

    .line 18
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v0
.end method

.method private releaseAudioRecordImp()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRecord mAudioSource stopAudioRecordImp is not null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    const-string p0, "VoiceRecord mAudioSource stopAudioRecordImp over"

    .line 6
    invoke-static {p0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private startup()Z
    .locals 8

    const-string v0, "VoiceRecord"

    const-string v1, "startup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 3
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V

    :cond_0
    const-string p0, "The user set up stop"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const-string v5, "start Recording failed"

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 9
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1

    :cond_2
    :try_start_0
    const-string v4, "start Recording"

    .line 11
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    .line 13
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const-string v2, "AudioRecord recordingState is not correct"

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 16
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start recording deltaTime = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->start()V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->stop()V

    .line 5
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->countDown()V

    const-string p0, "VoiceRecord: init fail"

    .line 6
    invoke-static {p0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "VoiceRecord: init suc , start Recording"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v1

    new-array v1, v1, [B

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecordBufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->startup()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingStart()V

    .line 13
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    if-nez v2, :cond_6

    .line 14
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v3, v3, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 17
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecording([BI)V

    .line 18
    :cond_2
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    if-eqz v2, :cond_3

    const-string v2, "VoiceRecord onRecordingEnd "

    .line 19
    invoke-static {v2}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 21
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_4
    const-string v1, "read() returned AudioRecord.ERROR_BAD_VALUE"

    .line 22
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "read() returned AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v1, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    .line 24
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "VoiceRecord recording Exception"

    .line 29
    invoke-static {v1}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1, v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$1002(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    .line 31
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 32
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingFailed()V

    .line 33
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_8

    .line 34
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v1, v1, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->releaseAudioRecordImp()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 36
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    .line 38
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_8
    :goto_4
    const-string v0, "VoiceRecord RecordingRunnable is exit"

    .line 39
    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->stop()V

    .line 41
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->countDown()V

    .line 42
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 43
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordRelease()V

    :cond_9
    :goto_5
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v0, v0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    const-string p0, "VoiceRecord:stop"

    .line 3
    invoke-static {p0}, Lcom/xiaomi/asr/engine/utils/MultiWakeupLog;->e(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
