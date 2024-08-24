.class public Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;
.super Ljava/lang/Object;
.source "XiaomiAlgoVideoInterpolatorImp.java"

# interfaces
.implements Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeUpdateListener"
.end annotation


# instance fields
.field public mBeginInterpolator:Z

.field public mDecodeIndex:I

.field public mEncodeBuffer:[B

.field public mFrameBuffer:[Ljava/nio/ByteBuffer;

.field public mHeight:I

.field public mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

.field public mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

.field public mPreviousFrame:[B

.field public mRepresentativeIndex:I

.field public mStopInterpolator:Z

.field public mWidth:I

.field public mYuvBuffer:[B

.field public mediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

.field public final synthetic this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;


# direct methods
.method public constructor <init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    .line 2
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 4
    iput-boolean p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mBeginInterpolator:Z

    .line 5
    iput-boolean p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mStopInterpolator:Z

    .line 6
    iput p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    .line 7
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    .line 8
    iput-object p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    .line 9
    iget v0, p2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iput v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    .line 10
    iget p2, p2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iput p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mHeight:I

    .line 11
    new-instance p2, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    iget v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mHeight:I

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;-><init>(III)V

    iput-object p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    .line 12
    iget p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    mul-int v0, p2, p2

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    const/4 v3, 0x2

    div-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mPreviousFrame:[B

    .line 13
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    mul-int/2addr p2, p2

    mul-int/2addr p2, v1

    div-int/2addr p2, v3

    invoke-static {p2}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v0, p1

    .line 14
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    iget p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    mul-int/2addr p2, p2

    mul-int/2addr p2, v1

    div-int/2addr p2, v3

    invoke-static {p2}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, p1, v2

    .line 15
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    iget p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    mul-int/2addr p2, p2

    mul-int/2addr p2, v1

    div-int/2addr p2, v3

    invoke-static {p2}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, p1, v3

    .line 16
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    mul-int/2addr p0, p0

    mul-int/2addr p0, v1

    div-int/2addr p0, v3

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    aput-object p0, p1, v1

    return-void
.end method

.method private initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    if-nez v0, :cond_1

    .line 4
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    :cond_1
    return-void
.end method

.method private initYuvBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    :cond_0
    return-void
.end method

.method private notifyEncodeStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->stop()V

    .line 2
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$1200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->release()V

    .line 2
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$1100(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method


# virtual methods
.method public onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 10

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->initYuvBuffer()V

    .line 3
    iget-object p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mEncodeBuffer:[B

    array-length p2, p1

    if-lez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->getColorFormat()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/miui/extravideo/common/MediaColorConvertUtils;->convertDecodeColorToEncode([B[BLcom/miui/extravideo/common/MediaParamsHolder;I)V

    .line 7
    iget-boolean p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mBeginInterpolator:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;

    iget-object v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mPreviousFrame:[B

    iget-object v3, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    aget-object v4, p1, p2

    aget-object v5, p1, v0

    const/4 v6, 0x2

    aget-object v6, p1, v6

    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget-object v8, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    invoke-virtual/range {v1 .. v8}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->interpolatorFrame([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    move p1, p2

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 10
    iget-object v3, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    aget-object v4, v1, p1

    iget v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mWidth:I

    iget v6, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mHeight:I

    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    invoke-static {v3}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->getFrameRate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/extravideo/common/MediaUtils;->computePresentationTime(II)J

    move-result-wide v7

    iget v9, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    invoke-static/range {v3 .. v9}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$500(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Ljava/nio/ByteBuffer;IIJI)V

    .line 11
    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 12
    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mPreviousFrame:[B

    array-length v2, p1

    invoke-static {p1, p2, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    invoke-static {p1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->getFrameRate()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/extravideo/common/MediaUtils;->computePresentationTime(II)J

    move-result-wide v2

    iget v4, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    invoke-static {p1, v1, v2, v3, v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$600(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;[BJI)V

    .line 15
    iget p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 16
    iget p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mRepresentativeIndex:I

    .line 17
    :goto_1
    iget p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$700(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_2

    .line 18
    iput-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mBeginInterpolator:Z

    .line 19
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mPreviousFrame:[B

    array-length v0, p1

    invoke-static {p1, p2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 20
    :cond_2
    iget p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mDecodeIndex:I

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {v1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$800(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_3

    .line 21
    iput-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mStopInterpolator:Z

    .line 22
    iput-boolean p2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mBeginInterpolator:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public onDecodeStop(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->release()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$900(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->release()V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->notifyEncodeStop()V

    .line 3
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$1000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V

    return-void
.end method

.method public onFrameDecodeBegin(IJ)I
    .locals 2

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mBeginInterpolator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mStopInterpolator:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->seekToEndTimer(Ljava/lang/Long;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mStopInterpolator:Z

    return p1

    :cond_2
    const/16 p2, 0x78

    if-le p1, p2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    invoke-static {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->access$300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public onOutputFormatChange(Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    invoke-virtual {p0, p1}, Lcom/miui/extravideo/common/MediaParamsHolder;->setFormat(Landroid/media/MediaFormat;)V

    return-void
.end method
