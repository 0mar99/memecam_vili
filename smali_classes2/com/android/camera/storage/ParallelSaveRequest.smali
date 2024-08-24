.class public final Lcom/android/camera/storage/ParallelSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ParallelSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ParallelSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final SIZE_108M:I = 0x7270e00

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mSavePath:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/storage/ParallelSaveRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;Lcom/android/camera/storage/ParallelSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ParallelSaveRequest;-><init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/net/Uri;[BLcom/android/camera/Thumbnail;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    array-length p0, p1

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    :cond_0
    return-void
.end method

.method private isSaveDocument(Ljava/lang/String;ILandroid/net/Uri;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDocumentBean()Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v4

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getDocValue()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v0}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getImage()Lcom/android/zxing/PreviewImage;

    move-result-object v7

    .line 6
    invoke-virtual {v0}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getPoints()[F

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v11

    move-object v3, p0

    move v5, p2

    move-object v9, p1

    move-object v10, p3

    .line 8
    invoke-direct/range {v3 .. v11}, Lcom/android/camera/storage/ParallelSaveRequest;->parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "parseDocAndSave: error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "parseDocAndSave: documentBean == null || parameter == null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v12, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p6

    .line 1
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v2, v1

    const/4 v11, 0x0

    invoke-static {v1, v11, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse document E: shootOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", orientation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", photo bitmap = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", documentValue = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", previewImage data length = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", previewImage size = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", previewPoints = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v15

    .line 8
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v18

    .line 9
    invoke-static/range {p1 .. p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getRotateYUVWithBitmap(II)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v20

    move-object/from16 v16, v1

    move-object/from16 v19, p5

    .line 10
    invoke-virtual/range {v14 .. v20}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object v4

    .line 11
    sget-object v2, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse document: points = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    move-result-object v17

    .line 13
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v14

    sget-object v18, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->PPT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    const/16 v19, 0x0

    move-object v15, v1

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 14
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDocAndSave: drawing privacy watermark started"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 19
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v6, p8

    .line 20
    invoke-static {v1, v6, v2, v3, v12}, Lcom/android/camera/privacywatermark/PrivacyWatermarkUtils;->drawWatermark(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    .line 21
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDocAndSave: drawing privacy watermark end"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v6, p8

    .line 22
    :goto_0
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 23
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 24
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->removeCompressedThumbnail()V

    const/4 v15, 0x1

    .line 25
    invoke-virtual {v1, v15}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDocPhotoVersion(B)Z

    .line 26
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 28
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v7, Lcom/android/camera/EncodingQuality;->HIGH:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v7, v11}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v7

    invoke-virtual {v14, v3, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 29
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 31
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v2, v2

    int-to-long v2, v2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/storage/Storage;->addXmpData([BJ[FLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 32
    iget-boolean v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v2, :cond_2

    .line 33
    iget-wide v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move/from16 v7, p2

    invoke-static/range {v1 .. v10}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v1

    .line 34
    :cond_2
    array-length v2, v1

    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v10, v2, [B

    .line 35
    array-length v2, v1

    invoke-static {v1, v11, v10, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v1, v1

    array-length v3, v2

    invoke-static {v2, v11, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parse document X: "

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    .line 39
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 40
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v14, 0x0

    move-object v2, v10

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move/from16 v8, p2

    move-object v15, v10

    move v10, v11

    move-object v11, v14

    .line 41
    invoke-static/range {v1 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v2, p7

    .line 42
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    invoke-direct {v0, v12, v13, v1, v15}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    .line 44
    :cond_3
    iget-object v0, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;

    invoke-direct {v2, v1, v15}, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;-><init>(Landroid/net/Uri;[B)V

    invoke-interface {v0, v2}, Lcom/android/camera/storage/SaverCallback;->updateThumbnailExtras(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 45
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 46
    :cond_4
    :goto_2
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseDocAndSave: save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but doCropAndEnhance bitmap is null!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4080000000000000L    # 512.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri changed, so must try to create thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p4, p1, v0, p3, v1}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    array-length p4, p4

    int-to-long v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 6
    iget-object p4, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p4, p1, v1}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 p1, 0x2

    invoke-interface {p0, p3, p2, p1}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/net/Uri;Lcom/android/camera/Thumbnail;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    int-to-long p0, p0

    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureShotToViewCost(J)V

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algo_capture_total_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_image_save_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 4
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shot_2_view_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    const/4 v0, 0x4

    .line 8
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string v2, "image save onFinish"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/gallery3d/exif/ExifHelper;->clearCacheMap()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 11
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    .line 13
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saved image finished, timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static/range {v2 .. v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 2
    instance-of v0, p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 3
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_d

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-nez v2, :cond_1

    .line 7
    iget-object v6, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    .line 8
    invoke-static {v6}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/db/element/SaveTask;

    .line 11
    iget-object v7, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    .line 13
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    .line 15
    sget-object v6, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert full size picture:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_1
    iget v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    .line 17
    iget v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    .line 18
    iget-object v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v8}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v8

    .line 19
    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    add-int/2addr v9, v8

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v24, v7

    move v7, v6

    move/from16 v6, v24

    :goto_0
    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_2

    .line 21
    :cond_3
    iget-object v3, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->getResultUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 23
    sget-object v5, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "algo mark: uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v4, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "algo mark: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v4, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v4, v14, v5}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 26
    iget-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 27
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v5

    const/16 v9, 0xba

    if-ne v5, v9, :cond_4

    .line 28
    invoke-direct {v0, v3, v8, v4}, Lcom/android/camera/storage/ParallelSaveRequest;->isSaveDocument(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v15, v14

    :goto_1
    if-nez v15, :cond_7

    .line 29
    iget-boolean v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v5, :cond_5

    iget v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    mul-int/2addr v5, v9

    const v9, 0x7270e00

    if-ge v5, v9, :cond_5

    .line 30
    iget-object v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v13, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v15, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v17, v15

    move v15, v8

    move/from16 v16, v5

    invoke-static/range {v9 .. v18}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 31
    :cond_5
    iget-object v9, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    const/4 v12, 0x0

    iget-object v15, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    const/16 v19, 0x0

    move-object v13, v4

    move-object v14, v3

    move/from16 v16, v8

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v9 .. v19}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 32
    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 33
    iget-object v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-direct {v0, v8, v3, v5, v4}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    .line 34
    :cond_6
    iget-object v3, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0Oo;

    invoke-direct {v4, v0, v5}, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0Oo;-><init>(Lcom/android/camera/storage/ParallelSaveRequest;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Lcom/android/camera/storage/SaverCallback;->updateThumbnailExtras(Ljava/util/function/Consumer;)V

    .line 35
    :cond_7
    iget-object v3, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto/16 :goto_c

    .line 36
    :cond_8
    :goto_2
    iget-object v9, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_9
    iget-wide v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    invoke-static {v9, v10}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v9

    :goto_3
    move-object v13, v9

    .line 37
    iget-boolean v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v9, :cond_b

    .line 38
    iget-object v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    if-eqz v2, :cond_a

    move v12, v15

    goto :goto_4

    :cond_a
    move v12, v14

    :goto_4
    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    move/from16 v21, v7

    iget v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    move/from16 v22, v6

    iget-object v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v23, v13

    move-object v13, v3

    move v3, v14

    move-object v14, v4

    move v4, v15

    move v15, v8

    move/from16 v16, v5

    move/from16 v17, v7

    move-object/from16 v18, v6

    invoke-static/range {v9 .. v18}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    goto :goto_5

    :cond_b
    move/from16 v22, v6

    move/from16 v21, v7

    move-object/from16 v23, v13

    move v3, v14

    move v4, v15

    .line 39
    :goto_5
    iget-object v9, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-wide v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v13, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget-object v15, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    if-eqz v2, :cond_c

    move/from16 v19, v4

    goto :goto_6

    :cond_c
    move/from16 v19, v3

    :goto_6
    if-eqz v2, :cond_d

    move/from16 v20, v4

    goto :goto_7

    :cond_d
    move/from16 v20, v3

    :goto_7
    move-object/from16 v10, v23

    move v14, v8

    move/from16 v16, v5

    move/from16 v17, v22

    move/from16 v18, v21

    invoke-static/range {v9 .. v20}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZ)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 40
    invoke-static/range {v23 .. v23}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 41
    iget-boolean v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    const-wide v9, 0x4090e00000000000L    # 1080.0

    if-eqz v6, :cond_10

    move/from16 v6, v22

    int-to-double v11, v6

    move/from16 v7, v21

    int-to-double v13, v7

    .line 42
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    .line 43
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    .line 44
    iget-object v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v12, v8, v11, v5, v3}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 45
    iget-object v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez v12, :cond_e

    const-wide/16 v12, -0x1

    goto :goto_8

    :cond_e
    iget-object v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v12, v12

    int-to-long v12, v12

    :goto_8
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 46
    iget-object v12, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v12, v11, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    move v15, v4

    goto :goto_a

    .line 47
    :cond_f
    iget-object v11, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v11}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_9

    :cond_10
    move/from16 v7, v21

    move/from16 v6, v22

    :goto_9
    move v15, v3

    .line 48
    :goto_a
    iget-object v11, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v12, 0x2

    move-object/from16 v13, v23

    invoke-interface {v11, v5, v13, v12}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    if-eqz v2, :cond_11

    .line 49
    sget-object v3, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "algo mark: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    .line 52
    iget-object v3, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    .line 53
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v2, v5}, Lcom/android/camera/storage/SaverCallback;->tryUpdateThumbnailUri(Landroid/net/Uri;)V

    goto :goto_c

    :cond_11
    if-nez v15, :cond_15

    int-to-double v11, v6

    int-to-double v6, v7

    .line 54
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 56
    iget-object v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v6, v8, v2, v5, v3}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 57
    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez v3, :cond_12

    const-wide/16 v6, -0x1

    goto :goto_b

    :cond_12
    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v3, v3

    int-to-long v6, v3

    :goto_b
    invoke-virtual {v2, v6, v7}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 58
    iget-object v3, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v2, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 59
    :cond_13
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_15

    .line 60
    iget-object v6, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iget-object v9, v0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v6 .. v19}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->insertToParallelTaskProvider(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JIIILjava/lang/String;)V

    goto :goto_c

    :cond_14
    move-object/from16 v13, v23

    .line 61
    invoke-static {v13}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 62
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v3, 0x3

    invoke-interface {v2, v5, v13, v3}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 63
    :cond_15
    :goto_c
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v2, :cond_16

    const/16 v2, 0x9

    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    if-eq v2, v3, :cond_16

    .line 64
    iget-object v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 65
    :cond_16
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_17
    :goto_d
    return-void
.end method
