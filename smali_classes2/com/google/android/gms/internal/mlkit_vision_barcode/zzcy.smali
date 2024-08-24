.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;->zzb(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
