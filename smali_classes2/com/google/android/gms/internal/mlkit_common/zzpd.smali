.class public final Lcom/google/android/gms/internal/mlkit_common/zzpd;
.super Lcom/google/android/gms/internal/mlkit_common/zzpp;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:Z

.field public final zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public final zzg:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzlc;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzli;ILcom/google/android/gms/internal/mlkit_common/zzpc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzpp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzd:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzg:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzpp;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzlc;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzc:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zzg()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzd:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zzf()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzli;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzg:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzpp;->zza()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzc:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-boolean v6, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzd:Z

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->hashCode()I

    move-result v4

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    xor-int/2addr v0, v4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzg:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzd:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzg:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteModelLoggingOptions{errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tfliteSchemaVersion="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogRoughDownloadTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogExactDownloadTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", modelType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStatus="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failureStatusCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzg:I

    return p0
.end method

.method public final zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzlc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlc;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzli;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzd:Z

    return p0
.end method

.method public final zzg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpd;->zzc:Z

    return p0
.end method
