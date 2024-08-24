.class public Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;
.super Lcom/android/zxing/Decoder;
.source "QRCodeDecoder.java"


# static fields
.field public static final DECODE_INTERVAL:J = 0x3e8L

.field public static final DURATION_TIP_DISPLAY:J = 0xbb8L

.field public static final MIN_SIZE:I = 0x2d0


# instance fields
.field public final TAG:Ljava/lang/String;

.field public volatile mFirstFrameComeEmitter:Lio/reactivex/CompletableEmitter;

.field public final mHideTipCallback:Lio/reactivex/functions/Action;

.field public mImgBuffer:Ljava/nio/ByteBuffer;

.field public final mInitQRCodeScannerTask:Lio/reactivex/disposables/Disposable;

.field public volatile mIsQrRegionDetecting:Z

.field public final mPendingTasks:LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

.field public volatile mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

.field public mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

.field public mScanResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mPendingTasks:LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

    .line 4
    new-instance v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o0;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    .line 6
    sget-object v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0oO;

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 8
    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOO;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lio/reactivex/CompletableSource;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 9
    invoke-static {v2}, Lio/reactivex/Completable;->mergeArray([Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/Scheduler;

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0O;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0O;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mInitQRCodeScannerTask:Lio/reactivex/disposables/Disposable;

    .line 12
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    const-string v0, "QRCodeDecoder: created"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/BottomPopupTips;)V
    .locals 0

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigAiTip()Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->hideQRCodeTip()V

    return-void
.end method

.method public static synthetic OooO00o(Lio/reactivex/CompletableEmitter;J)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->hideQRCodeTip()V

    return-void
.end method

.method public static synthetic OooO0O0(Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0oo;-><init>(Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lio/reactivex/CompletableEmitter;J)V
    .locals 0

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0o;-><init>(Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->initQRCodeScanner()V

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->releaseQRCodeScanner()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mIsQrRegionDetecting:Z

    return p1
.end method

.method public static getInstanceOpt()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getScanFrame(Landroid/media/Image;III)Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getYBytes(Landroid/media/Image;)[B

    move-result-object v1

    const/16 v4, 0x2d0

    if-le p3, v4, :cond_2

    if-le p4, v4, :cond_2

    .line 2
    div-int/lit8 v8, p3, 0x2

    .line 3
    div-int/lit8 v9, p4, 0x2

    mul-int v4, v8, v9

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 4
    iget-object v5, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mImgBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 5
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mImgBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mImgBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iget-object v4, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mImgBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v7, 0x0

    move v2, p3

    move v3, p4

    move v5, v8

    move v6, v9

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/libyuv/YuvUtils;->NV21YScale([BII[BIII)V

    .line 8
    new-instance v1, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;

    iget-object v6, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mImgBuffer:Ljava/nio/ByteBuffer;

    const/16 v10, 0x11

    move-object v5, v1

    move v7, v8

    move v8, v9

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-object v1

    .line 9
    :cond_2
    new-instance v6, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v5, 0x11

    move-object v0, v6

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-object v6
.end method

.method private getYBytes(Landroid/media/Image;)[B
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    mul-int v1, p0, v0

    mul-int/lit8 v1, v1, 0x3

    .line 3
    div-int/lit8 v1, v1, 0x2

    .line 4
    new-array v1, v1, [B

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 6
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 9
    new-array v5, v4, [B

    .line 10
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    if-ne p1, p0, :cond_0

    .line 11
    invoke-virtual {v3, v1, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v3, v5, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v3, v2

    move v6, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    invoke-static {v5, v3, v1, v6, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v7, v3, p1

    if-le v7, v4, :cond_1

    add-int/2addr v3, p0

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    add-int/2addr v6, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method private hideQRCodeTip()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initQRCodeScanner()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->getInstance()Lcom/android/zxing/decoders/qrcode/MlkitWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->createQRCodeScanner()Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    const-string v0, "initQRCodeScanner: created"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseQRCodeScanner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    invoke-virtual {v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;->close()V

    .line 3
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    const-string v0, "releaseQRCodeScanner: done"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    const-string v1, "onDecodeStarted: excess 15s, hide qr code tip"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->hideQRCodeTip()V

    .line 6
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0o;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mFirstFrameComeEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method

.method public delayHideQrcodeTip(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mPendingTasks:LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    invoke-virtual {v0, p1, p2, v1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o(JLio/reactivex/Scheduler;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getDecodeInterval()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getDecodeMaxCount()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QRCodeDecoder"

    return-object p0
.end method

.method public isNeedImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mFirstFrameComeEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mFirstFrameComeEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mFirstFrameComeEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/android/zxing/Decoder;->needPreviewFrame(Landroid/media/Image;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mIsQrRegionDetecting:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDecodeStarted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getDecodeMaxCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOO0;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mIsQrRegionDetecting:Z

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getScanFrame(Landroid/media/Image;III)Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mQRCodeScanner:Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    new-instance v0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder$1;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;->scan(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mIsQrRegionDetecting:Z

    :goto_1
    return-void
.end method

.method public quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mInitQRCodeScannerTask:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mPendingTasks:LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o()V

    .line 3
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0o;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 4
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public resetScanResult()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mIsQrRegionDetecting:Z

    return-void
.end method

.method public showOrHideQrCode(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideQrCode : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 4
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 6
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 10
    iget-boolean v3, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    .line 11
    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_2
    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->showQrCodeTip(Ljava/lang/String;)V

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo0()Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/16 v0, 0xbb8

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->delayHideQrcodeTip(J)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mPendingTasks:LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;

    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    invoke-virtual {p1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0Oo;->OooO00o(Lio/reactivex/functions/Action;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startDecode()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOO0;-><init>(Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 3
    invoke-virtual {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->onDecodeStarted()V

    return-void
.end method

.method public stopDecode()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    .line 2
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
