.class public Lmiuix/graphics/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field public static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field public act:[I

.field public bgColor:I

.field public bgIndex:I

.field public block:[B

.field public blockSize:I

.field public calledOnce:Z

.field public delay:I

.field public dest:[I

.field public dispose:I

.field public frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lmiuix/graphics/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field public height:I

.field public ih:I

.field public image:Landroid/graphics/Bitmap;

.field public in:Ljava/io/BufferedInputStream;

.field public interlace:Z

.field public iw:I

.field public ix:I

.field public iy:I

.field public lastBgColor:I

.field public lastBitmap:Landroid/graphics/Bitmap;

.field public lastDispose:I

.field public lct:[I

.field public lctFlag:Z

.field public lctSize:I

.field public loopCount:I

.field public lrh:I

.field public lrw:I

.field public lrx:I

.field public lry:I

.field public mCancel:Z

.field public mDecodeBmSize:J

.field public mDecodeToTheEnd:Z

.field public mDecodedFrames:I

.field public mMaxDecodeSize:J

.field public mStartFrame:I

.field public pixelAspect:I

.field public pixelStack:[B

.field public pixels:[B

.field public prefix:[S

.field public status:I

.field public suffix:[B

.field public transIndex:I

.field public transparency:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 2
    iput-wide v0, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 6
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 7
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 8
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 9
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 10
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 11
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1
    invoke-static {p0}, Lmiuix/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "GIF"

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public static readOneByte(Ljava/io/InputStream;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private requestCancel()V
    .locals 0

    return-void
.end method


# virtual methods
.method public decodeBitmapData()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    iget v2, v0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    mul-int/2addr v1, v2

    .line 2
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 3
    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 4
    :cond_1
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    new-array v2, v3, [S

    .line 5
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 6
    :cond_2
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    if-nez v2, :cond_3

    new-array v2, v3, [B

    .line 7
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 8
    :cond_3
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1001

    new-array v2, v2, [B

    .line 9
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 10
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_5

    .line 11
    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    .line 12
    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v14, v2

    move/from16 v16, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    const/4 v3, -0x1

    move v9, v7

    :goto_1
    if-ge v11, v1, :cond_11

    if-nez v12, :cond_10

    if-ge v13, v14, :cond_8

    if-nez v17, :cond_7

    .line 13
    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    move-result v17

    if-gtz v17, :cond_6

    goto/16 :goto_5

    :cond_6
    const/16 v18, 0x0

    .line 14
    :cond_7
    iget-object v10, v0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :cond_8
    const/4 v10, -0x1

    and-int v4, v15, v16

    shr-int/2addr v15, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_11

    if-ne v4, v6, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne v4, v5, :cond_a

    move v14, v2

    move v9, v7

    move/from16 v16, v8

    move v3, v10

    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-ne v3, v10, :cond_b

    .line 15
    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto :goto_2

    :cond_b
    move/from16 v21, v2

    if-ne v4, v9, :cond_c

    .line 16
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    move v12, v10

    goto :goto_3

    :cond_c
    move/from16 v22, v4

    move/from16 v2, v22

    :goto_3
    if-le v2, v5, :cond_d

    .line 17
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v5

    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v12

    .line 18
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    aget-short v2, v4, v2

    move v12, v10

    move/from16 v5, v19

    goto :goto_3

    :cond_d
    move/from16 v19, v5

    .line 19
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_e

    goto :goto_5

    .line 20
    :cond_e
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v23, v6

    int-to-byte v6, v2

    aput-byte v6, v5, v12

    .line 21
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    .line 22
    aput-byte v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v16

    const/16 v5, 0x1000

    if-nez v3, :cond_f

    if-ge v9, v5, :cond_f

    add-int/lit8 v14, v14, 0x1

    add-int v16, v16, v9

    :cond_f
    move v12, v10

    move/from16 v3, v22

    goto :goto_4

    :cond_10
    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v4, v19

    move/from16 v19, v5

    const/16 v5, 0x1000

    move v2, v4

    :goto_4
    const/4 v4, -0x1

    add-int/2addr v12, v4

    .line 23
    iget-object v6, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v12

    aput-byte v4, v6, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v5, v19

    move/from16 v6, v23

    const/4 v4, 0x1

    move/from16 v19, v2

    move/from16 v2, v21

    goto/16 :goto_1

    :cond_11
    :goto_5
    move/from16 v2, v20

    :goto_6
    if-ge v2, v1, :cond_12

    .line 24
    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public err()Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget p1, p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 4
    :cond_0
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    return p0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    rem-int/2addr p1, v0

    .line 3
    iget-object p0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget-object p0, p0, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFrameCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    return p0
.end method

.method public getLoopCount()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    return p0
.end method

.method public getRealFrameCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    return p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    .line 4
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public isDecodeToTheEnd()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    return p0
.end method

.method public read()I
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 2
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->init()V

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readHeader()V

    .line 7
    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readContents()V

    .line 9
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-gez p1, :cond_1

    .line 10
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 12
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    goto :goto_0

    .line 13
    :cond_0
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 14
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    const/4 p1, 0x3

    .line 16
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 17
    :cond_2
    iget p0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    return p0

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "decoder cannot be called more than once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readBitmap()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    .line 3
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    .line 5
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6
    :goto_0
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->lctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v1, v4

    .line 7
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->lctSize:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 8
    :goto_1
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    .line 9
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_2

    .line 10
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lctSize:I

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    .line 11
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 13
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_3

    .line 14
    iput v3, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    .line 15
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    aget v4, v0, v1

    .line 17
    aput v3, v0, v1

    move v3, v4

    .line 18
    :cond_4
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    if-nez v0, :cond_5

    .line 19
    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 20
    :cond_5
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 21
    :cond_6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->decodeBitmapData()V

    .line 22
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 23
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 24
    :cond_7
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_8

    return-void

    .line 25
    :cond_8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->setPixels()V

    .line 26
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    if-lt v0, v1, :cond_9

    .line 27
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget-object v4, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    invoke-direct {v1, v4, v5}, Lmiuix/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    :cond_9
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 29
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v0, :cond_a

    .line 30
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    aput v3, v0, v1

    .line 31
    :cond_a
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->resetFrame()V

    return-void
.end method

.method public readBlock()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    :goto_0
    :try_start_0
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    iget v3, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    :cond_2
    return v1
.end method

.method public readColorTable(I)[I
    .locals 8

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v1, v2, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    const/16 p0, 0x100

    new-array p0, p0, [I

    move v0, v2

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, v0, 0x1

    .line 5
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v2, 0x1

    const/high16 v7, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    .line 8
    aput v0, p0, v2

    move v0, v5

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_2
    return-object p0
.end method

.method public readContents()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3
    iget-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_2

    .line 5
    iput v4, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v4, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    :goto_1
    move v1, v4

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBitmap()V

    .line 9
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 10
    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    .line 11
    :cond_4
    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-wide v5, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    if-eq v2, v4, :cond_b

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_a

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_9

    const/16 v3, 0xff

    if-eq v2, v3, :cond_6

    .line 13
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    const-string v2, ""

    move v3, v0

    :goto_2
    const/16 v4, 0xb

    if-ge v3, v4, :cond_7

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const-string v3, "NETSCAPE2.0"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readNetscapeExt()V

    goto/16 :goto_0

    .line 18
    :cond_8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 19
    :cond_9
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 20
    :cond_a
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readGraphicControlExt()V

    goto/16 :goto_0

    .line 21
    :cond_b
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    :cond_c
    :goto_3
    return-void
.end method

.method public readGraphicControlExt()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    .line 3
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    iput-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    if-gtz v0, :cond_2

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 8
    :cond_2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    .line 9
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    return-void
.end method

.method public readHeader()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "GIF"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readLSD()V

    .line 6
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    .line 8
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    :cond_3
    return-void
.end method

.method public readLSD()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 2
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 3
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    .line 6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    .line 7
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->pixelAspect:I

    return-void
.end method

.method public readNetscapeExt()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 2
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 4
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    .line 6
    :cond_1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public readShort()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public recycle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lmiuix/graphics/gif/GifDecoder$GifFrame;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestCancelDecode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 2
    invoke-direct {p0}, Lmiuix/graphics/gif/GifDecoder;->requestCancel()V

    return-void
.end method

.method public resetFrame()V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 2
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    .line 3
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    .line 4
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    .line 5
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    .line 6
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 7
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 9
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 10
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public setMaxDecodeSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    return-void
.end method

.method public setPixels()V
    .locals 13

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_5

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    sub-int/2addr v0, v4

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 6
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iput-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    const/4 v7, 0x0

    iget v11, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    move v8, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 10
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v5

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 12
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    if-ne v0, v3, :cond_5

    .line 13
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-nez v0, :cond_3

    .line 14
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 15
    :goto_1
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v5, v6

    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    add-int/2addr v5, v6

    move v6, v2

    .line 16
    :goto_2
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    if-ge v6, v7, :cond_5

    .line 17
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    add-int/2addr v7, v5

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_4

    .line 18
    iget-object v9, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    aput v0, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 19
    :cond_4
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    move v5, v2

    move v6, v4

    .line 20
    :goto_4
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    if-ge v2, v7, :cond_e

    .line 21
    iget-boolean v8, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x4

    if-lt v5, v7, :cond_9

    add-int/lit8 v6, v6, 0x1

    if-eq v6, v3, :cond_8

    if-eq v6, v1, :cond_7

    if-eq v6, v8, :cond_6

    goto :goto_5

    :cond_6
    move v0, v3

    move v5, v4

    goto :goto_5

    :cond_7
    move v5, v3

    move v0, v8

    goto :goto_5

    :cond_8
    move v5, v8

    :cond_9
    :goto_5
    add-int v7, v5, v0

    goto :goto_6

    :cond_a
    move v7, v5

    move v5, v2

    .line 22
    :goto_6
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    add-int/2addr v5, v8

    .line 23
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    if-ge v5, v8, :cond_d

    .line 24
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v5, v8

    .line 25
    iget v9, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    add-int/2addr v9, v5

    .line 26
    iget v10, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    add-int/2addr v10, v9

    add-int v11, v5, v8

    if-ge v11, v10, :cond_b

    add-int v10, v5, v8

    .line 27
    :cond_b
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    mul-int/2addr v5, v2

    :goto_7
    if-ge v9, v10, :cond_d

    .line 28
    iget-object v8, p0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    .line 29
    iget-object v8, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    aget v5, v8, v5

    if-eqz v5, :cond_c

    .line 30
    iget-object v8, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    aput v5, v8, v9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    move v5, v7

    goto :goto_4

    .line 31
    :cond_e
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    if-gt v0, v1, :cond_f

    .line 32
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 33
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_f
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v2, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setStartFrame(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    return-void
.end method

.method public skip()V
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 2
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
