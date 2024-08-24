.class public final Lcom/google/android/odml/image/zzi;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"

# interfaces
.implements Lcom/google/android/odml/image/zzg;


# instance fields
.field public final zza:Landroid/media/Image;

.field public final zzb:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/zzi;->zza:Landroid/media/Image;

    new-instance v0, Lcom/google/android/odml/image/zzb;

    invoke-direct {v0}, Lcom/google/android/odml/image/zzb;-><init>()V

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/odml/image/zzb;->zzb(I)Lcom/google/android/odml/image/zzh;

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_3

    const/16 v1, 0x100

    if-eq p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/odml/image/zzb;->zza(I)Lcom/google/android/odml/image/zzh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/odml/image/zzb;->zzc()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/zzi;->zzb:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zzi;->zza:Landroid/media/Image;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zzi;->zzb:Lcom/google/android/odml/image/ImageProperties;

    return-object p0
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/zzi;->zza:Landroid/media/Image;

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-void
.end method
