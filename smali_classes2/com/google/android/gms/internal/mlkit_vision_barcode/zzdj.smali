.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

.field public static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    const/4 v2, 0x1

    const-string v3, "SIGNED"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    const/4 v3, 0x2

    const-string v4, "FIXED"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    return-object v0
.end method
