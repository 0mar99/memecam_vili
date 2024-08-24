.class public Lcom/android/camera/storage/mediastore/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"


# static fields
.field public static final EMPTY_PATH:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "VideoFile"


# instance fields
.field public mContentValues:Landroid/content/ContentValues;

.field public mContext:Landroid/content/Context;

.field public mCurrentFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mCurrentFileUri:Landroid/net/Uri;

.field public mCurrentPFD:Landroid/os/ParcelFileDescriptor;

.field public mIntentFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mIntentUri:Landroid/net/Uri;

.field public mTempFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentPFD:Landroid/os/ParcelFileDescriptor;

    .line 3
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFileSize(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "output"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    goto :goto_0

    .line 4
    :cond_1
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    const-string/jumbo v1, "rw"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 8
    sget-object p1, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseIntent: outputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_data"

    .line 1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 3
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_4
    throw p0

    .line 6
    :cond_5
    :goto_0
    sget-object p0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    const-string p1, "Null input, do nothing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static queryFileSize(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "_size"

    .line 1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 3
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_4
    throw p0

    :cond_5
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public cleanResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mTempFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7
    invoke-direct {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->cleanupEmptyFile()V

    .line 8
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    .line 9
    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public closeCurrentPFD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentPFD:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public getCurrentFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    if-eqz p0, :cond_1

    const-string v0, "_data"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFileUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getCurrentPFD()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    const-string v0, " failed filepath null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "rw"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 7
    :catch_0
    sget-object v0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " failed to get fd uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    const-string v0, " failed get fd null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public initialize(ZLandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->cleanResources()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/storage/mediastore/VideoFile;->parseIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public insertContentValues()Landroid/net/Uri;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "relative_path"

    const-string v4, "DCIM/Camera/"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v3, "save_cover"

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    .line 11
    sget-object v0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert before, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " display_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_display_name"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    return-object p0

    .line 13
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    const-string v0, "NOT init"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isThirdPartyUri()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public setDateTaken(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V
    .locals 7

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "temp_video.mp4"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_display_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mTempFilePath:Ljava/lang/String;

    .line 3
    sget-object p2, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMediaRecorderOutput temp path -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mIntentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    return-void

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 12
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "save_cover"

    .line 13
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget-object v3, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    .line 16
    sget-object v0, Lcom/android/camera/Util;->mIsLunchFromAutoTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "date_modified"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    :cond_3
    sget-object v0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaRecorderOutput after insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uri -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 20
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    sget-object p0, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMediaRecorderOutput: Failed to open file descriptor for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :cond_4
    sget-object v1, Lcom/android/camera/storage/mediastore/VideoFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaRecorderOutput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoFile;->mCurrentFileUri:Landroid/net/Uri;

    return-void
.end method
