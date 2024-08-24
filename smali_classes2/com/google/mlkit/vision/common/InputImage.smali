.class public Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.3.0"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/MLTaskInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/common/InputImage$ImageFormat;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_BITMAP:I = -0x1

.field public static final IMAGE_FORMAT_NV21:I = 0x11

.field public static final IMAGE_FORMAT_YUV_420_888:I = 0x23

.field public static final IMAGE_FORMAT_YV12:I = 0x32315659


# instance fields
.field public volatile zza:Landroid/graphics/Bitmap;

.field public volatile zzb:Ljava/nio/ByteBuffer;

.field public volatile zzc:Lcom/google/mlkit/vision/common/zzb;

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zza:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    .line 4
    invoke-static {p2}, Lcom/google/mlkit/vision/common/InputImage;->zza(I)I

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;IIILandroid/graphics/Matrix;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/mlkit/vision/common/zzb;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/common/zzb;-><init>(Landroid/media/Image;)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    .line 6
    invoke-static {p4}, Lcom/google/mlkit/vision/common/InputImage;->zza(I)I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    const/16 p1, 0x23

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    iput-object p5, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x11

    const/4 v2, 0x1

    const v3, 0x32315659

    if-eq p5, v3, :cond_1

    if-ne p5, v1, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    mul-int v3, p2, p3

    if-le v1, v3, :cond_2

    move v0, v2

    :cond_2
    const-string v1, "Image dimension, ByteBuffer size and format don\'t match. Please check if the ByteBuffer is in the decalred format."

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    .line 12
    invoke-static {p4}, Lcom/google/mlkit/vision/common/InputImage;->zza(I)I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    iput p5, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v8, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    invoke-direct {v8, p0, p1}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/graphics/Bitmap;I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    const/4 v0, -0x1

    const/4 v1, 0x1

    move v7, p1

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzc(IIJIIII)V

    return-object v8
.end method

.method public static fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v10, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v4, v10

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;IIII)V

    .line 3
    array-length v6, p0

    const/4 v1, 0x2

    move v0, p4

    move v4, p2

    move v5, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzc(IIJIIII)V

    return-object v10
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v10, Lcom/google/mlkit/vision/common/InputImage;

    move-object v4, v10

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 2
    invoke-direct/range {v4 .. v9}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;IIII)V

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v1, 0x3

    move v0, p4

    move v4, p2

    move v5, p1

    move v7, p3

    .line 4
    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzc(IIJIIII)V

    return-object v10
.end method

.method public static fromFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Please provide a valid Context"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Please provide a valid imageUri"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/google/mlkit/vision/common/InputImage;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, p0, v0}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/graphics/Bitmap;I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v7

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v8, 0x0

    .line 9
    invoke-static/range {v1 .. v8}, Lcom/google/mlkit/vision/common/InputImage;->zzc(IIJIIII)V

    return-object p1
.end method

.method public static fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/mlkit/vision/common/InputImage;->zzb(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0
.end method

.method public static fromMediaImage(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Only YUV_420_888 is supported now"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/mlkit/vision/common/InputImage;->zzb(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0
.end method

.method public static zza(I)I
    .locals 3

    const/16 v0, 0x10e

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return p0
.end method

.method public static zzb(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "Please provide a valid image"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/mlkit/vision/common/InputImage;->zza(I)I

    .line 4
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v6, 0x23

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    const-string v0, "Only JPEG and YUV_420_888 are supported now"

    .line 6
    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    aget-object p2, p2, v5

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-instance v0, Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p0, p1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertJpegToUpRightBitmap(Landroid/media/Image;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/graphics/Bitmap;I)V

    :goto_1
    move v6, p2

    move-object p2, v0

    goto :goto_3

    .line 11
    :cond_2
    array-length v1, v0

    move v4, v5

    :goto_2
    if-ge v4, v1, :cond_4

    aget-object v6, v0, v4

    .line 12
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/mlkit/vision/common/InputImage;

    .line 14
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v9

    move-object v6, v0

    move-object v7, p0

    move v10, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/media/Image;IIILandroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    aget-object p2, p2, v5

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 16
    :goto_3
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x5

    .line 17
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 18
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v5

    move v7, p1

    .line 19
    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzc(IIJIIII)V

    return-object p2
.end method

.method public static zzc(IIJIIII)V
    .locals 10

    const-string v0, "vision-common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    move-result-object v1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V

    return-void
.end method


# virtual methods
.method public getBitmapInternal()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zza:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getCoordinatesMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    return p0
.end method

.method public getMediaImage()Landroid/media/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/common/zzb;->zza()Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/common/zzb;->zzb()[Landroid/media/Image$Plane;

    move-result-object p0

    return-object p0
.end method

.method public getRotationDegrees()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    return p0
.end method
