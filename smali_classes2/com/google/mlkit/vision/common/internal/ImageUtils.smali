.class public Lcom/google/mlkit/vision/common/internal/ImageUtils;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.3.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field public static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/ImageUtils;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-object v0
.end method


# virtual methods
.method public getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const v0, 0x32315659

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported image format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getMediaImage()Landroid/media/Image;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    return p0
.end method

.method public getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    const v1, 0x32315659

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/Image$Plane;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getUprightRotationMatrix(III)Landroid/graphics/Matrix;
    .locals 3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    neg-int v0, p1

    neg-int v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v0, p3, 0x5a

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    if-nez p3, :cond_2

    move p1, p2

    :cond_2
    int-to-float p2, v0

    div-float/2addr p2, v2

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 4
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public final zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "MLKitImageUtils"

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v0, "content"

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v3, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 6
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v6, v2

    .line 7
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :catch_0
    :goto_0
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 9
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v3, v1

    .line 10
    :goto_2
    :try_start_7
    sget-object v4, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to open file to read rotation meta data: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    const-string p1, "Orientation"

    .line 12
    invoke-virtual {v3, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 13
    :goto_4
    new-instance p1, Landroid/graphics/Matrix;

    .line 14
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 16
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_0

    move-object v5, v1

    goto :goto_6

    .line 17
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_5

    .line 18
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 19
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5

    .line 20
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_5

    .line 21
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 22
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5

    .line 23
    :pswitch_4
    invoke-virtual {p1, v8, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5

    :pswitch_5
    const/high16 v0, 0x43340000    # 180.0f

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_5
    move-object v5, p1

    goto :goto_6

    :pswitch_6
    new-instance p1, Landroid/graphics/Matrix;

    .line 25
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    .line 27
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq v7, p1, :cond_4

    .line 28
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, p1

    :cond_4
    return-object v7

    .line 29
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The image Uri could not be resolved."

    .line 30
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception p1

    .line 31
    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Could not open file: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
