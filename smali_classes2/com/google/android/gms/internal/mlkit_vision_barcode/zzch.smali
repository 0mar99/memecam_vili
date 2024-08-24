.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# direct methods
.method public static zza(Ljava/util/Iterator;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method
