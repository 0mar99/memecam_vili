.class public Lcom/android/zxing/PreviewDecodeManager;
.super Ljava/lang/Object;
.source "PreviewDecodeManager.java"


# static fields
.field public static final DECODE_TYPE_DOCUMENT:I = 0x2

.field public static final DECODE_TYPE_HAND_GESTURE:I = 0x1

.field public static final DECODE_TYPE_OCR:I = 0x3

.field public static final DECODE_TYPE_QR:I = 0x0

.field public static final INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

.field public static final TAG:Ljava/lang/String; = "PreviewDecodeManager"


# instance fields
.field public final mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/zxing/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/zxing/PreviewDecodeManager;

    invoke-direct {v0}, Lcom/android/zxing/PreviewDecodeManager;-><init>()V

    sput-object v0, Lcom/android/zxing/PreviewDecodeManager;->INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 3
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 4
    new-instance v0, Lcom/android/zxing/PreviewDecodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/PreviewDecodeManager$1;-><init>(Lcom/android/zxing/PreviewDecodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/zxing/PreviewDecodeManager;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object p0
.end method

.method public static getInstance()Lcom/android/zxing/PreviewDecodeManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/zxing/PreviewDecodeManager;->INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

    return-object v0
.end method


# virtual methods
.method public getDecoder(I)Lcom/android/zxing/Decoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/zxing/Decoder;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    return-object p0
.end method

.method public getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-object p0
.end method

.method public init(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 2
    new-instance p2, Lcom/android/zxing/decoders/DocumentDecoder;

    invoke-direct {p2}, Lcom/android/zxing/decoders/DocumentDecoder;-><init>()V

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/zxing/decoders/DocumentDecoder;->init(I)V

    .line 4
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 6
    new-instance p2, Lcom/android/zxing/decoders/HandGestureDecoder;

    invoke-direct {p2}, Lcom/android/zxing/decoders/HandGestureDecoder;-><init>()V

    .line 7
    invoke-virtual {p2, p1}, Lcom/android/zxing/decoders/HandGestureDecoder;->init(I)V

    .line 8
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v0, v1

    goto :goto_2

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOO0()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    new-instance p2, Lcom/android/zxing/decoders/qrcode/QRCodeDecoderV2;

    invoke-direct {p2}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoderV2;-><init>()V

    goto :goto_1

    .line 12
    :cond_3
    new-instance p2, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;

    invoke-direct {p2}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;-><init>()V

    .line 13
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    .line 14
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public load(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/zxing/PreviewDecodeManager;->init(II)Z

    .line 2
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/Decoder;

    .line 2
    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->stopDecode()V

    .line 3
    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->quit()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    return-void
.end method

.method public startDecode()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/Decoder;

    .line 2
    invoke-virtual {v0}, Lcom/android/zxing/Decoder;->startDecode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDecode(I)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    :cond_0
    return-void
.end method

.method public stopDecode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    :cond_0
    return-void
.end method

.method public unload(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    :cond_0
    return-void
.end method
