.class public Lcom/android/zxing/decoders/HandGestureDecoder;
.super Lcom/android/zxing/Decoder;
.source "HandGestureDecoder.java"


# static fields
.field public static final DEBUG:Z

.field public static final DECODE_MAX_COUNT:I = 0x1388

.field public static final DETECTION_FRAMES_PER_SECOND:I = 0x10

.field public static final TAG:Ljava/lang/String; = "HandGestureDecoder"


# instance fields
.field public mCameraId:I

.field public final mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHandGesture:Lcom/android/camera/handgesture/HandGesture;

.field public mSensorOrientation:I

.field public final mSubjects:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/android/zxing/PreviewImage;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetDetected:Z

.field public mTipShowInterval:I

.field public mTipVisible:Z

.field public mTriggeringPhoto:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "hand_gesture_dump"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/zxing/decoders/HandGestureDecoder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    .line 4
    iput-boolean v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTriggeringPhoto:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTargetDetected:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipVisible:Z

    .line 7
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    .line 8
    new-instance v0, Lcom/android/camera/handgesture/HandGesture;

    invoke-direct {v0}, Lcom/android/camera/handgesture/HandGesture;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    .line 9
    iget-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o0;-><init>(Lcom/android/zxing/decoders/HandGestureDecoder;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0o;-><init>(Lcom/android/zxing/decoders/HandGestureDecoder;)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private dumpPreviewImage(Lcom/android/zxing/PreviewImage;I)V
    .locals 10

    const-string p0, "_"

    const-string v0, "Close stream failed!"

    const-string v1, "HandGestureDecoder"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getTimestamp()J

    move-result-wide v3

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v5

    .line 3
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v6

    const/4 v7, -0x1

    if-le p2, v7, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/DCIM/Camera/hand_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ".yuv"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PreviewImage timestamp: ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v7

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "Dump preview Image failed!"

    .line 10
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 12
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_2

    .line 13
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 14
    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_2
    :goto_4
    throw p0
.end method

.method public static getInstanceOpt()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/zxing/decoders/HandGestureDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/decoders/HandGestureDecoder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HandGestureDecoder"

    const-string v1, "HandGestureDecoder: decode E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getPreviewStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p0}, Lcom/android/camera/handgesture/HandGesture;->unInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/zxing/decoders/HandGestureDecoder;->decode(Lcom/android/zxing/PreviewImage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getCameraId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/handgesture/HandGesture;->init(I)V

    .line 7
    sget-boolean p1, Lcom/android/zxing/decoders/HandGestureDecoder;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p0, v2}, Lcom/android/camera/handgesture/HandGesture;->setLogLevel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    const/4 p0, -0x1

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected rect left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandGestureDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    .line 12
    iput-boolean v2, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTargetDetected:Z

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTargetDetected:Z

    .line 14
    iget-object p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    :goto_0
    iget-boolean p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTriggeringPhoto:Z

    if-eqz p1, :cond_1

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous interval: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_1

    .line 19
    :cond_2
    iget-boolean p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTargetDetected:Z

    if-eqz p1, :cond_4

    const-string p1, "Triggering countdown..."

    .line 20
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CameraAction;->isBlockSnap()Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ModeChangeController;->modeChanging()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "skip hand gesture trigger caz mode changing."

    .line 25
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/16 v1, 0x64

    .line 26
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/CameraAction;->onShutterButtonClick(I)Z

    .line 27
    iput-boolean v2, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTriggeringPhoto:Z

    .line 28
    iget-object p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTriggeringPhoto:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    .line 30
    iput-boolean v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipVisible:Z

    const/16 p1, 0x10

    .line 31
    iput p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    .line 32
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipVisible:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    if-gtz p1, :cond_6

    .line 33
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    .line 34
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 35
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 36
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->reInitAlert(Z)V

    .line 37
    :cond_5
    iput-boolean v2, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipVisible:Z

    .line 38
    :cond_6
    iget p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    if-lez p1, :cond_7

    sub-int/2addr p1, v2

    .line 39
    iput p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTipShowInterval:I

    :cond_7
    return-void
.end method

.method public decode(Lcom/android/zxing/PreviewImage;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSensorOrientation:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 3
    iget-object v0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/camera/handgesture/HandGesture;->detectGesture([BIII)I

    move-result v0

    .line 4
    sget-boolean v1, Lcom/android/zxing/decoders/HandGestureDecoder;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/zxing/decoders/HandGestureDecoder;->dumpPreviewImage(Lcom/android/zxing/PreviewImage;I)V

    :cond_1
    return v0
.end method

.method public getDecodeInterval()J
    .locals 2

    const-wide/16 v0, 0x3e

    return-wide v0
.end method

.method public getDecodeMaxCount()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public init(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/zxing/decoders/HandGestureDecoder;->reset()V

    .line 2
    iput p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mCameraId:I

    .line 3
    invoke-static {p1}, Lcom/android/camera/Util;->getSensorOrientation(I)I

    move-result p1

    iput p1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSensorOrientation:I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    return-void
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/zxing/Decoder;->needPreviewFrame(Landroid/media/Image;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 5

    const-string v0, "HandGestureDecoder"

    const-string v1, "quit +"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/zxing/Decoder;->quit()V

    .line 3
    iget-object v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lcom/android/zxing/PreviewImage;

    iget v3, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mCameraId:I

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lcom/android/zxing/PreviewImage;-><init>(II)V

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    const-string p0, "quit -"

    .line 5
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "HandGestureDecoder"

    const-string v1, "Reset"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iput-boolean v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mTriggeringPhoto:Z

    return-void
.end method

.method public startDecode()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 3
    iget-object v1, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lcom/android/zxing/PreviewImage;

    iget p0, p0, Lcom/android/zxing/decoders/HandGestureDecoder;->mCameraId:I

    invoke-direct {v2, v0, p0}, Lcom/android/zxing/PreviewImage;-><init>(II)V

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
