.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

.field public final zzb:Ljava/lang/Boolean;

.field public final zzc:Ljava/lang/Boolean;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzb:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    return-object p0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    return-object p0
.end method
