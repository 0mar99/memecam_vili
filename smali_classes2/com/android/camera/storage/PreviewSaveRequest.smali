.class public final Lcom/android/camera/storage/PreviewSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "PreviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;,
        Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewSaveRequest"


# instance fields
.field public mFinalImage:Z

.field public mIsParallelProcess:Z

.field public mNoGaussian:Z

.field public mSavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$000(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$100(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$200(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$300(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;Lcom/android/camera/storage/PreviewSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/PreviewSaveRequest;-><init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/storage/PreviewSaveRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/storage/PreviewSaveRequest;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/storage/PreviewSaveRequest;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 2
    instance-of v0, p1, Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$000(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$100(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$200(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->save()V

    return-void
.end method

.method public save()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->getTargetVersion()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "PreviewSaveRequest"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save preview: task existed! isValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/storage/mediastore/ImageFile;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PreviewSaveRequest"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save preview: image file already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/db/element/SaveTask;

    .line 14
    iget-object v2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    .line 15
    iget-boolean v2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setNoGaussian(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    const-string v1, "PreviewSaveRequest"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert preview picture: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-boolean v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 20
    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v5, v1

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    const-wide v7, 0x4090e00000000000L    # 1080.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v5, 0x4

    const-string v6, "PreviewSaveRequest"

    const-string v7, "image save try to create thumbnail"

    .line 22
    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v5, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget v6, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-static {v5, v6, v1, v2, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 25
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_2

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 27
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/storage/PreviewSaveRequest$AddPreviewAction;-><init>(Lcom/android/camera/storage/PreviewSaveRequest;Lcom/android/camera/Thumbnail;)V

    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p0

    .line 28
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method
