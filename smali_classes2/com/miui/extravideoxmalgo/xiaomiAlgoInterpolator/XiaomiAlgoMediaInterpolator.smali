.class public Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;
.super Ljava/lang/Object;
.source "XiaomiAlgoMediaInterpolator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "XiaomiAlgoMediaInterpolator"


# instance fields
.field public mHeight:I

.field public mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

.field public mNativeContext:J

.field public mWidth:I

.field public final mWorkHandlerLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWorkHandlerLock:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWidth:I

    .line 4
    iput p2, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mHeight:I

    .line 5
    new-instance p1, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    invoke-direct {p1}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;-><init>()V

    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;-><init>()V

    iput-object v0, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    .line 2
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->TAG:Ljava/lang/String;

    const-string v3, "end mCurrentInterpolationTimes=  init:  E"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    iget v3, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mHeight:I

    iget v4, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWidth:I

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4, v5}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->initializeAlgo(IIII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mNativeContext:J

    .line 7
    sget-object p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end mCurrentInterpolationTimes =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "   init:  X"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
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

.method public interpolatorFrame([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/miui/extravideo/common/MediaParamsHolder;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p7

    .line 1
    iget-object v2, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v3, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    iget-wide v4, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mNativeContext:J

    iget v12, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v13, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v14, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->stride:I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v14}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->Process(J[B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    invoke-virtual {p0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->UnInit()I

    .line 4
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
