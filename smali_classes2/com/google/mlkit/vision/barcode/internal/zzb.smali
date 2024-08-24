.class public final Lcom/google/mlkit/vision/barcode/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final zzb:Landroid/util/SparseArray;

.field public static final zzc:Landroid/util/SparseArray;

.field public static final zzd:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v5, 0x8

    .line 8
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v6, 0x10

    .line 9
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0x20

    .line 10
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v8, 0x40

    .line 11
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v9, 0x80

    .line 12
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v10, 0x100

    .line 13
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v11, 0x200

    .line 14
    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v12, 0x400

    .line 15
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v13, 0x800

    .line 16
    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v14, 0x1000

    .line 17
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    .line 20
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v15, 0x3

    .line 21
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    .line 22
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v15, 0x5

    .line 23
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v15, 0x6

    .line 24
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v15, 0x7

    .line 25
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    .line 26
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v15, 0x9

    .line 27
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v15, 0xa

    .line 28
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v15, 0xb

    .line 29
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v15, 0xc

    .line 30
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 40
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 42
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 43
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 44
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zza(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    :cond_0
    return-object p0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    :cond_0
    return-object p0
.end method

.method public static zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza()I

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqt;-><init>()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object p0

    return-object p0
.end method

.method public static zzd()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "play-services-mlkit-barcode-scanning"

    return-object v0

    :cond_0
    const-string v0, "barcode-scanning"

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zza;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zza;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V

    return-void
.end method

.method public static zzf()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v0
.end method
