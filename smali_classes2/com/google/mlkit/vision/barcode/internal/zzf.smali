.class public final Lcom/google/mlkit/vision/barcode/internal/zzf;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# instance fields
.field public final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzf;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzf;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 2
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v3, 0xc306c20

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzn;

    .line 7
    invoke-direct {v2, v0, p1, v1}, Lcom/google/mlkit/vision/barcode/internal/zzn;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzl;

    .line 9
    invoke-direct {v2, v0, p1, v1}, Lcom/google/mlkit/vision/barcode/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    .line 10
    :goto_1
    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzf;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/mlkit/vision/barcode/internal/zzi;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    return-object v0
.end method
