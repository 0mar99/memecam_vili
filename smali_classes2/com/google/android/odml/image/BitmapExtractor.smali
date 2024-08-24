.class public final Lcom/google/android/odml/image/BitmapExtractor;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lcom/google/android/odml/image/MlImage;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->zza()Lcom/google/android/odml/image/zzg;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/google/android/odml/image/zzg;->zzb()Lcom/google/android/odml/image/ImageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/odml/image/ImageProperties;->getStorageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/odml/image/zze;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/odml/image/zze;->zza()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extracting Bitmap from an MlImage created by objects other than Bitmap is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
