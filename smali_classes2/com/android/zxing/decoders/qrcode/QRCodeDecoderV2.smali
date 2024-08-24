.class public Lcom/android/zxing/decoders/qrcode/QRCodeDecoderV2;
.super Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;
.source "QRCodeDecoderV2.java"


# static fields
.field public static final DURATION_TIP_DISPLAY:J = 0x1388L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/protocol/protocols/BottomPopupTips;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->showQrCodeTip(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDecodeMaxCount()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QRCodeDecoderV2"

    return-object p0
.end method

.method public onDecodeStarted()V
    .locals 0

    return-void
.end method

.method public showOrHideQrCode(Ljava/lang/String;)V
    .locals 3

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

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOO;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooOOOO;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x1388

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->delayHideQrcodeTip(J)V

    :cond_0
    return-void
.end method
