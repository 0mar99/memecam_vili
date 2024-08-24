.class public Lcom/google/android/odml/image/MediaMlImageBuilder;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"


# instance fields
.field public final zza:Landroid/media/Image;

.field public zzb:I

.field public zzc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zza:Landroid/media/Image;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zzb:I

    new-instance v1, Landroid/graphics/Rect;

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-direct {v1, v0, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zzc:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/odml/image/MlImage;
    .locals 9

    new-instance v8, Lcom/google/android/odml/image/MlImage;

    new-instance v1, Lcom/google/android/odml/image/zzi;

    iget-object v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zza:Landroid/media/Image;

    .line 1
    invoke-direct {v1, v0}, Lcom/google/android/odml/image/zzi;-><init>(Landroid/media/Image;)V

    iget v2, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zzb:I

    iget-object v3, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zzc:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zza:Landroid/media/Image;

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v6

    iget-object p0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zza:Landroid/media/Image;

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v7

    const-wide/16 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/odml/image/MlImage;-><init>(Lcom/google/android/odml/image/zzg;ILandroid/graphics/Rect;JII)V

    return-object v8
.end method

.method public setRotation(I)Lcom/google/android/odml/image/MediaMlImageBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/odml/image/MlImage;->zzc(I)V

    iput p1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->zzb:I

    return-object p0
.end method
