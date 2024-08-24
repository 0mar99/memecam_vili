.class public Lcom/android/camera/fragment/music/MusicCut;
.super Ljava/lang/Object;
.source "MusicCut.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicCut"


# instance fields
.field public SAMPLE_SIZE:I

.field public mBitRate:I

.field public mLoopNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    .line 1
    aput-byte v0, p1, p0

    const/4 p0, 0x1

    const/4 v0, -0x7

    .line 2
    aput-byte v0, p1, p0

    const/16 p0, 0x50

    int-to-byte p0, p0

    const/4 v0, 0x2

    .line 3
    aput-byte p0, p1, v0

    shr-int/lit8 p0, p2, 0xb

    const/16 v0, 0x80

    add-int/2addr v0, p0

    int-to-byte p0, v0

    const/4 v0, 0x3

    .line 4
    aput-byte p0, p1, v0

    and-int/lit16 p0, p2, 0x7ff

    shr-int/2addr p0, v0

    int-to-byte p0, p0

    const/4 v0, 0x4

    .line 5
    aput-byte p0, p1, v0

    and-int/lit8 p0, p2, 0x7

    const/4 p2, 0x5

    shl-int/2addr p0, p2

    add-int/lit8 p0, p0, 0x1f

    int-to-byte p0, p0

    .line 6
    aput-byte p0, p1, p2

    const/4 p0, 0x6

    const/4 p2, -0x4

    .line 7
    aput-byte p2, p1, p0

    return-void
.end method

.method private convertKbpsToBpm(I)J
    .locals 2

    int-to-long p0, p1

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x8

    .line 1
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private getAudioTrack(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 2
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getWavHeaderByte(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo p0, "read wav header byte"

    .line 1
    sget-object v0, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    const-string v1, "getWavHeaderByte"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2c

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    sget-object v1, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 6
    :goto_0
    :try_start_3
    sget-object v2, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_0
    return-object v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :cond_1
    throw p1
.end method


# virtual methods
.method public clipMp3(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Music cut failed"

    .line 1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".aac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    :try_start_0
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-virtual {v7, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v7}, Lcom/android/camera/fragment/music/MusicCut;->getAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v8, :cond_0

    .line 6
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    return v6

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual {v7, v8}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 8
    iget v8, v0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    .line 10
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/music/MusicCut;->getWavHeaderByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_0
    const-wide/16 v4, 0x3e8

    mul-long v10, p3, v4

    mul-long v4, v4, p5

    move v1, v6

    .line 11
    :goto_1
    iget v12, v0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    if-ge v1, v12, :cond_7

    .line 12
    invoke-virtual {v7, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 13
    :goto_2
    invoke-virtual {v7, v8, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 14
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    cmp-long v14, v14, v4

    if-lez v14, :cond_2

    goto :goto_3

    :cond_2
    if-gtz v12, :cond_3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    sget-object v14, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readSampleData sampleSize="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    move v13, v6

    :goto_4
    if-eqz v13, :cond_5

    const/4 v14, 0x7

    goto :goto_5

    :cond_5
    move v14, v6

    :goto_5
    add-int v15, v12, v14

    .line 17
    new-array v6, v15, [B

    if-eqz v13, :cond_6

    .line 18
    invoke-direct {v0, v6, v15}, Lcom/android/camera/fragment/music/MusicCut;->addADTStoPacket([BI)V

    .line 19
    :cond_6
    invoke-virtual {v8, v6, v14, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v9, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 21
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    goto :goto_2

    .line 23
    :cond_7
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 24
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 25
    sget-object v0, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    move-object v9, v5

    :goto_6
    move-object v5, v7

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v9, v5

    :goto_7
    move-object v5, v7

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v9, v5

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v9, v5

    .line 26
    :goto_8
    :try_start_5
    sget-object v1, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    :cond_8
    if-eqz v9, :cond_9

    .line 28
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_9
    const/4 v1, 0x0

    return v1

    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v5, :cond_a

    .line 29
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    :cond_a
    if-eqz v9, :cond_b

    .line 30
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 31
    :cond_b
    throw v0
.end method

.method public getLoopNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return p0
.end method

.method public setLoopNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method
