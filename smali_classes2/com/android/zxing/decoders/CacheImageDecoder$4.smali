.class public Lcom/android/zxing/decoders/CacheImageDecoder$4;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/decoders/CacheImageDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/decoders/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/decoders/CacheImageDecoder$4;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CacheImage"

    .line 2
    iget-object v1, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/xiaomi/camera/base/ImageUtil;->getYUVFromPreviewImage(Landroid/media/Image;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/zxing/decoders/CacheImageDecoder$4;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-static {v2}, Lcom/android/zxing/decoders/CacheImageDecoder;->access$000(Lcom/android/zxing/decoders/CacheImageDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;

    if-eqz v3, :cond_1

    .line 5
    iget v2, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v4, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mHeight:I

    const/16 v5, 0x50

    invoke-static {v1, v2, v4, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->nv21CompressToJpeg([BIII)[B

    move-result-object v4

    .line 6
    iget v5, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v6, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v7, 0x1

    iget-object v1, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    iget-boolean v8, v1, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;->noGaussian:Z

    iget-object v9, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-interface/range {v3 .. v9}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->saveJpegAsThumbnail([BIIZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_1

    :cond_1
    const-string v1, "only camera module could anchor frame"

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    goto :goto_2

    :goto_0
    iget-object p1, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 11
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder$4;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-static {p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->access$100(Lcom/android/zxing/decoders/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    :cond_2
    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    .line 14
    :goto_2
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 15
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder$4;->this$0:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-static {p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->access$100(Lcom/android/zxing/decoders/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 16
    :cond_4
    iget-wide p0, p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const-wide/16 p0, 0x0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/decoders/CacheImageDecoder$4;->apply(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
