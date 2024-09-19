.class public Lcom/android/camera/storage/GifSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;
.source "GifSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/GifSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GifSaveRequest"


# instance fields
.field public dateTaken:J

.field public height:I

.field public mGifPath:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public orientation:I

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/GifSaveRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$000(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$100(Lcom/android/camera/storage/GifSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$200(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$300(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    .line 7
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$400(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    .line 8
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$500(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->orientation:I

    .line 9
    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$600(Lcom/android/camera/storage/GifSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/GifSaveRequest$Builder;Lcom/android/camera/storage/GifSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/GifSaveRequest;-><init>(Lcom/android/camera/storage/GifSaveRequest$Builder;)V

    return-void
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

    const-string p0, "GifSaveRequest"

    const-string/jumbo p1, "save video: sd card was ejected"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 3

    const-string v0, "GifSaveRequest"

    const-string/jumbo v1, "onFinish: runnable process finished"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    const-string v2, "image save onFinish"

    .line 2
    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 14

    const-string v0, "GifSaveRequest"

    const-string/jumbo v1, "save gif: start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    iget v8, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    iget v9, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    invoke-static/range {v2 .. v9}, Lcom/android/camera/storage/Storage;->addGifToMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save gif: media has been stored, Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", has thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/storage/GifSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    .line 8
    iget-object v3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 11
    iget-object v5, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 13
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    const-string/jumbo p0, "save gif: end"

    .line 14
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method
