.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;


# instance fields
.field public final zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v1, 0x0

    const-string v2, "TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v2, 0x1

    const-string v3, "TYPE_THIN"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v3, 0x2

    const-string v4, "TYPE_THICK"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v4, 0x3

    const-string v5, "TYPE_GMV"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    aput-object v1, v5, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzf:I

    return p0
.end method
