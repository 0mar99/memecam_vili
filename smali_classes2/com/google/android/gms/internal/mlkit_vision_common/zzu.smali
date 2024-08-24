.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzu;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
.source "com.google.mlkit:vision-common@@17.3.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;


# instance fields
.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzf;->zza(IILjava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzb:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzc:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zzb:[Ljava/lang/Object;

    return-object p0
.end method
