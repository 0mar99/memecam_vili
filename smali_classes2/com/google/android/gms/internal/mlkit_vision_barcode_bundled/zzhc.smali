.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.1.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final zza:Ljava/util/Iterator;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
