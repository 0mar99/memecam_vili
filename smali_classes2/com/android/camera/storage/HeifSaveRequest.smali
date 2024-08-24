.class public Lcom/android/camera/storage/HeifSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;
.source "HeifSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mHandler:Landroid/os/Handler;

.field public mHeight:I

.field public mImageWriter:Landroid/media/ImageWriter;

.field public mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

.field public mSize:I

.field public mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mWidth:I

.field public mYuvImage:Landroid/media/Image;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/storage/HeifSaveRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    .line 3
    iput-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 4
    iput-object p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    iput-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    .line 6
    iput-object p5, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p4

    if-ne p3, p4, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    .line 10
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    .line 12
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    .line 13
    :goto_0
    iget p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSize:I

    .line 14
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HeifSaveRequest: size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildExif(Landroid/hardware/camera2/CaptureResult;IIIJLandroid/location/Location;)[B
    .locals 12

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    if-eqz p1, :cond_0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v10, v0

    .line 2
    invoke-static/range {v1 .. v11}, Lcom/android/camera/ExifTool;->appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;Z)V

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 5
    instance-of v3, v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    if-eqz v3, :cond_2

    .line 6
    move-object v3, v0

    check-cast v3, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeExifForHeif()V

    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildExif: resultLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string/jumbo v4, "null"

    goto :goto_0

    :cond_1
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_2
    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string v3, "buildExif: ExifOutputStream is required"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildExif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method

.method private imageToBuffer(Landroid/media/Image;Landroid/util/Size;)[B
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_1

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 6
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v6

    and-int/lit8 v0, v0, -0x4

    aput v0, p0, v5

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v6

    and-int/lit8 v2, v2, -0x4

    aput v2, p0, v0

    .line 8
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, p0, v6

    .line 9
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    aput p2, p0, v1

    .line 10
    invoke-static {p1, p0}, Lcom/android/camera/Util;->getSubYuvImage(Landroid/media/Image;[I)[B

    move-result-object p0

    return-object p0

    :cond_1
    mul-int p1, v0, v2

    mul-int/lit8 p2, p1, 0x3

    .line 11
    div-int/2addr p2, v6

    sub-int v1, p2, p1

    .line 12
    new-array p2, p2, [B

    .line 13
    aget-object v3, p0, v5

    invoke-static {v3, v0, v2}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 14
    invoke-virtual {v3, p2, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 15
    aget-object p0, p0, v6

    div-int/2addr v0, v6

    div-int/2addr v2, v6

    invoke-static {p0, v0, v2}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 17
    invoke-virtual {p0, p2, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p2

    .line 18
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p1, "imageToBuffer: require 3 planes yuv image"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private insertHeifFile(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    .line 1
    sget-object v1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeHeifFile: E.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    if-eqz p3, :cond_0

    .line 2
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".HEIC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    move-object/from16 v14, p8

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v6, "image/heic"

    move-object/from16 v2, p4

    move-wide/from16 v4, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, v17

    move/from16 v15, v18

    .line 4
    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v1

    move-object v11, v2

    goto :goto_0

    .line 6
    :catch_0
    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string v3, "insert heif image uri failed on R"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move-object/from16 v11, v16

    goto :goto_0

    :cond_0
    move-object/from16 v10, v16

    move-object v11, v10

    :goto_0
    if-eqz v11, :cond_1

    .line 7
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-object/from16 v3, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object v4, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v3, v16

    move-object v4, v3

    :goto_1
    if-eq v7, v8, :cond_2

    .line 8
    iget-object v5, v0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/storage/HeifSaveRequest;->saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Ljava/io/FileDescriptor;Landroid/os/Handler;III)Z

    move-result v0

    goto :goto_2

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p12

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/storage/HeifSaveRequest;->saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Ljava/io/FileDescriptor;Landroid/util/Size;Landroid/os/Handler;III)Z

    move-result v0

    .line 12
    :goto_2
    invoke-static {v11}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    sget-object v1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeHeifFile: X.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    move-object/from16 v16, v10

    :cond_3
    return-object v16
.end method

.method private saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Ljava/io/FileDescriptor;Landroid/os/Handler;III)Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p3, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {p3, p4, p6, p7, v3}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p4, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {p4, p3, p6, p7, v3}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/lang/String;III)V

    move-object p3, p4

    .line 4
    :goto_0
    iget-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p4

    .line 6
    invoke-virtual {p3, p5}, Landroidx/heifwriter/HeifWriter$Builder;->setHandler(Landroid/os/Handler;)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3, p8}, Landroidx/heifwriter/HeifWriter$Builder;->setQuality(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroidx/heifwriter/HeifWriter$Builder;->setRotation(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter$Builder;->build()Landroidx/heifwriter/HeifWriter;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->getInputSurface()Landroid/view/Surface;

    move-result-object p4

    const/4 p5, 0x2

    .line 8
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p6

    invoke-static {p4, p5, p6}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    .line 9
    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->start()V

    .line 10
    sget-object p4, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.start cost "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, v0

    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p4, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    if-eqz p2, :cond_1

    .line 12
    array-length p1, p2

    if-lez p1, :cond_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 14
    array-length p1, p2

    invoke-virtual {p3, v2, p2, v2, p1}, Landroidx/heifwriter/HeifWriter;->addExifData(I[BII)V

    .line 15
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.addExifData cost "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, p4

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 16
    :cond_1
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "saveHeif: no exif data"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p4, 0x0

    .line 18
    invoke-virtual {p3, p4, p5}, Landroidx/heifwriter/HeifWriter;->stop(J)V

    .line 19
    sget-object p4, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.stop cost "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, p1

    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 21
    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->close()V

    .line 22
    sget-object p3, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.close cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p1

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "saveHeif exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v2

    .line 24
    :goto_2
    iget-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p2}, Landroid/media/ImageWriter;->close()V

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    .line 27
    :cond_2
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    const-string/jumbo p3, "saveHeif: cost %dms"

    invoke-static {p0, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1
.end method

.method private saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Ljava/io/FileDescriptor;Landroid/util/Size;Landroid/os/Handler;III)Z
    .locals 5

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p3, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {p3, p4, p7, p8, v3}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance p4, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {p4, p3, p7, p8, v3}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/lang/String;III)V

    move-object p3, p4

    .line 31
    :goto_0
    iget-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p4

    .line 32
    invoke-virtual {p4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p4

    .line 33
    invoke-virtual {p3, p6}, Landroidx/heifwriter/HeifWriter$Builder;->setHandler(Landroid/os/Handler;)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3, p9}, Landroidx/heifwriter/HeifWriter$Builder;->setQuality(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroidx/heifwriter/HeifWriter$Builder;->setRotation(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter$Builder;->build()Landroidx/heifwriter/HeifWriter;

    move-result-object p3

    .line 34
    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->start()V

    .line 35
    sget-object p4, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "HeifWriter.start cost "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    sub-long/2addr p7, v0

    invoke-virtual {p6, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    .line 37
    invoke-direct {p0, p1, p5}, Lcom/android/camera/storage/HeifSaveRequest;->imageToBuffer(Landroid/media/Image;Landroid/util/Size;)[B

    move-result-object p0

    .line 38
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "prepare buffer cost %dms"

    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p8

    sub-long/2addr p8, p6

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    aput-object p6, p5, v3

    invoke-static {p1, p4, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    const/16 p1, 0x23

    .line 40
    invoke-virtual {p3, p1, p0}, Landroidx/heifwriter/HeifWriter;->addYuvBuffer(I[B)V

    .line 41
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p1, "HeifWriter.addYuvBuffer cost %dms"

    new-array p6, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    sub-long/2addr p7, p4

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p6, v3

    invoke-static {p0, p1, p6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_1

    .line 42
    array-length p0, p2

    if-lez p0, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 44
    array-length p4, p2

    invoke-virtual {p3, v3, p2, v3, p4}, Landroidx/heifwriter/HeifWriter;->addExifData(I[BII)V

    .line 45
    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.addExifData cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p0

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :cond_1
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "saveHeif: no exif data"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 p4, 0x0

    .line 48
    invoke-virtual {p3, p4, p5}, Landroidx/heifwriter/HeifWriter;->stop(J)V

    .line 49
    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.stop cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p0

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 51
    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->close()V

    .line 52
    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HeifWriter.close cost "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p0

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "saveHeif exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v3

    .line 54
    :goto_2
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v3

    const-string/jumbo p3, "saveHeif: cost %dms"

    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSize:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    iget-object v1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iget-object v2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;->onSaveFinish(Landroid/media/Image;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    .line 3
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "image save onFinish"

    invoke-static {v3, v0, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algo_capture_total_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algo_image_save_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shot_2_view_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 6
    invoke-virtual {v0, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x5

    .line 9
    invoke-static/range {v1 .. v6}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/gallery3d/exif/ExifHelper;->clearCacheMap()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    .line 12
    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 13
    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    .line 14
    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 15
    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    .line 16
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->getSize()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    .line 17
    iput-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 28

    move-object/from16 v14, p0

    .line 1
    iget-object v0, v14, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v15

    .line 2
    invoke-static {v15}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3
    iget-object v0, v14, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDateTakenTime()J

    move-result-wide v9

    .line 4
    iget-object v0, v14, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v16

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v17

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v18

    .line 8
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v1, v11

    .line 9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v1, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string/jumbo v2, "save: E. path=%s quality=%d jpegRotation=%d"

    .line 10
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 12
    iget-object v2, v14, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget v3, v14, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v4, v14, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move-object/from16 v1, p0

    move/from16 v5, v17

    move-wide v6, v9

    move v11, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/storage/HeifSaveRequest;->buildExif(Landroid/hardware/camera2/CaptureResult;IIIJLandroid/location/Location;)[B

    move-result-object v3

    .line 13
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare exif cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v19

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v8

    .line 15
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveHeifInfo: E. update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "|"

    if-eqz v8, :cond_2

    .line 16
    invoke-virtual {v8}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-static {v13, v11}, Lcom/android/camera/storage/Storage;->generateFileTempPath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v8}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 20
    iget-object v4, v14, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 21
    invoke-static {v4, v7, v15}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 22
    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 23
    invoke-static {v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v4

    .line 24
    iget-object v2, v14, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iget v1, v14, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v11, v14, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-wide v6, v9

    move-object v10, v8

    move/from16 v8, v17

    move-object v9, v0

    move-object/from16 v24, v10

    move/from16 v10, v21

    move-object/from16 v12, v18

    move-object/from16 v20, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/storage/HeifSaveRequest;->insertHeifFile(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v9

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_1

    .line 26
    :try_start_0
    invoke-static {v0, v15}, Lcom/android/camera/FileCompat;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 27
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "renameFile failed"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    iget-object v1, v14, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget v7, v14, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v8, v14, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move-object/from16 v2, v19

    move-object v3, v15

    move-object/from16 v4, v20

    move-object/from16 v5, v18

    move/from16 v6, v17

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->updateHeifInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;III)Landroid/net/Uri;

    .line 29
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveHeifInfo: X. update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 30
    :cond_1
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to save heif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 32
    :goto_1
    iget-object v0, v14, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    move-object/from16 v11, v24

    invoke-static {v0, v11}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    .line 33
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v1, v8

    .line 34
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v1, v7

    const-string/jumbo v2, "save: X. path=%s quality=%d jpegRotation=%d"

    .line 35
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    :cond_2
    :goto_2
    move-object v12, v6

    move v6, v11

    const/4 v7, 0x2

    move-object v11, v8

    const/4 v8, 0x0

    .line 36
    invoke-static {v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v4

    .line 37
    iget-object v2, v14, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iget v0, v14, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v5, v14, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move-object/from16 v1, p0

    move/from16 v19, v5

    move-object v5, v13

    move-wide v6, v9

    move v10, v8

    move/from16 v8, v17

    move-object v9, v15

    move v15, v10

    move v10, v0

    move-object/from16 v25, v11

    move/from16 v11, v19

    move-object/from16 v26, v12

    move-object/from16 v12, v18

    move-object/from16 v27, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/storage/HeifSaveRequest;->insertHeifFile(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 38
    iget-object v1, v14, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object v1, v14, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v15}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 40
    iget-object v2, v14, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_3

    .line 41
    :cond_3
    iget-object v1, v14, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 42
    :cond_4
    :goto_3
    iget-object v1, v14, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    move-object/from16 v2, v27

    const/4 v3, 0x2

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    move-object/from16 v1, v25

    if-eqz v1, :cond_5

    .line 43
    sget-object v3, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algo mark: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    .line 46
    iget-object v3, v14, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    .line 47
    :cond_5
    sget-object v1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveHeifInfo: X. added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method
