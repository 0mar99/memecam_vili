.class public Lcom/android/gallery3d/exif/ExifHelper;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BYTES_COPY_BUFFER_LENGTH:I = 0x800

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IMAGE_TYPE_ARW:I = 0x1

.field public static final IMAGE_TYPE_CR2:I = 0x2

.field public static final IMAGE_TYPE_DNG:I = 0x3

.field public static final IMAGE_TYPE_HEIF:I = 0xc

.field public static final IMAGE_TYPE_JPEG:I = 0x4

.field public static final IMAGE_TYPE_NEF:I = 0x5

.field public static final IMAGE_TYPE_NRW:I = 0x6

.field public static final IMAGE_TYPE_ORF:I = 0x7

.field public static final IMAGE_TYPE_PEF:I = 0x8

.field public static final IMAGE_TYPE_RAF:I = 0x9

.field public static final IMAGE_TYPE_RW2:I = 0xa

.field public static final IMAGE_TYPE_SRW:I = 0xb

.field public static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field public static final JPEG_SIGNATURE:[B

.field public static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "ExifHelper"

.field public static final mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/exif/ExifHelper;->JPEG_SIGNATURE:[B

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifHelper;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifHelper;->IDENTIFIER_EXIF_APP1:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_TYPE_FTYP:[B

    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_BRAND_MIF1:[B

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_BRAND_HEIC:[B

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearCacheMap()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method

.method public static extractExifFromHeif(Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->getLength()I

    move-result v2

    .line 2
    sget-object v3, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    sget-object p0, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 4
    :cond_1
    sget-object v3, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6
    :try_start_0
    new-instance v4, Lcom/android/gallery3d/exif/ExifHelper$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/exif/ExifHelper$1;-><init>(Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 v4, 0x21

    .line 7
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    .line 8
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a

    .line 9
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    .line 10
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    const/16 v0, 0x1d

    .line 12
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x1e

    .line 13
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x1f

    .line 14
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 16
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x13

    .line 17
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x18

    .line 18
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v0, v8

    move-object v6, v0

    :goto_0
    const-string v7, "ExifHelper"

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Heif meta: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_7

    int-to-long v6, v0

    .line 22
    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->seek(J)V

    new-array v0, v5, [B

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v5, :cond_6

    .line 24
    sget-object v8, Lcom/android/gallery3d/exif/ExifHelper;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v4, 0x6

    .line 25
    new-array v0, v0, [B

    const/4 v8, -0x1

    .line 26
    aput-byte v8, v0, v1

    const/4 v1, 0x1

    const/16 v9, -0x28

    .line 27
    aput-byte v9, v0, v1

    const/4 v1, 0x2

    .line 28
    aput-byte v8, v0, v1

    const/4 v1, 0x3

    const/16 v8, -0x1f

    .line 29
    aput-byte v8, v0, v1

    const/4 v1, 0x4

    add-int/lit8 v8, v4, 0x2

    int-to-char v8, v8

    .line 30
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v8, v9}, Lcom/android/gallery3d/exif/ExifHelper;->writeShortValue([BIILjava/nio/ByteOrder;)V

    .line 31
    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->seek(J)V

    .line 32
    invoke-virtual {p0, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, v4, :cond_4

    .line 33
    sget-object p0, Lcom/android/gallery3d/exif/ExifHelper;->mCacheBuffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v0

    .line 35
    :cond_4
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_8
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    new-array p0, v1, [B

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 40
    throw p0
.end method

.method public static getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifHelper"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 5
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifHelper;->isJpegFormat([B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifHelper;->isHeifFormat([B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getOrientation([B)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifHelper;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientationFromExif([B)I

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 3
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    :try_start_2
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifHelper;->extractExifFromHeif(Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;)[B

    move-result-object p0

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientationFromExif([B)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return v0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static getOrientationFromExif([B)I
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 1
    array-length v3, p0

    const/4 v4, 0x4

    const-string v5, "ExifHelper"

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ge v2, v3, :cond_8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 2
    aget-byte v1, p0, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_6

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xda

    if-ne v1, v3, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-static {p0, v2, v8, v0}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v3

    if-lt v3, v8, :cond_5

    add-int v9, v2, v3

    .line 4
    array-length v10, p0

    if-le v9, v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v10, 0xe1

    if-ne v1, v10, :cond_4

    if-lt v3, v7, :cond_4

    add-int/lit8 v1, v2, 0x2

    .line 5
    invoke-static {p0, v1, v4, v0}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v1

    const v10, 0x45786966

    if-ne v1, v10, :cond_4

    add-int/lit8 v1, v2, 0x6

    .line 6
    invoke-static {p0, v1, v8, v0}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_4
    move v1, v9

    goto :goto_0

    :cond_5
    :goto_1
    const-string p0, "Invalid length"

    .line 7
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_7
    :goto_3
    move v3, v0

    move v1, v2

    goto :goto_4

    :cond_8
    move v3, v0

    :goto_4
    if-le v3, v7, :cond_12

    .line 8
    invoke-static {p0, v1, v4, v0}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v2

    const v9, 0x49492a00    # 823968.0f

    if-eq v2, v9, :cond_9

    const v10, 0x4d4d002a    # 2.1495875E8f

    if-eq v2, v10, :cond_9

    const-string p0, "Invalid byte order"

    .line 9
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    if-ne v2, v9, :cond_a

    move v2, v6

    goto :goto_5

    :cond_a
    move v2, v0

    :goto_5
    add-int/lit8 v9, v1, 0x4

    .line 10
    invoke-static {p0, v9, v4, v2}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v4

    add-int/2addr v4, v8

    const/16 v9, 0xa

    if-lt v4, v9, :cond_11

    if-le v4, v3, :cond_b

    goto :goto_7

    :cond_b
    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    .line 11
    invoke-static {p0, v4, v8, v2}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v4

    :goto_6
    add-int/lit8 v9, v4, -0x1

    if-lez v4, :cond_12

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    .line 12
    invoke-static {p0, v1, v8, v2}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result v4

    const/16 v10, 0x112

    if-ne v4, v10, :cond_10

    add-int/2addr v1, v7

    .line 13
    invoke-static {p0, v1, v8, v2}, Lcom/android/gallery3d/exif/ExifHelper;->pack([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x6

    if-eq p0, v1, :cond_d

    if-eq p0, v7, :cond_c

    const-string p0, "Unsupported orientation"

    .line 14
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    const/16 p0, 0x10e

    return p0

    :cond_d
    const/16 p0, 0x5a

    return p0

    :cond_e
    const/16 p0, 0xb4

    return p0

    :cond_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v3, -0xc

    move v4, v9

    goto :goto_6

    :cond_11
    :goto_7
    const-string p0, "Invalid offset"

    .line 15
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    const-string p0, "Orientation not found"

    .line 16
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isHeifFormat([B)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x4

    new-array v5, v4, [B

    .line 4
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v4, :cond_b

    .line 5
    sget-object v6, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v5, 0x1

    cmp-long v7, v2, v5

    const-wide/16 v8, 0x10

    const-wide/16 v10, 0x8

    if-nez v7, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :cond_1
    move-wide v8, v10

    .line 8
    :cond_2
    :try_start_3
    array-length v7, p0

    int-to-long v12, v7

    cmp-long v7, v2, v12

    if-lez v7, :cond_3

    .line 9
    array-length p0, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v2, p0

    :cond_3
    sub-long/2addr v2, v8

    cmp-long p0, v2, v10

    if-gez p0, :cond_4

    .line 10
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v0

    :cond_4
    :try_start_5
    new-array p0, v4, [B

    const-wide/16 v7, 0x0

    move v9, v0

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x4

    .line 11
    div-long v11, v2, v11

    cmp-long v11, v7, v11

    if-gez v11, :cond_a

    .line 12
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v11, v4, :cond_5

    .line 13
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v0

    :cond_5
    cmp-long v11, v7, v5

    if-nez v11, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    :try_start_7
    sget-object v11, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_BRAND_MIF1:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    move v9, v12

    goto :goto_1

    .line 15
    :cond_7
    sget-object v11, Lcom/android/gallery3d/exif/ExifHelper;->HEIF_BRAND_HEIC:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v11, :cond_8

    move v10, v12

    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 16
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v12

    :cond_9
    :goto_2
    add-long/2addr v7, v5

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :cond_b
    :goto_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return v0

    :catchall_0
    move-exception p0

    .line 17
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "ExifHelper"

    const-string v2, "Exception parsing HEIF file type box."

    .line 18
    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return v0
.end method

.method public static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcom/android/gallery3d/exif/ExifHelper;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public static writeExifByFd(Ljava/io/FileDescriptor;ILandroid/location/Location;JI)V
    .locals 7

    const-string v0, "ExifHelper"

    if-nez p0, :cond_0

    const-string p0, "writeExifByFd: the given fd must not be null"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifHelper;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "writeExifByFd: the given fd must be seekable"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 6
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 8
    :try_start_3
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 9
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 10
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOO:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    sget-object p1, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiProduct(Ljava/lang/String;)Z

    .line 13
    :cond_2
    invoke-static {p5}, Lcom/xiaomi/camera/core/PictureInfo;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {v1, p5}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiMode(I)Z

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p1, p3, v2

    if-lez p1, :cond_5

    .line 15
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p5

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 16
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p5

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 17
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p5

    .line 18
    invoke-static {p1, p5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 19
    sget-object p5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p1, "+00:00"

    goto :goto_0

    :cond_4
    const-string p5, "XXX"

    invoke-static {p5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_0
    sget p5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    invoke-virtual {v1, p5, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 21
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p5

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    :cond_5
    if-eqz p2, :cond_7

    .line 22
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p3

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, p3, p4, v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 23
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 24
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double p5, p1, p3

    if-eqz p5, :cond_7

    cmpg-double p1, p1, p3

    if-gez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 25
    :goto_1
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_7
    const/4 p1, 0x0

    :try_start_4
    const-string p2, "temp"

    const-string p3, "jpg"

    .line 26
    invoke-static {p2, p3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 27
    sget p3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v2, v3, p3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 28
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 29
    :try_start_5
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 30
    :try_start_6
    invoke-static {p3, p4}, Lcom/android/gallery3d/exif/ExifHelper;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 31
    invoke-static {p3}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 32
    invoke-static {p4}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    .line 33
    :try_start_7
    sget p1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v2, v3, p1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 34
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 35
    :try_start_8
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 36
    :try_start_9
    invoke-virtual {v1, p1, p3}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 37
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 38
    invoke-static {p3}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    .line 39
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object p4, p3

    goto :goto_3

    :catch_0
    move-exception p4

    move-object v6, p3

    move-object p3, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    move-object p3, p1

    goto :goto_7

    :catch_1
    move-exception p3

    move-object v6, p3

    move-object p3, p1

    move-object p1, p4

    move-object p4, v6

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v6, p4

    move-object p4, p1

    :goto_4
    move-object p1, v6

    .line 40
    :goto_5
    :try_start_a
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeExifByFd: failed update exif for "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 41
    invoke-static {p3}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 42
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    :goto_6
    return-void

    :catchall_3
    move-exception p0

    move-object p4, p1

    .line 43
    :goto_7
    invoke-static {p3}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p4}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    .line 45
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 46
    throw p0

    :catchall_4
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_9

    :catchall_5
    move-exception p0

    move-object p4, p1

    :goto_8
    move-object p1, p3

    goto :goto_b

    :catch_4
    move-exception p0

    move-object p4, p1

    :goto_9
    move-object p1, p3

    goto :goto_a

    :catchall_6
    move-exception p0

    move-object p4, p1

    goto :goto_b

    :catch_5
    move-exception p0

    move-object p4, p1

    :goto_a
    :try_start_b
    const-string p2, "writeExifByFd: failed to backup the original file"

    .line 47
    invoke-static {v0, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 48
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 49
    invoke-static {p4}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    :catchall_7
    move-exception p0

    .line 50
    :goto_b
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/InputStream;)V

    .line 51
    invoke-static {p4}, Lcom/android/gallery3d/exif/ExifHelper;->closeQuietly(Ljava/io/OutputStream;)V

    .line 52
    throw p0

    :catch_6
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeExifByFd: failed to update exif for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_8
    move-exception p1

    .line 54
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p2

    :try_start_d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeExifByFilePath: failed to extract exif fd "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ExifHelper"

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/camera/Util;->isPathExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 5
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 6
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOO:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/android/gallery3d/exif/ExifHelper;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiProduct(Ljava/lang/String;)Z

    :cond_1
    cmp-long p1, p3, v4

    if-lez p1, :cond_3

    .line 9
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, p1, p3, p4, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 10
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, p1, p3, p4, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 11
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, p1, p3, p4, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 12
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p3

    .line 13
    invoke-static {p1, p3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 14
    sget-object p3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "+00:00"

    goto :goto_0

    :cond_2
    const-string p3, "XXX"

    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_0
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    invoke-virtual {v0, p3, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_3
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p3

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, p3, p4, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 17
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 18
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmpl-double p4, p2, v2

    if-eqz p4, :cond_5

    cmpg-double p2, p2, v2

    if-gez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    move p2, p1

    .line 19
    :goto_1
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :cond_5
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".tmp"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "writeExifByFilePath: failed rename to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 24
    :cond_6
    :try_start_2
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 25
    :try_start_3
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    :try_start_4
    invoke-virtual {v0, p3, p4}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :try_start_5
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 28
    :try_start_7
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p4

    :try_start_8
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p3

    :try_start_a
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 29
    :try_start_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "writeExifByFilePath: failed update exif for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 30
    :goto_4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-void

    :goto_5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 31
    throw p0

    :catch_1
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeExifByFilePath: failed to update exif info for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeExifByFilePath: failed to extract exif from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 34
    :cond_7
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeExifByFilePath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist or its content is empty"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeShortValue([BIILjava/nio/ByteOrder;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    .line 2
    invoke-static {p0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    int-to-char p1, p2

    .line 3
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    int-to-char p1, p2

    .line 5
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method
