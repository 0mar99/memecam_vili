.class public final Lcom/google/android/gms/internal/mlkit_common/zzhr;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzhr;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhr;

    const-string v0, "detectorOptions"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbo;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "errorCodes"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbo;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "totalInitializationMs"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbo;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "loggingInitializationMs"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbo;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "otherErrors"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbk;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbo;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzmx;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p0, 0x0

    .line 2
    throw p0
.end method
