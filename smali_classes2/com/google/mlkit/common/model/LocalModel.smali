.class public Lcom/google/mlkit/common/model/LocalModel;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/model/LocalModel$Builder;
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Landroid/net/Uri;

.field public final zzd:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLcom/google/mlkit/common/model/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/mlkit/common/model/LocalModel;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/google/mlkit/common/model/LocalModel;

    iget-object v2, p0, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    iget-boolean p1, p1, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    if-ne p0, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getAbsoluteFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public getAssetFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isManifestFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zza:Ljava/lang/String;

    const-string v2, "absoluteFilePath"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zzb:Ljava/lang/String;

    const-string v2, "assetFilePath"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    iget-object v1, p0, Lcom/google/mlkit/common/model/LocalModel;->zzc:Landroid/net/Uri;

    const-string v2, "uri"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    iget-boolean p0, p0, Lcom/google/mlkit/common/model/LocalModel;->zzd:Z

    const-string v1, "isManifestFile"

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/mlkit_common/zzz;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzz;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
