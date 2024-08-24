.class public final Lcom/google/android/odml/image/zzb;
.super Lcom/google/android/odml/image/zzh;
.source "com.google.android.odml:image@@1.0.0-beta1"


# instance fields
.field public zza:Ljava/lang/Integer;

.field public zzb:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/odml/image/zzh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/odml/image/zzh;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/zzb;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/odml/image/zzh;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/zzb;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/odml/image/ImageProperties;
    .locals 3

    iget-object v0, p0, Lcom/google/android/odml/image/zzb;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/odml/image/zzb;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/google/android/odml/image/zzc;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/odml/image/zzb;->zzb:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/odml/image/zzc;-><init>(IILcom/google/android/odml/image/zza;)V

    return-object v1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/odml/image/zzb;->zza:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " imageFormat"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, Lcom/google/android/odml/image/zzb;->zzb:Ljava/lang/Integer;

    if-nez p0, :cond_3

    const-string p0, " storageType"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1c

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
