.class public Lcom/xiaomi/fenshen/VideoRecorder$2;
.super Landroid/media/MediaCodec$Callback;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/fenshen/VideoRecorder;->setAudioCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/fenshen/VideoRecorder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/fenshen/VideoRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Audio onError: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    const-string v1, "VideoRecorder"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio onInputBufferAvailable idx "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " inQueue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v2}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v2}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v2}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    .line 6
    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    if-nez p0, :cond_1

    .line 7
    iget-object p0, v2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x4

    iput v3, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-string p0, "input audio EOS frame"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    iget-object p0, v2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    iget-wide v11, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 11
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 12
    iget-object v2, v2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move v6, v10

    move-wide v7, v11

    move v9, p0

    .line 13
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 14
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Audio queueInputBuffer size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ts "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " flag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    const-string v1, " flag "

    const-string v2, " ts "

    const-string v3, " size "

    const-string v4, "VideoRecorder"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio onOutputBufferAvailable "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " offset "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v5, v5, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string p3, "Audio got EOS"

    .line 4
    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p3}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 6
    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-virtual {p1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string v0, "Audio got BUFFER_FLAG_CODEC_CONFIG"

    .line 8
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v6, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string v0, "Audio got BUFFER_FLAG_KEY_FRAME"

    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_6

    .line 13
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$200(Lcom/xiaomi/fenshen/VideoRecorder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$400(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/media/MediaMuxer;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v7}, Lcom/xiaomi/fenshen/VideoRecorder;->access$700(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result v7

    invoke-virtual {v5, v7, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 16
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio writeSampleData info.ts "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_4
    new-instance v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {v3, v5}, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    .line 19
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 20
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v7, v5, [B

    .line 21
    invoke-virtual {v0, v7, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 22
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v7, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 23
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    iput-object p3, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$800(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    .line 28
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio getOutputBuffer size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_6
    invoke-virtual {p1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio onOutputFormatChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p1}, Lcom/xiaomi/fenshen/VideoRecorder;->access$700(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-virtual {p0, p2}, Lcom/xiaomi/fenshen/VideoRecorder;->addTrack(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
