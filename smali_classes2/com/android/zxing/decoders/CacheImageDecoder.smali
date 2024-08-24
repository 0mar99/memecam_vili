.class public Lcom/android/zxing/decoders/CacheImageDecoder;
.super Lcom/android/zxing/Decoder;
.source "CacheImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;,
        Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;
    }
.end annotation


# static fields
.field public static final MAX_CACHED_COUNT:I = 0x14

.field public static final MAX_NO_GAUSSIAN_TIME:I = 0x3938700

.field public static final TAG:Ljava/lang/String; = "CacheImage"


# instance fields
.field public mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mCachedImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public mCachedImages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

.field public mReadLock:Ljava/util/concurrent/locks/Lock;

.field public mSaver:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSaverDisposable:Lio/reactivex/disposables/Disposable;

.field public mWaitingTimestamp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 9
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 10
    new-instance v0, Lcom/android/zxing/decoders/CacheImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$1;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    .line 11
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaver:Lio/reactivex/subjects/PublishSubject;

    .line 12
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/zxing/decoders/CacheImageDecoder$5;

    invoke-direct {v1, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$5;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/zxing/decoders/CacheImageDecoder$4;

    invoke-direct {v1, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$4;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    .line 14
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/zxing/decoders/CacheImageDecoder$2;

    invoke-direct {v1, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$2;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    new-instance v2, Lcom/android/zxing/decoders/CacheImageDecoder$3;

    invoke-direct {v2, p0}, Lcom/android/zxing/decoders/CacheImageDecoder$3;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaverDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->reset()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/zxing/decoders/CacheImageDecoder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/zxing/decoders/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/zxing/decoders/CacheImageDecoder;Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/zxing/decoders/CacheImageDecoder;->getAnchorImage(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    move-result-object p0

    return-object p0
.end method

.method private getAnchorImage(Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "CacheImage"

    .line 1
    iget-wide v3, v0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    .line 2
    iget-object v5, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target timestamp is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " count size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " queue size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v7, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 5
    iget-object v0, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find image in cache "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v7

    :goto_0
    move v6, v8

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v5, v7

    goto/16 :goto_4

    .line 8
    :cond_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not find image in cache "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " use nearest"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v9, 0x7fffffffffffffffL

    .line 9
    iget-object v7, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x0

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/Image;

    .line 10
    invoke-virtual {v12}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v13

    sub-long/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v15, v13, v9

    if-gez v15, :cond_1

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preview timestamp is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    move-wide v9, v13

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_4

    .line 12
    invoke-virtual {v11}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 13
    iget-object v7, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    iget-object v6, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v9, 0x3938700

    cmp-long v6, v6, v9

    if-gez v6, :cond_3

    const-string v0, "nearest timestamp is small than 60000000, no gaussian"

    .line 16
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v3, v6

    cmp-long v3, v3, v9

    if-lez v3, :cond_5

    .line 18
    invoke-virtual {v5}, Landroid/media/Image;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    iget-object v3, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anchor timestamp is bigger than the queue max timestamp, wait size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    move-object v5, v11

    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 22
    :goto_3
    iget-object v0, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v5, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 23
    :goto_4
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error getAnchorImage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    iget-object v0, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x0

    .line 25
    :goto_5
    new-instance v0, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    invoke-direct {v0, v5, v6}, Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;-><init>(Landroid/media/Image;Z)V

    return-object v0

    .line 26
    :goto_6
    iget-object v1, v1, Lcom/android/zxing/decoders/CacheImageDecoder;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    throw v0
.end method

.method private reset()V
    .locals 3

    const-string v0, "CacheImage"

    const-string v1, "reset"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "already reset"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaver:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 6
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaverDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaver:Lio/reactivex/subjects/PublishSubject;

    .line 8
    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaverDisposable:Lio/reactivex/disposables/Disposable;

    .line 9
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 11
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 13
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getAnchorPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-object p0
.end method

.method public init(I)V
    .locals 1

    const-string p1, "CacheImage"

    const-string v0, "init"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Cache Image already init"

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isNeedImage()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onPreviewFrame(Landroid/media/Image;I)V
    .locals 9

    const-string p2, "CacheImage"

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "oooh, we got max images acquired, but no one closed"

    .line 6
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 10
    iget-object v4, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 12
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 13
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 16
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCachedImageMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWaitingTimestamp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 20
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;

    .line 22
    iget-wide v4, v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait one incoming ts: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " waiting ts: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-wide v2, v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    .line 26
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/zxing/decoders/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error onPreviewFrame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    throw p1
.end method

.method public quit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->quit()V

    const-string v0, "CacheImage"

    const-string v1, "quit"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO00o;-><init>(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "CacheImage"

    const-string v1, "queue already quit"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaver:Lio/reactivex/subjects/PublishSubject;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaverDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;

    move-object v2, v1

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;-><init>(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    iget-object v0, v0, Lcom/android/zxing/decoders/CacheImageDecoder;->mSaver:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAnchorPreviewCallback(Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public startDecode()V
    .locals 3

    const-string v0, "CacheImage"

    const-string v1, "start decode"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/CacheImageDecoder;->mCacheStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "cache image start decode success"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
