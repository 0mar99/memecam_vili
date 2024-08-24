.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Resizer;,
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x1000

.field public static final FILE_VERSION:I = 0x2

.field public static final LAST_THUMB_FILENAME:Ljava/lang/String; = "last_thumb"

.field public static final RETRY_CREATE_THUMBNAIL_INTERVAL_TIME:I = 0x14

.field public static final RETRY_CREATE_THUMBNAIL_TIME:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "Thumbnail"

.field public static final THUMBNAIL_DELETED:I = 0x2

.field public static final THUMBNAIL_FAIL_FROM_FILE:I = 0x3

.field public static final THUMBNAIL_FOUND:I = 0x1

.field public static final THUMBNAIL_NOT_FOUND:I = 0x0

.field public static final THUMBNAIL_SIZE_DEFAULT:I = 0x438

.field public static final THUMBNAIL_USE_FROM_FILE:I = -0x1

.field public static final THUMBNAIL_USE_FROM_PPP:I = -0x2

.field public static final sLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public fileSize:J

.field public gifHeight:I

.field public gifWidth:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mFromFile:Z

.field public mIsGif:Z

.field public mUri:Landroid/net/Uri;

.field public mWaitingForUri:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mIsGif:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/Thumbnail;->gifWidth:I

    .line 6
    iput v0, p0, Lcom/android/camera/Thumbnail;->gifHeight:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/android/camera/Thumbnail;->fileSize:J

    .line 8
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 9
    invoke-static {p2, p3, p4}, Lcom/android/camera/Thumbnail;->adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Failed to rotate thumbnail"

    const-string v1, "Thumbnail"

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    cmpl-float v6, v4, v5

    if-nez v6, :cond_0

    return-object p0

    :cond_0
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v4, v5

    :cond_1
    div-float/2addr v2, v4

    float-to-int v2, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 4
    rem-int/lit16 v6, p1, 0xb4

    if-eqz v6, :cond_2

    move v7, v2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v2

    move v7, v3

    .line 5
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v5, v4

    .line 7
    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 8
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, p1

    .line 9
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, v6

    div-float/2addr p1, v4

    int-to-float v2, v7

    div-float/2addr v2, v4

    .line 10
    invoke-virtual {v8, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_3
    move p2, v5

    .line 11
    :goto_1
    invoke-virtual {v8, p2, v5, p1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p1, 0x0

    .line 12
    :try_start_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 13
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 15
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 18
    invoke-virtual {v2, p0, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 20
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 21
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object p1
.end method

.method public static createBitmap([BIZI)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "Thumbnail"

    .line 1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4
    array-length p3, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    rem-int/lit16 p1, p1, 0x168

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 6
    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 10
    invoke-virtual {v8, p1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_1
    if-eqz p2, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 13
    invoke-virtual {p3, p1, p2, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 14
    invoke-virtual {v8, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    :try_start_0
    const-string p1, "createBitmap:createBitmap start "

    .line 15
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p0

    .line 17
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap: createBitmap end"

    .line 18
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p0, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to rotate thumbnail"

    .line 20
    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object p0
.end method

.method public static createMediaFromCursor(Landroid/database/Cursor;)Lcom/android/camera/Thumbnail$Media;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v5, 0x2e

    .line 4
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 5
    new-instance v15, Lcom/android/camera/Thumbnail$Media;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v7, 0x4

    .line 6
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v7, 0x5

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v7, 0x6

    .line 8
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v2, 0x7

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object v2, v15

    move v5, v6

    move-wide v6, v9

    move v9, v12

    move v10, v13

    move v12, v1

    move-wide/from16 v13, v16

    invoke-direct/range {v2 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLjava/lang/String;IIZZJ)V

    return-object v15

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaFromCursor file maybe deleted, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "Failed to create thumbnail from null bitmap"

    .line 11
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 3

    const/16 v0, 0xb

    if-le v0, p2, :cond_0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 4
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Thumbnail"

    const-string v2, "failed to extract thumbnail from exif"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 p2, 0x0

    .line 9
    array-length v1, p0

    invoke-static {p0, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    :cond_2
    invoke-static {p3, v0, p1, p4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public static createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 19

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailFromUri() , uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Thumbnail"

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/images/media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v9, :cond_0

    const-string v10, "_id"

    const-string v11, "_data"

    const-string/jumbo v12, "orientation"

    const-string/jumbo v13, "width"

    const-string v14, "height"

    const-string v15, "_size"

    const-string v16, "is_trashed"

    .line 5
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v10, "_id"

    const-string v11, "_data"

    const-string/jumbo v12, "width"

    const-string v13, "height"

    const-string v14, "_size"

    const-string/jumbo v15, "resolution"

    const-string v16, "is_trashed"

    .line 6
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 8
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 9
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v6, 0x6

    .line 10
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media item "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " has already been trashed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    .line 13
    :cond_2
    :try_start_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    .line 14
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_1

    :cond_3
    move v11, v5

    :goto_1
    const/4 v12, 0x3

    if-eqz v9, :cond_4

    .line 15
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_2

    :cond_4
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_2
    const/4 v14, 0x4

    if-eqz v9, :cond_5

    .line 16
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_3

    :cond_5
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    :goto_3
    const/4 v15, 0x5

    if-eqz v9, :cond_6

    .line 17
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v4, v14

    goto :goto_4

    :cond_6
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    :goto_4
    if-eqz v13, :cond_7

    if-nez v12, :cond_8

    :cond_7
    if-nez v9, :cond_8

    .line 18
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    const-string/jumbo v15, "x"

    .line 19
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 20
    array-length v15, v14

    if-ne v15, v10, :cond_8

    const/4 v10, 0x0

    .line 21
    aget-object v12, v14, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v10, 0x1

    .line 22
    aget-object v12, v14, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    move v15, v13

    const/4 v10, 0x1

    move-wide/from16 v17, v4

    move v4, v11

    move v5, v12

    move-wide v11, v2

    move-wide/from16 v2, v17

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_9

    .line 23
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw v2

    :cond_a
    move-wide v11, v2

    move-object v6, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_6
    if-eqz v1, :cond_b

    .line 24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v10, :cond_12

    if-eqz v9, :cond_f

    .line 25
    invoke-static {v6}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const v10, 0x7f1205eb

    move-object/from16 v13, p0

    .line 27
    invoke-virtual {v13, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    move-object/from16 v10, p0

    move v13, v4

    move-object v14, v6

    move v8, v15

    move-object v15, v1

    .line 28
    invoke-static/range {v10 .. v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getMiniKindThumbnail(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v13, 0x1

    move/from16 v17, v8

    move-object v8, v1

    move/from16 v1, v17

    goto :goto_7

    :cond_c
    move-object/from16 v13, p0

    :cond_d
    move v1, v15

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_7
    if-nez v8, :cond_e

    .line 30
    invoke-static {v6, v13}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_e
    if-nez v8, :cond_10

    if-eqz v6, :cond_10

    const-string v10, ".HEIC"

    .line 31
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 32
    invoke-static {v6, v1, v5, v4}, Lcom/android/camera/Thumbnail;->getScaledBitmapFromFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_8

    :cond_f
    move v1, v15

    .line 33
    invoke-static {v6, v1, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_10

    const/4 v1, 0x1

    .line 34
    invoke-static {v6, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_10
    :goto_8
    move/from16 v1, p2

    const/4 v4, 0x0

    .line 35
    invoke-static {v0, v8, v4, v1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    if-eqz v9, :cond_11

    if-eqz v6, :cond_11

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x2e

    .line 38
    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    .line 40
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailFromUri() returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    const-string v0, "createThumbnailFromUri() returned: null"

    .line 41
    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static createVideoThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 4
    invoke-virtual {v1, p2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    const/16 p0, 0x18

    .line 5
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_3

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, p4

    move p2, p5

    goto :goto_2

    :cond_3
    :goto_1
    move p2, p4

    move p1, p5

    .line 6
    :goto_2
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 7
    new-instance p3, Lcom/android/camera/Thumbnail$Resizer;

    invoke-direct {p3, p0, v0}, Lcom/android/camera/Thumbnail$Resizer;-><init>(Landroid/util/Size;Lcom/android/camera/Thumbnail$1;)V

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    invoke-static {p0}, Lcom/xiaomi/compat/common/ImageDecoderCompat;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_4
    const/16 p0, 0x12

    .line 11
    :try_start_3
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p0, 0x13

    .line 12
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 13
    new-instance p5, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {p5}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 14
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p5, p0}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    move-object p0, v1

    .line 15
    invoke-static/range {p0 .. p5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getFrameAtTime(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    .line 17
    :cond_5
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "both fp, fd, and uri are null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Thumbnail"

    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getCameraBucketIds()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastMedia(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 11

    const-string v0, "android:query-arg-limit"

    const-string v1, "external"

    .line 1
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    const-string/jumbo v3, "orientation"

    const-string v4, "datetaken"

    const-string v5, "_data"

    const-string/jumbo v6, "width"

    const-string v7, "height"

    const-string v8, "media_type"

    const-string v9, "_size"

    .line 2
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    const-string v3, "is_favorite != -1 AND "

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "((("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime_type=\'image/jpeg\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'image/heic\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime_type=\'image/gif\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND media_type = 1)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR media_type = 3)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Thumbnail;->getCameraBucketIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_size"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > 0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "datetaken DESC,_id DESC"

    const-string v6, "android:query-arg-sql-sort-order"

    .line 14
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android:query-arg-sql-selection"

    .line 15
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 16
    :try_start_0
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_1
    if-eqz v5, :cond_3

    .line 18
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 19
    invoke-static {v5}, Lcom/android/camera/Thumbnail;->createMediaFromCursor(Landroid/database/Cursor;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    .line 20
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    .line 21
    :try_start_2
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz p0, :cond_7

    .line 23
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->createMediaFromCursor(Landroid/database/Cursor;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    if-eqz v5, :cond_5

    .line 25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz p0, :cond_6

    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v5

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    .line 27
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz p0, :cond_a

    .line 28
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v0, v3

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v0, v3

    move-object v5, v0

    :goto_1
    :try_start_4
    const-string v1, "Thumbnail"

    const-string v2, "getLastImageThumbnail error"

    .line 29
    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_9

    .line 30
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v0, :cond_a

    .line 31
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_2
    return-object v3

    :catchall_3
    move-exception p0

    :goto_3
    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_b

    .line 32
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v0, :cond_c

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_c
    throw p0
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;Lcom/android/camera/Thumbnail$Media;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-nez p3, :cond_0

    .line 2
    invoke-static {v7}, Lcom/android/camera/Thumbnail;->getLastMedia(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const/4 v3, -0x2

    const/4 v8, 0x3

    const-string v9, "Thumbnail"

    const/4 v10, 0x0

    if-nez v2, :cond_2

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v0

    if-lt v0, v8, :cond_1

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/Thumbnail;->getLatestThumbnailFromPPP(J)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    aput-object v0, p1, v10

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastThumbnailFromContentResolver(0): imageUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v0, "getLastThumbnailFromContentResolver: lastUri = null"

    .line 7
    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 8
    :cond_2
    iget-boolean v4, v2, Lcom/android/camera/Thumbnail$Media;->isVideo:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v11, v5

    goto :goto_1

    :cond_3
    move-object v11, v2

    .line 9
    :goto_1
    iget-boolean v4, v2, Lcom/android/camera/Thumbnail$Media;->isVideo:Z

    if-eqz v4, :cond_4

    move-object v12, v2

    goto :goto_2

    :cond_4
    move-object v12, v5

    :goto_2
    const/4 v2, -0x1

    const/4 v13, 0x1

    if-eqz v11, :cond_9

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v4

    if-lt v4, v8, :cond_5

    .line 11
    iget-wide v14, v11, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    invoke-static {v14, v15}, Lcom/android/camera/Thumbnail;->getLatestThumbnailFromPPP(J)Lcom/android/camera/Thumbnail;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12
    aput-object v4, p1, v10

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnailFromContentResolver(1): imageUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    if-eqz v1, :cond_6

    .line 14
    iget-object v3, v11, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnailFromContentResolver: imageUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_6
    iget-object v14, v11, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    .line 17
    invoke-static {v14}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f1205eb

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    iget-wide v2, v11, Lcom/android/camera/Thumbnail$Media;->id:J

    iget v4, v11, Lcom/android/camera/Thumbnail$Media;->orientation:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v5, v14

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Thumbnail;->getMiniKindThumbnailByP(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_7
    iget-wide v0, v11, Lcom/android/camera/Thumbnail$Media;->id:J

    invoke-static {v7, v0, v1, v13, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    move-object v1, v0

    if-nez v1, :cond_8

    .line 22
    :try_start_0
    invoke-static {v14, v13}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "exception in createImageThumbnail"

    .line 23
    invoke-static {v9, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    if-nez v1, :cond_d

    if-eqz v14, :cond_d

    const-string v0, ".HEIC"

    .line 24
    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    iget v0, v11, Lcom/android/camera/Thumbnail$Media;->width:I

    iget v1, v11, Lcom/android/camera/Thumbnail$Media;->height:I

    iget v2, v11, Lcom/android/camera/Thumbnail$Media;->orientation:I

    invoke-static {v14, v0, v1, v2}, Lcom/android/camera/Thumbnail;->getScaledBitmapFromFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 26
    iget-object v3, v12, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnailFromContentResolver: videoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 28
    :cond_a
    iget-object v1, v12, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 29
    invoke-static {v1}, Lcom/android/camera/jcodec/MP4UtilEx;->readCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readCover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v5, :cond_c

    .line 31
    iget-object v1, v12, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v0, v1, v10}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, v0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_5

    :cond_c
    move-object v1, v5

    :goto_5
    move-object v11, v12

    .line 33
    :cond_d
    :goto_6
    iget-object v0, v11, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v0, v7}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastThumbnailFromContentResolver: lastMedia = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_10

    .line 35
    iget-object v0, v11, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v0, v1, v10, v10}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    aput-object v0, p1, v10

    .line 36
    aget-object v0, p1, v10

    if-eqz v0, :cond_f

    if-eq v11, v12, :cond_e

    .line 37
    iget-boolean v0, v11, Lcom/android/camera/Thumbnail$Media;->isGif:Z

    if-eqz v0, :cond_e

    .line 38
    aget-object v0, p1, v10

    invoke-virtual {v0, v13}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    .line 39
    aget-object v0, p1, v10

    iget v1, v11, Lcom/android/camera/Thumbnail$Media;->width:I

    iget v2, v11, Lcom/android/camera/Thumbnail$Media;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Thumbnail;->setGifSize(II)V

    .line 40
    :cond_e
    aget-object v0, p1, v10

    iget-wide v1, v11, Lcom/android/camera/Thumbnail$Media;->fileSize:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    :cond_f
    return v13

    :cond_10
    return v8

    :cond_11
    const/4 v0, 0x2

    return v0
.end method

.method public static getLastThumbnailFromFile(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Thumbnail"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    .line 1
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "last_thumb"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v7, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v8, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "getLastThumbnailFromFile() returned null "

    .line 7
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 11
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-object v3

    :cond_2
    :try_start_4
    const-string/jumbo v12, "version"

    .line 13
    invoke-virtual {v10, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v12, "0"

    .line 14
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    const/4 v12, 0x0

    .line 15
    :goto_0
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getLastThumbnailFromFile: version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    const/4 v14, -0x1

    if-lt v12, v13, :cond_4

    .line 16
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    .line 17
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastThumbnailFromFile: isGif:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getLastThumbnailFromFile: gifWidth:"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 21
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getLastThumbnailFromFile: gifHeight:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v5, v14

    move v6, v5

    const/4 v14, 0x0

    :goto_1
    const/4 v13, 0x2

    if-lt v12, v13, :cond_5

    .line 22
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 23
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLastThumbnailFromFile: fileSize:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-wide/16 v12, -0x1

    .line 24
    :goto_2
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    if-eqz v1, :cond_8

    .line 25
    invoke-static {v10, v1}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-static {v0, v10}, Lcom/android/camera/storage/MediaProviderUtil;->isMediaItemTrashed(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    :cond_6
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    const-string v0, "getLastThumbnailFromFile: invalid uri or trashed file"

    .line 28
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 29
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 30
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 32
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    return-object v3

    .line 34
    :cond_8
    :try_start_6
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 36
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 39
    sget-object v1, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    sget-object v1, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_9
    const/4 v1, 0x0

    .line 41
    invoke-static {v10, v0, v1, v1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {v0, v14}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    .line 43
    invoke-virtual {v0, v5, v6}, Lcom/android/camera/Thumbnail;->setGifSize(II)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    .line 45
    invoke-virtual {v0, v12, v13}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 46
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastThumbnailFromFile() returned: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v9, v3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v9, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v9, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v8, v3

    move-object v9, v8

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object v8, v3

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v8, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v3

    move-object v9, v8

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_3
    move-object v9, v8

    .line 47
    :goto_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop try to get bitmap, Thread is interrupted. path="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 48
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 51
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_b
    return-object v3

    :catch_8
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_5
    move-object v9, v8

    .line 53
    :goto_6
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to load bitmap. "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 54
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 55
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 57
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    sget-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_c
    return-object v3

    :catchall_3
    move-exception v0

    :goto_7
    move-object v3, v7

    .line 59
    :goto_8
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 60
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 62
    sget-object v1, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 63
    sget-object v1, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    :cond_d
    throw v0
.end method

.method public static getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/android/camera/Thumbnail;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_1
    invoke-static {p0, v3, v0}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v3

    aput-object v3, p1, v0

    .line 7
    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getLatestThumbnailFromPPP(J)Lcom/android/camera/Thumbnail;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLatestThumbnailFromPPP: dateTaken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/db/item/DbItemBase;->getLastItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/db/element/SaveTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getDateTaken()J

    move-result-wide v3

    cmp-long p0, v3, p0

    if-lez p0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getThumbnailPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLatestThumbnailFromPPP: saveTask.dataTaken = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getDateTaken()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLatestThumbnailFromPPP: saveTask.mediaId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLatestThumbnailFromPPP: saveTask.path = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 10
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/storage/Storage;->requireRecordExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "getLatestThumbnailFromPPP: record not found"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 14
    invoke-static {p1, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getJpegRotation()I

    move-result v0

    const/4 v3, 0x0

    .line 16
    invoke-static {p0, p1, v0, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p0

    if-eqz p0, :cond_1

    const-wide/16 v3, -0x1

    .line 17
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/Thumbnail;->setFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "getLatestThumbnailFromPPP failed"

    .line 18
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v2
.end method

.method public static getMiniKindThumbnailByP(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "; "

    const-string v1, "Thumbnail"

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v2, p4}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "blocking"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "orig_id"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "group_id"

    const-wide/16 v4, 0x0

    .line 5
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    .line 6
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p4

    .line 8
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 9
    :try_start_2
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo p1, "r"

    .line 10
    invoke-virtual {v8, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 12
    invoke-static {p2, p4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v9, p4

    move-object p4, p0

    move-object p0, v9

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v9, p4

    move-object p4, p0

    move-object p0, v9

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p0, p4

    .line 14
    :goto_0
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "failed to allocate memory for thumbnail "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p0, p4

    .line 15
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "couldn\'t open thumbnail "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object p4, p0

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p4, v2

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 16
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, p4

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object p4, v2

    goto :goto_6

    :catch_5
    move-exception p0

    move-object p1, p4

    move-object p4, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p0

    move-object p1, p4

    .line 17
    :goto_4
    :try_start_5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p4, :cond_4

    .line 18
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, p1

    :goto_5
    if-eqz p3, :cond_5

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 21
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    .line 22
    div-int/lit8 p1, v5, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, v6, 0x2

    int-to-float p2, p2

    invoke-virtual {v7, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 23
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    return-object v2

    :goto_6
    if-eqz p4, :cond_6

    .line 24
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_6
    throw p0
.end method

.method public static getScaledBitmapFromFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v1, 0x4080000000000000L    # 512.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 2
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 5
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 8
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p3

    .line 9
    div-int/lit8 p2, v4, 0x2

    int-to-float p2, p2

    div-int/lit8 p3, v5, 0x2

    int-to-float p3, p3

    invoke-virtual {v6, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 10
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decode fail from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Thumbnail"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public fromFile()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/Thumbnail;->fileSize:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/Thumbnail;->gifHeight:I

    return p0
.end method

.method public getGifWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/Thumbnail;->gifWidth:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isGif()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Thumbnail;->mIsGif:Z

    return p0
.end method

.method public isWaitingForUri()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return p0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    const-string v1, "Thumbnail"

    if-nez v0, :cond_0

    const-string p0, "Fail to store bitmap. uri is null"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "last_thumb"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    :try_start_2
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :try_start_3
    iget-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v5, "version"

    const/4 v6, 0x2

    .line 9
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo p1, "saveLastThumbnailToFile: version: 2"

    .line 12
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->isGif()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLastThumbnailToFile: isGif:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->isGif()Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLastThumbnailToFile: gifWidth:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLastThumbnailToFile: gifHeight:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLastThumbnailToFile: fileSize:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Thumbnail;->getFileSize()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, p1, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v4, p1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v3, p1

    move-object v4, v3

    :goto_0
    move-object p1, v2

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v3, p1

    move-object v4, v3

    :goto_1
    move-object p1, v2

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object v3, p1

    move-object v4, v3

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v3, p1

    move-object v4, v3

    .line 24
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to store bitmap. path="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 25
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    :goto_3
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 27
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    sget-object p0, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_4
    move-exception p0

    .line 29
    :goto_4
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 30
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 32
    sget-object p1, Lcom/android/camera/Thumbnail;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    throw p0
.end method

.method public setFileSize(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/android/camera/Thumbnail;->fileSize:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mUri: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Thumbnail"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFromFile(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return-void
.end method

.method public setGifSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/Thumbnail;->gifWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/Thumbnail;->gifHeight:I

    return-void
.end method

.method public setIsGif(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mIsGif:Z

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    const-string v1, "Thumbnail"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUri: ignore. oldUri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", newUri = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return-void
.end method

.method public startWaitingForUri()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail{mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFromFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitingForUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Thumbnail;->mIsGif:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gifWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/Thumbnail;->gifWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gifHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/Thumbnail;->gifHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
