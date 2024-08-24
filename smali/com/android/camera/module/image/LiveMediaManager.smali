.class public Lcom/android/camera/module/image/LiveMediaManager;
.super Ljava/lang/Object;
.source "LiveMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LiveMediaManager"


# instance fields
.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public volatile mIsRecording:Z

.field public mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

.field public final mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;",
            ">;"
        }
    .end annotation
.end field

.field public mRecordingStartTime:J

.field public mRequestStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mPendingSaveTaskList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/android/camera/module/image/LiveMediaManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/LiveMediaManager$1;-><init>(Lcom/android/camera/module/image/LiveMediaManager;)V

    iput-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private doLaterRelease()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    :cond_0
    return-void
.end method

.method private getVideoSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private onStartRecorderFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/image/ImageModuleUtil;->updateEvAdjust(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    :cond_1
    return-void
.end method

.method private onStartRecorderSucceed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/image/LiveMediaManager;->mIsRecording:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/image/LiveMediaManager;->mRecordingStartTime:J

    .line 6
    invoke-interface {v0, v2}, Lcom/android/camera/module/Module;->listenPhoneState(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isVolumeLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/image/ImageModuleUtil;->updateEvAdjust(Z)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/image/LiveMediaManager;->updateRecordingTime()V

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->keepScreenOn()V

    .line 13
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 14
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressRecord()V

    return-void
.end method

.method private updateRecordingTime()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/16 v0, 0x3b92

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    .line 4
    new-instance v0, Lcom/android/camera/module/image/LiveMediaManager$2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/image/LiveMediaManager$2;-><init>(Lcom/android/camera/module/image/LiveMediaManager;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public addSaveTask(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2
    new-instance v0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;-><init>(Lcom/android/camera/module/image/LiveMediaManager;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSaveTask(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    new-instance v0, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;-><init>(Lcom/android/camera/module/image/LiveMediaManager;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public executeSaveTask(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;

    const-string v2, "LiveMediaManager"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeSaveTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->videoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->uri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/camera/module/image/LiveMediaManager$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/image/LiveMediaManager;->doLaterRelease()V

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isRecording()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mIsRecording:Z

    return p0
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public playVideoSound(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x2

    .line 2
    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->playCameraSound(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    .line 4
    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->playCameraSound(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public startVideoRecording()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const-string v2, "LiveMediaManager"

    if-nez v1, :cond_1

    const-string p0, "initializeRecorder: null camera"

    .line 3
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    const-string/jumbo v1, "startVideoRecording"

    .line 5
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-direct {v1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    :cond_2
    const/4 v1, 0x2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/image/LiveMediaManager;->getVideoSize()Landroid/util/Size;

    move-result-object v4

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startVideoRecording params size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f120a0f

    .line 11
    invoke-static {v5}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v1, v5}, Lcom/android/camera/Util;->genVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 14
    invoke-static {v1, v5, v6, v4}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v1

    .line 15
    iget-object v4, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v5

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/image/LiveMediaManager;->mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

    .line 17
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;)Z

    move-result v1

    .line 18
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isNeededSetCamcorder(I)Z

    move-result v4

    if-eqz v1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-wide v5, p0, Lcom/android/camera/module/image/LiveMediaManager;->mRequestStartTime:J

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->startRecorder(JZ)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v3, v0}, Lcom/android/camera/module/common/ModuleUtil;->updateZoomRatioToggleButtonState(ZI)V

    .line 22
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    :cond_6
    const-string/jumbo v0, "startVideoRecording process done"

    .line 24
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/image/LiveMediaManager;->onStartRecorderSucceed()V

    return-void

    .line 26
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/image/LiveMediaManager;->onStartRecorderFail()V

    return-void
.end method

.method public stopVideoRecording()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/image/LiveMediaManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 6
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/image/LiveMediaManager;->mIsRecording:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v1, :cond_3

    .line 8
    iget-wide v3, p0, Lcom/android/camera/module/image/LiveMediaManager;->mRecordingStartTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->stopRecorder(J)Z

    .line 9
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.stop_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    invoke-interface {v0, v2}, Lcom/android/camera/module/Module;->listenPhoneState(Z)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/image/LiveMediaManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/module/common/ModuleUtil;->updateZoomRatioToggleButtonState(ZI)V

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 16
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    .line 17
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 18
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/image/ImageModuleUtil;->updateEvAdjust(Z)V

    .line 20
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 21
    invoke-interface {v0}, Lcom/android/camera/module/Module;->keepScreenOnAwhile()V

    .line 22
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void
.end method
