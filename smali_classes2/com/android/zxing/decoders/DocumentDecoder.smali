.class public Lcom/android/zxing/decoders/DocumentDecoder;
.super Lcom/android/zxing/Decoder;
.source "DocumentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DocumentDecoder"


# instance fields
.field public cachePreview:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/android/zxing/PreviewImage;",
            "[F>;"
        }
    .end annotation
.end field

.field public final mDecodeDisposable:Lio/reactivex/disposables/Disposable;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSensorOrientation:I

    .line 3
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    .line 4
    sget-object v1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0OO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0OO;-><init>(Lcom/android/zxing/decoders/DocumentDecoder;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0Oo;

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    const-string p0, "DocumentDecoder"

    const-string v0, "DocumentDecoder: created"

    .line 9
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/DocumentDecoder;Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/decoders/DocumentDecoder;->decode(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0O0;-><init>(Landroid/util/Pair;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/util/Pair;Lcom/android/camera/protocol/protocols/DocViewProtocol;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->updateDocument(Landroid/util/Pair;)V

    return-void
.end method

.method private decode(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/zxing/PreviewImage;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode: previewImage is null? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/16 v2, 0x8

    new-array v2, v2, [F

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->isReleasing()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "decode: documentProcess isReleasing"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->initProcessIfNeed()V

    .line 9
    iget v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSensorOrientation:I

    invoke-static {v0}, Lcom/android/zxing/decoders/DocumentDecoder;->getRotateFlag(I)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->PPT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    move-object v5, v2

    move-object v11, v0

    invoke-virtual/range {v3 .. v11}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I

    move-result v3

    .line 11
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iput-object v4, p0, Lcom/android/zxing/decoders/DocumentDecoder;->cachePreview:Landroid/util/Pair;

    .line 12
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: version = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", points = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rotatePoints = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 19
    :cond_3
    :goto_1
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getRotateFlag(I)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_90:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_270:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_180:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_0:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCachePreview()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/zxing/PreviewImage;",
            "[F>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->cachePreview:Landroid/util/Pair;

    return-object p0
.end method

.method public getDecodeInterval()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(I)V
    .locals 1

    const/16 v0, 0x5a

    .line 1
    iput v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSensorOrientation:I

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSensorOrientation(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    iput p1, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSensorOrientation:I

    :cond_0
    return-void
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/zxing/Decoder;->needPreviewFrame(Landroid/media/Image;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->isReleasing()Z

    move-result p0

    if-nez p0, :cond_0

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
    iget-object p0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/DocumentDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
