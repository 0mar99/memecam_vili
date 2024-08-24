.class public Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;
.super Lcom/xiaomi/camera/common/LifecycleAsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/common/LifecycleAsyncTask<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityBaseWeakRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/ActivityBase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->mActivityBaseWeakRef:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 7

    .line 2
    array-length v0, p1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/common/LifecycleAsyncTask;->isTaskAborted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->mActivityBaseWeakRef:Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    const-string v1, "ThumbnailUpdater"

    if-nez p0, :cond_1

    const-string p0, "SaveThumbnailTask#doInBackground -> activityBase\u5df2\u88ab\u91ca\u653e"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 7
    aget-object v4, p1, v3

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveThumbnail: uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    aget-object v4, p1, v3

    invoke-virtual {v4, p0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
