.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public zzb:I

.field public zzc:I

.field public zzd:I

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzd:I

    return-void
.end method

.method private final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzd:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 5
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaq;->zzd(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzd:I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    aget-object v1, v2, v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zzd:I

    return-void
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
