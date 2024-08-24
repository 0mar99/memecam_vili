.class public Lcom/android/camera/storage/mediastore/ImageFile;
.super Ljava/lang/Object;
.source "ImageFile.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageFile"


# instance fields
.field public isPending:Z

.field public mContentValues:Landroid/content/ContentValues;

.field public mContext:Landroid/content/Context;

.field public mCurrentFileUri:Landroid/net/Uri;

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    .line 3
    iput-object p6, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    .line 4
    iput-boolean p7, p0, Lcom/android/camera/storage/mediastore/ImageFile;->isPending:Z

    .line 5
    new-instance p7, Landroid/content/ContentValues;

    invoke-direct {p7}, Landroid/content/ContentValues;-><init>()V

    iput-object p7, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    .line 6
    invoke-virtual {p7, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p5, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_id"

    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p2, "_display_name"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p2, "bucket_id"

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p1, "mime_type"

    invoke-virtual {p0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createImage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/camera/storage/mediastore/ImageFile;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/camera/storage/mediastore/ImageFile;

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/storage/mediastore/ImageFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method public static exists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "is_pending"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "android:query-arg-limit"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v1, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 6
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/android/camera/storage/mediastore/ImageFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image file already exists: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 11
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v2

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 12
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    if-eqz p0, :cond_4

    .line 13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    return p1
.end method

.method public static queryImageStore(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/storage/mediastore/ImageFile;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "_data"

    const-string v1, "_id"

    const-string v2, "_display_name"

    const-string v3, "bucket_id"

    const-string v4, "mime_type"

    const-string v5, "is_pending"

    .line 2
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id DESC"

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android:query-arg-sql-sort-order"

    .line 4
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-limit"

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 7
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 p1, 0x2

    .line 9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 p1, 0x3

    .line 10
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 p1, 0x0

    .line 11
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x4

    .line 12
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x5

    .line 13
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    move v11, p1

    .line 14
    :goto_0
    invoke-static/range {v5 .. v11}, Lcom/android/camera/storage/mediastore/ImageFile;->createImage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/camera/storage/mediastore/ImageFile;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 15
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p0, v2

    .line 16
    :goto_3
    :try_start_2
    sget-object v0, Lcom/android/camera/storage/mediastore/ImageFile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryImageStore error"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_4
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_5
    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_3
    throw p1
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public insertPath2Store(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/storage/mediastore/ImageFile;->TAG:Ljava/lang/String;

    const-string p1, "NOT init"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "datetaken"

    invoke-virtual {p1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p4, "mime_type"

    invoke-virtual {p1, p4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p4, "_display_name"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo p3, "relative_path"

    const-string p4, "DCIM/Camera/"

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "orientation"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    .line 12
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 13
    iput-object p2, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isPending()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->isPending:Z

    return p0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    return-void
.end method
