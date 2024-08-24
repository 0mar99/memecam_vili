.class public final Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/MultiCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field public mBurstShotTitle:Ljava/lang/String;

.field public mDropped:Z

.field public mLocation:Landroid/location/Location;

.field public mPressDownTitle:Ljava/lang/String;

.field public mSavedJpegCallbackNum:I

.field public mSavedJpegPlayNum:I

.field public final synthetic this$0:Lcom/android/camera/module/image/MultiCaptureManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/MultiCaptureManager;Landroid/location/Location;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->access$300(Lcom/android/camera/module/image/MultiCaptureManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraCallableScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooO0o;-><init>(Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;)V

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O00()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$102(Lcom/android/camera/module/image/MultiCaptureManager;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegPlayNum:I

    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegPlayNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegPlayNum:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$000(Lcom/android/camera/module/image/MultiCaptureManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    iget p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegPlayNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$000(Lcom/android/camera/module/image/MultiCaptureManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v2, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v3, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_c

    iget-boolean v2, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    const-string v2, "MultiCaptureManager"

    if-eqz v1, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_2
    const-string/jumbo p0, "onPictureTaken: stop multiple shot due to low storage"

    .line 8
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v4, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v1

    if-nez v1, :cond_9

    .line 11
    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v1}, Lcom/android/camera/module/image/MultiCaptureManager;->access$300(Lcom/android/camera/module/image/MultiCaptureManager;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    iget v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    :cond_4
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_5

    .line 19
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    .line 20
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v4

    .line 22
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    .line 23
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    .line 24
    iget-object v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v7, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    const/4 v8, 0x0

    if-ne v7, v3, :cond_7

    iget-boolean v6, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v6, :cond_7

    :cond_6
    move v6, v8

    goto :goto_1

    .line 25
    :cond_7
    iget-object v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v7, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v9, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-eq v7, v9, :cond_8

    iget-boolean v6, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v6, :cond_6

    :cond_8
    move v6, v3

    .line 26
    :goto_1
    new-instance v7, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 27
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 28
    invoke-virtual {v7, v6}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 29
    invoke-virtual {v7, v5}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 31
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 32
    invoke-virtual {v7, v4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 33
    invoke-virtual {v7, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 34
    invoke-virtual {v7, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 35
    invoke-virtual {v7, v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 36
    invoke-virtual {v0, v8}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 p1, -0x1

    .line 37
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 38
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    .line 39
    iput-boolean v8, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    goto :goto_2

    .line 40
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CaptureBurst queue full and drop "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-boolean v3, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    .line 42
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-lt p2, p1, :cond_a

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    .line 44
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v0, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge p2, v0, :cond_b

    iget-boolean p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    if-eqz p1, :cond_c

    .line 45
    :cond_b
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_c
    :goto_3
    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
