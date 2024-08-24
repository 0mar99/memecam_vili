.class public Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;
.super Ljava/lang/Object;
.source "PreviewSaveRequest.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/PreviewSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddPreviewAction"
.end annotation


# instance fields
.field public mThumbnail:Lcom/android/camera/Thumbnail;

.field public final synthetic this$0:Lcom/android/camera/storage/PreviewSaveRequest;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/PreviewSaveRequest;Lcom/android/camera/Thumbnail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-static {v0}, Lcom/android/camera/storage/PreviewSaveRequest;->access$500(Lcom/android/camera/storage/PreviewSaveRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-static {v2}, Lcom/android/camera/storage/PreviewSaveRequest;->access$500(Lcom/android/camera/storage/PreviewSaveRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "PreviewSaveRequest"

    const-string/jumbo v1, "save preview: task not existed! image maybe already saved"

    .line 3
    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-static {v1}, Lcom/android/camera/storage/PreviewSaveRequest;->access$500(Lcom/android/camera/storage/PreviewSaveRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-boolean v2, v2, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v4, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-wide v5, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-static {v3}, Lcom/android/camera/storage/PreviewSaveRequest;->access$600(Lcom/android/camera/storage/PreviewSaveRequest;)Z

    move-result v7

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v8, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v9, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v10, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v11, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v12, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v13, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    invoke-static/range {v4 .. v13}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v2, v2, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-wide v4, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v6, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v7, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v8, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-boolean v9, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v10, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget v11, v3, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    .line 9
    invoke-static {v3}, Lcom/android/camera/storage/PreviewSaveRequest;->access$600(Lcom/android/camera/storage/PreviewSaveRequest;)Z

    move-result v12

    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-static {v3}, Lcom/android/camera/storage/PreviewSaveRequest;->access$700(Lcom/android/camera/storage/PreviewSaveRequest;)Z

    move-result v13

    move-object v3, v1

    .line 10
    invoke-static/range {v2 .. v13}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZ)Landroid/net/Uri;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v3, v2}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    :cond_2
    const-string v3, "PreviewSaveRequest"

    const-string v4, "image save finished"

    .line 13
    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string/jumbo v4, "shot_2_gallery"

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 15
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string/jumbo v4, "shot_thumbnail_gap"

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 16
    iget-object v3, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v3, v3, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v4, 0x2

    invoke-interface {v3, v2, v1, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v1, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    iget-object v1, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureShotToGalleryCost(J)V

    goto :goto_0

    :cond_3
    const-string v1, "PreviewSaveRequest"

    const-string v2, "image save failed"

    .line 20
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;->this$0:Lcom/android/camera/storage/PreviewSaveRequest;

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->onFinish()V

    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
