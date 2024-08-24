.class public Lnet/majorkernelpanic/streaming/video/VideoQuality;
.super Ljava/lang/Object;
.source "VideoQuality.java"


# static fields
.field public static final DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;


# instance fields
.field public bitRate:I

.field public frameRate:I

.field public resX:I

.field public resY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    const/16 v3, 0x14

    const v4, 0x7a120

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    sput-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    .line 3
    iput p4, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    .line 4
    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    .line 5
    iput p2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 4

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iget v3, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    invoke-direct {v0, v1, v2, v3, p0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    return-object v0
.end method

.method public static parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 2

    .line 1
    sget-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "-"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    const/4 v1, 0x1

    .line 4
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    const/4 v1, 0x2

    .line 5
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    const/4 v1, 0x3

    .line 6
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    .line 3
    iget v0, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " px, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " kbps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
