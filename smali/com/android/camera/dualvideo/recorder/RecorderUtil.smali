.class public Lcom/android/camera/dualvideo/recorder/RecorderUtil;
.super Ljava/lang/Object;
.source "RecorderUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecorderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveVideo(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/mediastore/VideoFile;ZZ)Landroid/net/Uri;
    .locals 9

    const-string v0, "RecorderUtil"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->hasRemote()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    const-string v3, "com.xiaomi.duo_video_remote"

    invoke-direct {v2, v3, v1, v1}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    const-string v3, "com.xiaomi.duo_video"

    invoke-direct {v2, v3, v1, v1}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveVideo: videoUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFinal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, p1, p3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v1, p0

    goto :goto_2

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveVideo: failed to save "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method
