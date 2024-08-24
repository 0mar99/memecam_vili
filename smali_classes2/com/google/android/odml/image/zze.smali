.class public final Lcom/google/android/odml/image/zze;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"

# interfaces
.implements Lcom/google/android/odml/image/zzg;


# instance fields
.field public final zza:Landroid/graphics/Bitmap;

.field public final zzb:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/zze;->zza:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/google/android/odml/image/zzb;

    invoke-direct {v0}, Lcom/google/android/odml/image/zzb;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 2
    sget-object v1, Lcom/google/android/odml/image/zzd;->zza:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/odml/image/zzb;->zza(I)Lcom/google/android/odml/image/zzh;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/odml/image/zzb;->zzb(I)Lcom/google/android/odml/image/zzh;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/odml/image/zzb;->zzc()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/zze;->zzb:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zze;->zza:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zze;->zzb:Lcom/google/android/odml/image/ImageProperties;

    return-object p0
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zze;->zza:Landroid/graphics/Bitmap;

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
