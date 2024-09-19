.class public Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "MovieHeaderBox.java"


# instance fields
.field public created:J

.field public duration:J

.field public matrix:[I

.field public modified:J

.field public nextTrackId:I

.field public rate:F

.field public timescale:I

.field public volume:F


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMovieHeaderBox(IJFFJJ[II)Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    .line 3
    iput-wide p1, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    .line 4
    iput p3, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->rate:F

    .line 5
    iput p4, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->volume:F

    .line 6
    iput-wide p5, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->created:J

    .line 7
    iput-wide p7, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->modified:J

    .line 8
    iput-object p9, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    .line 9
    iput p10, v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->nextTrackId:I

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mvhd"

    return-object v0
.end method

.method private readMatrix(Ljava/nio/ByteBuffer;)[I
    .locals 3

    const/16 p0, 0x9

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readRate(Ljava/nio/ByteBuffer;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x47800000    # 65536.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private readVolume(Ljava/nio/ByteBuffer;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x43800000    # 256.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private writeFixed1616(Ljava/nio/ByteBuffer;F)V
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    .line 1
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeFixed88(Ljava/nio/ByteBuffer;F)V
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    int-to-short p0, p0

    .line 1
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeMatrix(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    array-length v2, v2

    const/16 v3, 0x9

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    array-length p0, p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    if-ge p0, v3, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->created:J

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/TimeUtil;->toMovTime(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->modified:J

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/TimeUtil;->toMovTime(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->rate:F

    invoke-direct {p0, p1, v0}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->writeFixed1616(Ljava/nio/ByteBuffer;F)V

    .line 7
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->volume:F

    invoke-direct {p0, p1, v0}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->writeFixed88(Ljava/nio/ByteBuffer;F)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->writeMatrix(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->nextTrackId:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method public getCreated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->created:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    return-wide v0
.end method

.method public getMatrix()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    return-object p0
.end method

.method public getModified()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->modified:J

    return-wide v0
.end method

.method public getNextTrackId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->nextTrackId:I

    return p0
.end method

.method public getRate()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->rate:F

    return p0
.end method

.method public getTimescale()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    return p0
.end method

.method public getVolume()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->volume:F

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->created:J

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->modified:J

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->created:J

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->modified:J

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    .line 11
    :goto_0
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->readRate(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->rate:F

    .line 12
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->readVolume(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->volume:F

    const/16 v0, 0xa

    .line 13
    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    .line 14
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->readMatrix(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->matrix:[I

    const/16 v0, 0x18

    .line 15
    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->nextTrackId:I

    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported version"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->duration:J

    return-void
.end method

.method public setNextTrackId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->nextTrackId:I

    return-void
.end method

.method public setTimescale(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->timescale:I

    return-void
.end method
