.class public final Lcom/google/android/gms/internal/mlkit_common/zzba;
.super Lcom/google/android/gms/internal/mlkit_common/zzav;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

.field public final transient zzb:Lcom/google/android/gms/internal/mlkit_common/zzar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzau;Lcom/google/android/gms/internal/mlkit_common/zzar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzar;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzar;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzbe;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzba;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;

    move-result-object p0

    return-object p0
.end method
