.class public Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;
.super Ljava/lang/Object;
.source "XiaomiAlgoVideoInterpolatorImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;,
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;,
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    }
.end annotation


# static fields
.field public static final DECODE_THREAD_NAME:Ljava/lang/String; = "DecodeThread"

.field public static final ENCODE_THREAD_NAME:Ljava/lang/String; = "EncodeThread"

.field public static final END_NORMAL_SPEED_VIDEO_FRAME:I = 0x78

.field public static final FRAME_RATE_NORMAL:I = 0x1e

.field public static final INTERPOLATOR_ACCURACY:I = 0x1

.field public static final MAX_BUFFER_SIZE:I = 0xf

.field public static final START_NORMAL_SPEED_VIDEO_FRAME:I = 0x1d

.field public static final TAG:Ljava/lang/String; = "XiaomiAlogVideoInterpolatorImp"

.field public static final TOTAL_FRAME_SIZE:I = 0x1a9


# instance fields
.field public mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

.field public mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

.field public mDegree:I

.field public final mDstPath:Ljava/lang/String;

.field public mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

.field public mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

.field public mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

.field public mFrameIndexBeginInterpolation:I

.field public mFrameIndexStopInterpolation:I

.field public mFrameMapping:[I

.field public mFrameSizeInterpolation:I

.field public mNeedDump:Z

.field public mOriginFPS:I

.field public mOriginVideoTrack:I

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipSizeOrigin2Normal:I

.field public mSkipSizeTarget2Normal:I

.field public mSkipSizeTarget2Origin:I

.field public final mSrcPath:Ljava/lang/String;

.field public final mSupportEditor:Z

.field public mTargetFPS:I

.field public mYuvFile:Ljava/io/File;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIJLandroid/graphics/Bitmap;[FZZ)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x3c0

    .line 2
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    const/16 v5, 0xf0

    .line 3
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginFPS:I

    const/16 v6, 0x1e

    const/16 v7, 0x3c0

    .line 4
    div-int/2addr v7, v6

    iput v7, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Normal:I

    .line 5
    div-int/2addr v4, v5

    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Origin:I

    .line 6
    div-int/2addr v5, v6

    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    .line 7
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameSizeInterpolation:I

    .line 8
    iput v6, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    const/16 v4, 0x186

    .line 9
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    .line 10
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v4, 0x1a9

    new-array v4, v4, [I

    .line 11
    iput-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    const/4 v4, 0x0

    .line 12
    iput-boolean v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mNeedDump:Z

    const/4 v4, 0x0

    .line 13
    iput-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mYuvFile:Ljava/io/File;

    .line 14
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginFPS:I

    .line 15
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    .line 16
    div-int/lit8 v5, v2, 0x1e

    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Normal:I

    .line 17
    div-int/2addr v2, v1

    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Origin:I

    .line 18
    div-int/2addr v1, v6

    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    .line 19
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameSizeInterpolation:I

    mul-int/lit8 v1, p5, 0x1e

    .line 20
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    add-int v1, p5, p6

    mul-int/2addr v1, v6

    .line 21
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    move/from16 v1, p12

    .line 22
    iput-boolean v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    move-object v1, p4

    .line 23
    iput-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    .line 24
    iput-object v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSrcPath:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    const-string v2, "DecodeThread"

    invoke-direct {v1, v2}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 26
    new-instance v1, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    const-string v2, "EncodeThread"

    invoke-direct {v1, v2}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 27
    new-instance v1, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    iget-object v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-static {v2}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    move-wide/from16 v5, p8

    invoke-direct {v1, p3, v2, v5, v6}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;J)V

    iput-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    .line 28
    invoke-virtual {v1}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object v1

    .line 29
    iget v2, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDegree:I

    .line 30
    new-instance v2, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    iget v3, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v5, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v6, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iget-object v7, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    iget-object v8, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    iget-object v9, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 31
    invoke-static {v9}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v9

    move-object p1, v2

    move p2, v3

    move p3, v5

    move p4, v6

    move-object p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    invoke-direct/range {p1 .. p7}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    .line 32
    iget-object v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    new-instance v3, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;

    invoke-direct {v3, p0, v1}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    invoke-virtual {v2, v3}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->setListener(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;)V

    .line 33
    iget-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    new-instance v2, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;

    invoke-direct {v2, p0, v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->setListener(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync$EncodeUpdateListener;)V

    .line 34
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->initMapping()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->notifyTaskError()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->getBufferFromQueue()Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mNeedDump:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mYuvFile:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->notifyTaskFinish()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->deleteBadFile()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    return p0
.end method

.method public static synthetic access$400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Ljava/nio/ByteBuffer;IIJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putBufferToQueue(Ljava/nio/ByteBuffer;IIJI)V

    return-void
.end method

.method public static synthetic access$600(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;[BJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putBufferToQueue([BJI)V

    return-void
.end method

.method public static synthetic access$700(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    return p0
.end method

.method public static synthetic access$800(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    return p0
.end method

.method public static synthetic access$900(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putEndFlagToQueue()V

    return-void
.end method

.method private addMetaData()V
    .locals 7

    const-string v0, "jcodec"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jcodec/movtool/MetadataEditor;->createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/jcodec/movtool/MetadataEditor;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "com.xiaomi.capture_framerate"

    .line 4
    iget v6, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    invoke-static {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginVideoTrack:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v5, "com.xiaomi.capture_origin_track"

    .line 6
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginVideoTrack:I

    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object p0

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v1, p0}, Lorg/jcodec/movtool/MetadataEditor;->save(Z)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cost: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "error \n"

    .line 9
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private addOriginVideoToTrack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tempResult"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSrcPath:Ljava/lang/String;

    iget v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDegree:I

    invoke-static {v2, v3, v4, v5}, Lcom/miui/extravideo/common/MediaUtils;->mixVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginVideoTrack:I

    const/4 p0, -0x1

    if-eq v2, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_0
    return-void
.end method

.method private deleteBadFile()V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getBufferFromQueue()Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initMapping()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTaskError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->addOriginVideoToTrack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    .line 5
    iput-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->addMetaData()V

    .line 7
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onEncodeFinish()V

    .line 9
    iput-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_2
    return-void
.end method

.method private putBufferToQueue(Ljava/nio/ByteBuffer;IIJI)V
    .locals 1

    .line 8
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x3

    .line 9
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    iput-object p2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->data:[B

    .line 10
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 13
    iput p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 14
    iput-wide p4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->presentationTimeUs:J

    .line 15
    iput p6, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->representativeIndex:I

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private putBufferToQueue([BJI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    .line 2
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->data:[B

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 4
    iput-wide p2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->presentationTimeUs:J

    .line 5
    iput p4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->representativeIndex:I

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private putEndFlagToQueue()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doDecodeAndEncode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    invoke-virtual {v0, v1}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->setSkipFrameTimes(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->start()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-static {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$1;

    invoke-direct {v1, p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$1;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 8
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    return-void
.end method

.method public setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    return-void
.end method
