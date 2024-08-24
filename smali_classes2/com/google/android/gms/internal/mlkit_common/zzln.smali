.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzln;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzbm;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzln;

.field public static final synthetic zzg:[Lcom/google/android/gms/internal/mlkit_common/zzln;


# instance fields
.field public final zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v1, 0x0

    const-string v2, "SOURCE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zza:Lcom/google/android/gms/internal/mlkit_common/zzln;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v2, 0x1

    const-string v3, "APP_ASSET"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzln;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v3, 0x2

    const-string v4, "LOCAL"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzln;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v4, 0x3

    const-string v5, "CLOUD"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzln;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v5, 0x4

    const-string v6, "SDK_BUILT_IN"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zze:Lcom/google/android/gms/internal/mlkit_common/zzln;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v6, 0x5

    const-string v7, "URI"

    .line 6
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzln;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/google/android/gms/internal/mlkit_common/zzln;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_common/zzln;->zza:Lcom/google/android/gms/internal/mlkit_common/zzln;

    aput-object v8, v7, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzln;

    aput-object v1, v7, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzln;

    aput-object v1, v7, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzln;

    aput-object v1, v7, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzln;->zze:Lcom/google/android/gms/internal/mlkit_common/zzln;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzg:[Lcom/google/android/gms/internal/mlkit_common/zzln;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzln;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzg:[Lcom/google/android/gms/internal/mlkit_common/zzln;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzln;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzln;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzh:I

    return p0
.end method
