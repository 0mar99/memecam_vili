.class public Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Lcom/xiaomi/camera/common/LifecycleAsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityBaseRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public mLookAtCache:Z

.field public mTaskStatus:I

.field public final mThumbnailRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public final mThumbnailUpdaterRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ThumbnailUpdater;",
            ">;"
        }
    .end annotation
.end field

.field public needUpdateViewIfNull:Z

.field public noNeedUpdateThumbnail:Z


# direct methods
.method public constructor <init>(ZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;",
            "Lcom/android/camera/ThumbnailUpdater;",
            "Lcom/android/camera/Thumbnail;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(ZZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/ref/Reference;Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;",
            "Lcom/android/camera/ThumbnailUpdater;",
            "Lcom/android/camera/Thumbnail;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    .line 6
    iput-object p3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailUpdaterRef:Ljava/lang/ref/Reference;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailRef:Ljava/lang/ref/Reference;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "LoadThumbnailTask: thumbnail on task create: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThumbnailUpdater"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 14

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadThumbnailTask: execute task: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". lookAtCache = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailUpdater"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mActivityBaseRef:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "LoadThumbnailTask#doInBackground -> mActivityBaseRef \u5df2\u88ab\u91ca\u653e"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/android/camera/Thumbnail;->getLastMedia(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v4, v1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailRef:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Thumbnail;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    .line 10
    invoke-virtual {v5}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LoadThumbnailTask: thumbnailUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v8, v2}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v9

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_5

    .line 13
    invoke-virtual {v8, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-wide v10, v3, Lcom/android/camera/Thumbnail$Media;->fileSize:J

    :goto_1
    invoke-virtual {v5, v10, v11}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    return-object v5

    .line 15
    :cond_4
    iput-boolean v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v9

    if-lt v9, v6, :cond_6

    invoke-virtual {v8, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v9

    .line 18
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 19
    invoke-virtual {v9, v8}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 20
    invoke-virtual {v5, v10, v11}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    return-object v5

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v5

    if-eqz v5, :cond_7

    return-object v1

    .line 22
    :cond_7
    iput v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v5

    if-nez v5, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 26
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    :cond_9
    if-eqz v4, :cond_b

    .line 27
    iget-boolean v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v4, :cond_c

    .line 28
    invoke-static {p1, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadThumbnailTask: cached thumbnail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    .line 30
    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_a
    move-object v4, v1

    goto :goto_3

    .line 31
    :cond_b
    iput-boolean v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    const-string v2, "LoadThumbnailTask: no image/video was found"

    .line 32
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v2, v1

    move-object v4, v2

    .line 33
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v5

    if-eqz v5, :cond_d

    return-object v1

    :cond_d
    new-array v5, v7, [Lcom/android/camera/Thumbnail;

    const/4 v8, 0x2

    .line 34
    iput v8, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    .line 35
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v9

    const-string v10, ", thumbnail = "

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-nez v9, :cond_f

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v9

    if-nez v9, :cond_f

    .line 36
    invoke-static {p1, v5, v4, v3}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;Lcom/android/camera/Thumbnail$Media;)I

    move-result p1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: get last thumbnail from provider. code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v12, p1, :cond_e

    move-object v4, v2

    goto :goto_4

    .line 38
    :cond_e
    aget-object v4, v5, v11

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    goto :goto_6

    .line 41
    :cond_f
    iput-boolean v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v3

    .line 43
    invoke-static {p1, v5, v3, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result p1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: get last thumbnail from uri list. code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v12, p1, :cond_10

    move-object v4, v2

    goto :goto_5

    .line 45
    :cond_10
    aget-object v4, v5, v11

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 47
    iput v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    :goto_6
    const/4 v0, -0x2

    if-eq p1, v0, :cond_13

    if-eq p1, v12, :cond_12

    if-eq p1, v7, :cond_13

    if-eq p1, v8, :cond_11

    return-object v1

    .line 48
    :cond_11
    iput-boolean v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    return-object v1

    :cond_12
    return-object v2

    .line 49
    :cond_13
    aget-object p0, v5, v11

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask onPostExecute, thumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", canceled"

    goto :goto_0

    :cond_0
    const-string v1, ", not canceled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noNeedUpdateThumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mThumbnailUpdaterRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ThumbnailUpdater;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: thumbnail on task complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    iget-boolean p0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string p1, "ThumbnailUpdater"

    const-string v0, "LoadThumbnailTask#onStop -> activityBase invoked onStop(), now cancel task."

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask#onStop -> taskStatus %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mTaskStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->cancel(Z)V

    return-void
.end method
