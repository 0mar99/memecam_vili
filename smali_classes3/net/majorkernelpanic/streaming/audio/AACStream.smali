.class public Lnet/majorkernelpanic/streaming/audio/AACStream;
.super Lnet/majorkernelpanic/streaming/audio/AudioStream;
.source "AACStream.java"


# static fields
.field public static final AUDIO_SAMPLING_RATES:[I

.field public static final TAG:Ljava/lang/String; = "AACStream"


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mSamplingRateIndex:I

.field public mSessionDescription:Ljava/lang/String;

.field public mThread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 4
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic access$000(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$100(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->configure()V

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v2, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    aget v2, v2, v1

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    if-ne v2, v3, :cond_0

    .line 5
    iput v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v2, 0xc

    const/16 v3, 0x8

    if-le v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/16 v2, 0x3e80

    iput v2, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    .line 7
    iput v3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    .line 8
    :cond_2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;-><init>()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    .line 10
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    iget v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iget v5, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    invoke-virtual {v1, v2, v4, v5}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setDestination(Ljava/net/InetAddress;II)V

    .line 11
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object v1

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iget-byte v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    invoke-virtual {v1, v2, v4}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_3
    const/16 v1, 0x1000

    .line 12
    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m=audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object v3

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " RTP/AVP 96\r\na=rtpmap:96 mpeg4-generic/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\na=fmtp:96 streamtype=5; profile-level-id=15; mode=AAC-hbr; config="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; SizeLength=13; IndexLength=3; IndexDeltaLength=3;\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to call configure() first !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->configure()V

    .line 3
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startStreaming()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/2addr v0, v1

    .line 2
    new-instance v8, Landroid/media/AudioRecord;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v4, v2, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const/4 v3, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object v2, v8

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v8, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    const-string v2, "audio/mp4a-latm"

    .line 3
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    .line 5
    invoke-virtual {v3, v4, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x1

    const-string v4, "channel-count"

    .line 7
    invoke-virtual {v3, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const-string v5, "sample-rate"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "aac-profile"

    .line 9
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    .line 10
    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 12
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 13
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 14
    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v1, v3}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;-><init>(Landroid/media/MediaCodec;)V

    .line 15
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lnet/majorkernelpanic/streaming/audio/AACStream$1;

    invoke-direct {v5, p0, v3, v0}, Lnet/majorkernelpanic/streaming/audio/AACStream$1;-><init>(Lnet/majorkernelpanic/streaming/audio/AACStream;[Ljava/nio/ByteBuffer;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 18
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    check-cast v0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v0, v3}, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->setSamplingRate(I)V

    .line 19
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Ljava/io/InputStream;)V

    .line 20
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    .line 21
    iput-boolean v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 4
    :try_start_2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    .line 5
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
