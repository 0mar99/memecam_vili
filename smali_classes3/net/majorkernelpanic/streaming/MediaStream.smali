.class public abstract Lnet/majorkernelpanic/streaming/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"

# interfaces
.implements Lnet/majorkernelpanic/streaming/Stream;


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaStream"


# instance fields
.field public mChannelIdentifier:B

.field public mConfigured:Z

.field public mDestination:Ljava/net/InetAddress;

.field public mMediaCodec:Landroid/media/MediaCodec;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

.field public mRtcpPort:I

.field public mRtpPort:I

.field public mStreaming:Z

.field public mTTL:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z

    .line 4
    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    .line 5
    iput-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    .line 6
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x40

    .line 7
    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    return-void
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 4
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

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    iget v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iget v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setDestination(Ljava/net/InetAddress;II)V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iget-byte v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    invoke-virtual {v0, v1, v2}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be called while streaming."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitrate()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getBitrate()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDestinationPorts()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getLocalPorts()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getLocalPorts()[I

    move-result-object p0

    return-object p0
.end method

.method public getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    return-object p0
.end method

.method public getSSRC()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getSSRC()I

    move-result p0

    return p0
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
.end method

.method public isStreaming()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return p0
.end method

.method public setDestinationAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    return-void
.end method

.method public setDestinationPorts(I)V
    .locals 2

    .line 1
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    .line 3
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    add-int/2addr p1, v1

    .line 5
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    :goto_0
    return-void
.end method

.method public setDestinationPorts(II)V
    .locals 0

    .line 6
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    .line 7
    iput p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    .line 2
    iput-byte p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setTimeToLive(I)V

    .line 4
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->startStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ports set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ip address set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract startStreaming()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->stop()V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
