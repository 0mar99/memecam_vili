.class public Lcom/xiaomi/camera/imagecodec/ImagePool;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImagePool"

.field public static final TRIM_POOL_IMAGES_COUNT:I = 0xa


# instance fields
.field public final mAcquiredImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHoldImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/Image;",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public final mImageLock:Ljava/lang/Object;

.field public final mImageLongSparseArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageReaderHandlerThread:Landroid/os/HandlerThread;

.field public final mImageReaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageWriterHandlerThread:Landroid/os/HandlerThread;

.field public final mImageWriterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Landroid/media/ImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field public final mPooledImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mQueueSizeLock:Ljava/lang/Object;

.field public final mRowStrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "[I>;"
        }
    .end annotation
.end field

.field public sInited:Z

.field public sMaxAcquireImageCount:I

.field public sMaxDequeueImageCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    const/16 v0, 0x1e

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    .line 5
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageWriterHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageReaderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool$1;-><init>(Lcom/xiaomi/camera/imagecodec/ImagePool;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/imagecodec/ImagePool;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method private getImageWriterImageReaderNotCached(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/media/ImageWriter;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result p1

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 3
    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    invoke-static {v0, v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 12
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 4
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 9
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    invoke-static {v1, v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 13
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageWriter: ImageWriterMap.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 17
    sget-object p1, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageWriter: there are too much ImageWriter and ImageReader instances in map, size is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p1, p0}, Lcom/xiaomi/camera/imagecodec/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageWriter;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method public static makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class v0, Landroid/media/ImageWriter;

    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    const-class v3, Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "newInstance"

    .line 5
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    check-cast p2, Landroid/media/ImageWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p2, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v0, "could not find our method, try android method"

    invoke-static {p2, v0}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private needTrimPoolBuffer()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v0, :cond_0

    .line 5
    monitor-exit v1

    return v4

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 8
    monitor-exit v1

    return v4

    .line 9
    :cond_3
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "clear: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    .line 6
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageWriter;

    .line 9
    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 15
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception p0

    .line 16
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "clear ImagePool cause error: "

    invoke-static {v0, v1, p0}, Lcom/xiaomi/camera/imagecodec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_3
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v0, "clear: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAcquiredImageCountLocked()I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    .line 5
    sget-object p1, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnEmptyImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImage(J)Landroid/media/Image;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRowStride(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterImageReaderNotCached(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/util/Pair;

    move-result-object v1

    .line 5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/ImageWriter;

    .line 6
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/ImageReader;

    .line 7
    invoke-virtual {v2}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/Image;->setTimestamp(J)V

    .line 9
    sget-object v4, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAnEmptyImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 12
    array-length v4, v0

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 13
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 14
    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 16
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 17
    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    .line 18
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public holdImage(Landroid/media/Image;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v1

    .line 5
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holdImage: image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " qSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " maxDequeueCount="

    if-lez p1, :cond_3

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 2
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "maxAcquireCount(%d) + maxDequeueCount(%d) should not be larger than 64"

    .line 4
    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/imagecodec/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_2
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    .line 6
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    .line 7
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    .line 8
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: maxAcquireCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter: maxAcquireCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/imagecodec/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isImageQueueFull(I)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked()I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p1, 0x1

    .line 9
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p2, 0x1

    .line 4
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queueImage(Landroid/media/Image;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueImage: start. image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v4, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    :goto_0
    sget-object p1, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "queueImage: end"

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 13
    :try_start_3
    invoke-direct {p0, v3, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 15
    :cond_0
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image has exist: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public releaseImage(Landroid/media/Image;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v1

    .line 5
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseImage: image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " qSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseImage: not hold image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/imagecodec/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public trimPoolBuffer()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBuffer: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    .line 4
    invoke-virtual {v2}, Landroid/media/ImageReader;->discardFreeBuffers()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    sget-object p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v0, "trimPoolBuffer: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public trimPoolBufferIfNeeded()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->needTrimPoolBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBufferIfNeeded"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    :cond_0
    return-void
.end method

.method public waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p2, :cond_1

    if-lez p3, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaomi/camera/imagecodec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
