.class public Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;
.super Ljava/lang/Object;
.source "MlkitWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanFrame"
.end annotation


# instance fields
.field public final mDeviceOrientation:I

.field public final mHeight:I

.field public final mImgBuf:Ljava/nio/ByteBuffer;

.field public final mImgFormat:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mImgBuf:Ljava/nio/ByteBuffer;

    .line 3
    iput p2, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mWidth:I

    .line 4
    iput p3, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mHeight:I

    .line 5
    iput p4, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mDeviceOrientation:I

    .line 6
    iput p5, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mImgFormat:I

    return-void
.end method

.method public static synthetic access$200(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mImgBuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mWidth:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mHeight:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mDeviceOrientation:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner$ScanFrame;->mImgFormat:I

    return p0
.end method
