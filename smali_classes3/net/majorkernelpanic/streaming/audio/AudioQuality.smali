.class public Lnet/majorkernelpanic/streaming/audio/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# static fields
.field public static final DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;


# instance fields
.field public bitRate:I

.field public samplingRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/16 v1, 0x1f40

    const/16 v2, 0x7d00

    invoke-direct {v0, v1, v2}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;-><init>(II)V

    sput-object v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    .line 3
    iput p2, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    .locals 2

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    invoke-direct {v0, v1, p0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;-><init>(II)V

    return-object v0
.end method

.method public static parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    .locals 2

    .line 1
    sget-object v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

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

    iput v1, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    const/4 v1, 0x1

    .line 4
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I
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
    instance-of v0, p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    .line 3
    iget v0, p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

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

    const-string v1, "samplingRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
