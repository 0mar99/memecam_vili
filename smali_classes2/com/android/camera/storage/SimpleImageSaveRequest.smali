.class public final Lcom/android/camera/storage/SimpleImageSaveRequest;
.super Lcom/android/camera/storage/ImageSaveRequest;
.source "SimpleImageSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleImageSaveRequest"


# instance fields
.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaveRequest$Builder;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public parserParallelTaskData()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    :try_start_0
    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ExifTool;->appendExifToBitmap(Landroid/graphics/Bitmap;Ljava/io/OutputStream;ILandroid/hardware/camera2/CaptureResult;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "SimpleImageSaveRequest"

    const-string/jumbo v4, "updateExif error"

    .line 8
    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    sget-object v2, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    iput-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    return-void

    .line 11
    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    throw p0
.end method
