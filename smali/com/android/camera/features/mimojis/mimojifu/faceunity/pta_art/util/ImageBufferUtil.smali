.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;
.super Ljava/lang/Object;
.source "ImageBufferUtil.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final COLOR_FormatI420:I = 0x1

.field public static final COLOR_FormatNV21:I = 0x2

.field public static data:[B

.field public static imageHeight:I

.field public static imageWidth:I

.field public static mCameraNV21Byte:[B

.field public static rowData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromImage(Landroid/media/Image;I)[B
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 4
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    const/4 v5, 0x1

    .line 5
    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    const/4 v7, 0x2

    .line 6
    aget-object v8, v0, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 7
    aget-object v9, v0, v5

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    .line 8
    aget-object v10, v0, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    .line 9
    aget-object v11, v0, v3

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 10
    aget-object v12, v0, v5

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 11
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    sub-int/2addr v13, v14

    .line 12
    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    sub-int/2addr v14, v15

    .line 14
    sget-object v15, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    if-eqz v15, :cond_0

    array-length v15, v15

    mul-int v16, v1, v2

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v5, v16, 0x2

    if-ge v15, v5, :cond_1

    :cond_0
    mul-int v5, v1, v2

    mul-int/lit8 v5, v5, 0x3

    .line 15
    div-int/2addr v5, v7

    new-array v5, v5, [B

    sput-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    :cond_1
    if-ne v4, v1, :cond_3

    .line 16
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    mul-int v5, v1, v2

    invoke-virtual {v11, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v5, v3

    move v15, v5

    :goto_0
    mul-int v3, v1, v2

    if-ge v5, v3, :cond_2

    .line 17
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    invoke-virtual {v11, v3, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v15, v4

    add-int/2addr v5, v1

    goto :goto_0

    :goto_1
    if-ne v9, v3, :cond_4

    if-ne v10, v3, :cond_4

    .line 19
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    mul-int/2addr v1, v2

    invoke-virtual {v12, v3, v1, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    div-int/lit8 v3, v1, 0x4

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_4
    if-ne v9, v7, :cond_7

    if-ne v10, v7, :cond_7

    if-ne v6, v1, :cond_5

    .line 21
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    mul-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_5
    neg-int v3, v8

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 22
    :goto_2
    div-int/lit8 v6, v2, 0x2

    if-ge v3, v6, :cond_7

    add-int/2addr v4, v8

    .line 23
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_6

    .line 24
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    mul-int v7, v1, v2

    add-int/2addr v7, v5

    sub-int v9, v14, v4

    invoke-virtual {v0, v6, v7, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 25
    :cond_6
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    mul-int v7, v1, v2

    add-int/2addr v7, v5

    invoke-virtual {v0, v6, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/2addr v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 26
    :cond_7
    :goto_4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->mCameraNV21Byte:[B

    return-object v0
.end method

.method public static getNV21(Landroid/media/Image;)[B
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
