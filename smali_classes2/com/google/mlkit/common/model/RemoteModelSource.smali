.class public abstract Lcom/google/mlkit/common/model/RemoteModelSource;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/mlkit/common/model/RemoteModelSource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModelSource;

    iget-object p0, p0, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RemoteModelSource"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    move-result-object v0

    iget-object p0, p0, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    const-string v1, "firebaseModelName"

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzz;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzz;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/model/RemoteModelSource;->zza:Ljava/lang/String;

    return-object p0
.end method
