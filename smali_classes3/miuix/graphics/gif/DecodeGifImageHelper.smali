.class public Lmiuix/graphics/gif/DecodeGifImageHelper;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;,
        Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    }
.end annotation


# static fields
.field public static final MESSAGE_WHAT_DECODE_FRAMES:I = 0x1


# instance fields
.field public mDecodeFrameHandler:Landroid/os/Handler;

.field public mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

.field public mDecodedAllFrames:Z

.field public mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mGifSource:Lmiuix/io/ResettableInputStream;

.field public mMaxDecodeSize:J

.field public mMaxFrames:I

.field public mRealFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 2
    iput-wide v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/graphics/gif/DecodeGifImageHelper;)Lmiuix/graphics/gif/DecodeGifFrames;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    return-object p0
.end method

.method private calcFrameIndex(I)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    if-nez p0, :cond_0

    return p1

    .line 2
    :cond_0
    rem-int/2addr p1, p0

    return p1
.end method

.method public static decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v2, Lmiuix/graphics/gif/GifDecoder;

    invoke-direct {v2}, Lmiuix/graphics/gif/GifDecoder;-><init>()V

    iput-object v2, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 6
    invoke-virtual {v2, p3}, Lmiuix/graphics/gif/GifDecoder;->setStartFrame(I)V

    .line 7
    invoke-virtual {v2, p1, p2}, Lmiuix/graphics/gif/GifDecoder;->setMaxDecodeSize(J)V

    .line 8
    invoke-virtual {v2, p0}, Lmiuix/graphics/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 9
    :cond_0
    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private getLastFrameIndex()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 2
    iget p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    return p0
.end method


# virtual methods
.method public decodeFrom(I)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    iget-wide v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v0, v1, v2, p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p0

    return-object p0
.end method

.method public decodeNextFrames()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-gt v1, v5, :cond_0

    if-gt v0, v3, :cond_1

    :goto_0
    move v2, v4

    goto :goto_1

    .line 3
    :cond_0
    div-int/2addr v1, v3

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 4
    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v0

    .line 5
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->decode(I)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/DecodeGifFrames;->destroy()V

    :cond_0
    return-void
.end method

.method public firstDecodeNextFrames()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiuix/graphics/gif/DecodeGifImageHelper$1;-><init>(Lmiuix/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    iget-wide v2, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v1, v2, v3, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->createInstance(Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)Lmiuix/graphics/gif/DecodeGifFrames;

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    .line 3
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    return-void
.end method

.method public handleDecodeFramesResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .locals 9

    .line 1
    iget-boolean v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    invoke-virtual {v3}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    iget v3, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "Thread#%d: decoded %d frames [%s] [%d]"

    .line 4
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "dumpFrameIndex"

    .line 5
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getRealFrameCount()I

    move-result p1

    iput p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    .line 8
    :cond_1
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v2

    :goto_0
    if-ge v1, p1, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v1

    .line 12
    invoke-direct {p0, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v6

    .line 13
    iget-object v7, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v8, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v8, v3, v5, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_1
    return v1
.end method
