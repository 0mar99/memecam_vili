.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        ">;>;",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;"
    }
.end annotation


# static fields
.field public static final zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;


# instance fields
.field public final zzc:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzc:Z

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;-><init>()V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzc:Z

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    const/4 p0, 0x1

    .line 6
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    .line 7
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V

    return-void
.end method

.method public static bridge synthetic zzd()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzb:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    return-object v0
.end method


# virtual methods
.method public final getDetectorType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzc:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    :goto_0
    return-object p0
.end method

.method public final process(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/odml/image/MlImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
