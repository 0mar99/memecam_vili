.class public final Lcom/google/android/gms/internal/mlkit_common/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

.field public zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzao;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzao;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzf;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzao;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_common/zzao;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzs;)Lcom/google/android/gms/internal/mlkit_common/zzg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    const-string v1, "Must call internal() or external() before appending rules."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzao;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzao;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzg;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zze(ZLjava/lang/Object;)V

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzg;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zze(ZLjava/lang/Object;)V

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzi;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    const-string v1, "Must call internal() or external() when building a SourcePolicy."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzao;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzar;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzi;-><init>(ZZLcom/google/android/gms/internal/mlkit_common/zzar;Lcom/google/android/gms/internal/mlkit_common/zzh;)V

    return-object v0
.end method
