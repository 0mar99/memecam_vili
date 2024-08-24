.class public final Lcom/google/android/gms/internal/mlkit_common/zzbu;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzbq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    return-void
.end method

.method private final zzb()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zza:Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(D)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zza(Lcom/google/firebase/encoders/FieldDescriptor;DZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final add(F)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zzb(Lcom/google/firebase/encoders/FieldDescriptor;FZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final add(I)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_common/zzbq;

    return-object p0
.end method

.method public final add(J)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 8
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zze(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/android/gms/internal/mlkit_common/zzbq;

    return-object p0
.end method

.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_common/zzbq;

    return-object p0
.end method

.method public final add([B)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbq;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/encoders/FieldDescriptor;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbu;->zzb:Z

    return-void
.end method
