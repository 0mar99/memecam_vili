.class public abstract Lcom/android/zxing/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Decoder"


# instance fields
.field public volatile mDecoding:Z

.field public final mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mLastDecodeTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getDecodeInterval()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDecodeMaxCount()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public init(I)V
    .locals 0

    return-void
.end method

.method public isNeedImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 7

    .line 1
    iget-boolean p1, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->getDecodeMaxCount()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->getDecodeMaxCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    iget-wide v3, p0, Lcom/android/zxing/Decoder;->mLastDecodeTime:J

    sub-long v3, v1, v3

    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->getDecodeInterval()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    return v0

    .line 5
    :cond_2
    iput-wide v1, p0, Lcom/android/zxing/Decoder;->mLastDecodeTime:J

    .line 6
    iget-object p1, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needPreviewFrame: preview frame buffer received, mDecodingCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Decoder"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewFrame(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public startDecode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    return-void
.end method

.method public stopDecode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    return-void
.end method
