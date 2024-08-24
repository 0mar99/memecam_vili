.class public Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;
.super Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;
.source "MlkitWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/decoders/qrcode/MlkitWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QRCodeScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;,
        Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;
    }
.end annotation


# instance fields
.field public final mBarcodeScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;-><init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$1;)V

    .line 3
    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/16 v2, 0x100

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScanning;->getClient(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;->mBarcodeScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V
    .locals 2

    const-string v0, "MlkitWrapper"

    const-string v1, "scan: canceled"

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-interface {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onCanceled()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;Ljava/lang/Exception;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan: failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MlkitWrapper"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-interface {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onFailed()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;Ljava/util/List;)V
    .locals 3

    const-string v0, "MlkitWrapper"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez p1, :cond_0

    const-string p1, "scan: barcode null"

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onFailed()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 6
    invoke-interface {p0, p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan: failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;->onFailed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;->close()V

    .line 2
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;->mBarcodeScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {p0}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->close()V

    .line 3
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->access$700()V

    return-void
.end method

.method public scan(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;->mBarcodeScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->access$200(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->access$300(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I

    move-result v2

    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->access$400(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I

    move-result v3

    .line 2
    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->access$500(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I

    move-result v4

    invoke-static {p1}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->access$600(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I

    move-result v5

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/mlkit/vision/interfaces/Detector;->process(Ljava/nio/ByteBuffer;IIII)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0OO;

    invoke-direct {p1, p2}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0OO;-><init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO00o;

    invoke-direct {p1, p2}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO00o;-><init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0O0;

    invoke-direct {p1, p2}, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0O0;-><init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanListener;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
