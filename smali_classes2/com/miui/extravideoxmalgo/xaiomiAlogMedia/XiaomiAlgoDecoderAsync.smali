.class public Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;
.super Ljava/lang/Object;
.source "XiaomiAlgoDecoderAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;,
        Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$CustomCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XiaomiAlgoDecoderAsync"


# instance fields
.field public mColorFormat:I

.field public mDecodeFrameIndex:I

.field public mDecoder:Landroid/media/MediaCodec;

.field public mDuration:J

.field public mHandler:Landroid/os/Handler;

.field public mInitException:Ljava/lang/Exception;

.field public mListener:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;

.field public final mMediaExtractor:Landroid/media/MediaExtractor;

.field public final mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

.field public mSkipFrameTimes:I

.field public final mTargetFile:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;J)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mSkipFrameTimes:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecodeFrameIndex:I

    const/16 v1, 0x15

    .line 5
    iput v1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mColorFormat:I

    .line 6
    iput-object p2, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mHandler:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mTargetFile:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/miui/extravideo/common/MediaParamsHolder;

    invoke-direct {p1}, Lcom/miui/extravideo/common/MediaParamsHolder;-><init>()V

    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    .line 9
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 10
    new-instance p1, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$CustomCallback;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$CustomCallback;-><init>(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$1;)V

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mTargetFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    move v2, v0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 13
    iget-object v3, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 14
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16
    iget-object v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    const-string v6, "width"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    .line 17
    iget-object v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    const-string v6, "height"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    .line 18
    iget-object v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    const-string v6, "rotation-degrees"

    invoke-static {v3, v6, v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    const-string v5, "durationUs"

    .line 19
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDuration:J

    .line 20
    iget-object v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    iput-object v4, v5, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    .line 21
    iget-object v5, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v5, 0x0

    cmp-long v2, p3, v5

    if-lez v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p3, p4, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 23
    :cond_0
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    .line 24
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 25
    sget-object p1, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mMediaExtractormDuration  =  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDuration:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    sget-object p2, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mDecoder.Exception\uff1a   "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mInitException:Ljava/lang/Exception;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)Landroid/media/MediaExtractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecodeFrameIndex:I

    return p0
.end method

.method public static synthetic access$308(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecodeFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecodeFrameIndex:I

    return v0
.end method

.method public static synthetic access$400(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mListener:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mSkipFrameTimes:I

    return p0
.end method

.method public static synthetic access$502(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mSkipFrameTimes:I

    return p1
.end method

.method public static final getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method


# virtual methods
.method public getColorFormat()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mColorFormat:I

    return p0
.end method

.method public getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    return-void
.end method

.method public seekToEndTimer(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public setColorFormat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mColorFormat:I

    return-void
.end method

.method public setListener(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mListener:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;

    return-void
.end method

.method public setSkipFrameTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mSkipFrameTimes:I

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mInitException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mListener:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$1;

    invoke-direct {v1, p0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$1;-><init>(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->mListener:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;->onDecodeStop(Z)V

    :cond_1
    :goto_0
    return-void
.end method
