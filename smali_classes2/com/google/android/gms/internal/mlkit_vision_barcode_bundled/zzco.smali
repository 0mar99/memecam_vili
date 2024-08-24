.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.1.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb:I

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
