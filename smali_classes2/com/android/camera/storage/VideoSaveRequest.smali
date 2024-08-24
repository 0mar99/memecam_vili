.class public Lcom/android/camera/storage/VideoSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;
.source "VideoSaveRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSaveRequest"


# instance fields
.field public mContentValues:Landroid/content/ContentValues;

.field public mIsFinal:Z

.field public mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;"
        }
    .end annotation
.end field

.field public mUri:Landroid/net/Uri;

.field public mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    .line 6
    iput-boolean p4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/storage/VideoSaveRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method private addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const-string v0, "Current video URI: "

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "VideoSaveRequest"

    if-eqz v1, :cond_0

    const-string p1, "empty videoPath"

    .line 2
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {p2, v5, v6, v3, v4}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "relative_path"

    const-string v6, "DCIM/Camera/"

    .line 7
    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    const-string v6, "_data"

    .line 10
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 11
    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    const-string p1, "is_pending"

    const/4 p2, 0x0

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v5, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert before, save path == record path, result uri = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save path != record path, insert it, result uri = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addVideoToMediaStore: insert video cost: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_4
    const-string p1, "failed to add video to media store"

    .line 24
    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_2
    return-object p1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    throw p0
.end method

.method private checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->isSecondPhoneStorage(Ljava/lang/String;)Z

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "VideoSaveRequest"

    const-string/jumbo p1, "save video: sd card was ejected"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method private updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 8

    const-string v0, "Current video URI: "

    .line 1
    invoke-static {p2}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "VideoSaveRequest"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete invalid video: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", deleted : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v1, v2}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object p3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p3, p1, p2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 7
    iget-object p0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateVideoToMediaStore: insert video cost: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "failed to add video to media store"

    .line 12
    invoke-static {v4, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    throw p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "VideoSaveRequest"

    const-string/jumbo v1, "onFinish: runnable process finished"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iput-object v1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save video: start, path -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uri -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoSaveRequest"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/VideoSaveRequest;->isFinal()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    .line 7
    iget-object v4, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v5, "custom_video_cover"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 8
    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v7, "save_cover"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_1
    const/4 v9, 0x1

    if-eqz v1, :cond_7

    .line 10
    iget-object v10, v0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    if-nez v10, :cond_2

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    :cond_2
    const/4 v10, 0x0

    if-eqz v4, :cond_3

    .line 12
    array-length v11, v4

    if-eqz v11, :cond_3

    const-string v11, "has preview video cover."

    .line 13
    invoke-static {v3, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 15
    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v11, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v4, v12}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    new-array v11, v9, [Landroid/graphics/Bitmap;

    .line 16
    :try_start_0
    iget-object v12, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 17
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    const-string/jumbo v14, "rw"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    goto :goto_0

    .line 18
    :cond_4
    iget-object v12, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 19
    iget-object v12, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " failed to get fd uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v12, v10

    .line 21
    :goto_0
    iget-object v13, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v14}, Lcom/android/camera/Util;->getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;

    move-result-object v14

    invoke-static {v12, v13, v14, v11}, Lcom/android/camera/jcodec/MP4UtilEx;->getCover(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/android/camera/CameraSize;[Landroid/graphics/Bitmap;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 22
    aget-object v13, v11, v8

    if-eqz v13, :cond_6

    const-string v4, "get video cover form video file."

    .line 23
    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    aget-object v4, v11, v8

    const/16 v11, 0x64

    invoke-static {v4, v11}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    .line 25
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 26
    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v11, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v10, v4, v13}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_6
    invoke-static {v12}, Lorg/jcodec/common/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 28
    :cond_7
    :goto_1
    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    invoke-static {v6, v10}, Lcom/android/camera/jcodec/MP4UtilEx;->writeTags(Ljava/lang/String;Ljava/util/List;)V

    .line 29
    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 30
    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 31
    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {v0, v5, v6}, Lcom/android/camera/storage/VideoSaveRequest;->addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 32
    iget-object v5, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 34
    iput-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save video: query update, path -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_8
    iget-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_9

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    const-string v2, "insert MediaProvider failed, need update mContentValues by Uri"

    .line 39
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {v0, v2, v5, v6}, Lcom/android/camera/storage/VideoSaveRequest;->updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_9
    const/4 v2, 0x4

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save video: media has been stored, Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", has thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/camera/storage/VideoSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v4, :cond_a

    .line 43
    array-length v1, v4

    if-eqz v1, :cond_a

    .line 44
    iget-object v1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    array-length v2, v4

    .line 45
    invoke-static {v4, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    invoke-static {v1, v2, v8, v8}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 47
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v2, v1, v9}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_2

    .line 48
    :cond_a
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 49
    :goto_2
    iget-object v1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v4, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v4, v1, v9}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 51
    iget-object v10, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    iget-object v1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v0, v0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "longitude"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    move/from16 v17, v9

    goto :goto_3

    :cond_b
    move/from16 v17, v8

    :goto_3
    const/16 v18, 0x0

    .line 54
    invoke-static/range {v10 .. v18}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    .line 55
    iget-object v0, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_d
    :goto_4
    const-string/jumbo v0, "save video: end"

    .line 56
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    return-void
.end method
