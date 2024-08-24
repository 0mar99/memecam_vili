.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzpp;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_common/zzpo;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpb;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzlc;)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzli;)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpb;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzpo;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/mlkit_common/zzlc;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zzli;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method

.method public abstract zzg()Z
.end method
