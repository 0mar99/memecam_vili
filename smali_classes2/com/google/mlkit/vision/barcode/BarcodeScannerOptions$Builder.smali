.class public Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public zza:I

.field public zzb:Z

.field public zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
    .locals 4

    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzb:Z

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzc:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;-><init>(IZLjava/util/concurrent/Executor;Lcom/google/mlkit/vision/barcode/zza;)V

    return-object v0
.end method

.method public enableAllPotentialBarcodes()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzb:Z

    return-object p0
.end method

.method public varargs setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
    .locals 2

    iput p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 1
    aget v0, p2, p1

    iget v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zza:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->zzc:Ljava/util/concurrent/Executor;

    return-object p0
.end method
