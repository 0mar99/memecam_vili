.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsy;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzb;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;


# direct methods
.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsx;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
