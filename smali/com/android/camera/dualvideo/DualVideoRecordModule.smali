.class public Lcom/android/camera/dualvideo/DualVideoRecordModule;
.super Lcom/android/camera/dualvideo/DualVideoModuleBase;
.source "DualVideoRecordModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;,
        Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;
    }
.end annotation


# instance fields
.field public mLastSnapTime:J

.field public mPauseClickTime:J

.field public final mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

.field public mSoundStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    .line 3
    new-instance v2, Lcom/android/camera/dualvideo/DualVideoRecordModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule$1;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    iput-object v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    .line 4
    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mLastSnapTime:J

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)I
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p0

    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getTopTipRes()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertDualVideoHint(II)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string v1, "abort"

    .line 1
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/DualVideoRecordModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mSoundStartTime:J

    return-wide v0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRecorderMaxFileSize(I)J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    sub-long/2addr v0, v2

    if-lez p1, :cond_0

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide v2, 0xdac00000L

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-wide v2, Lcom/android/camera/module/video/VideoConfig;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    :goto_0
    move-wide v0, v2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide p0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_3

    cmp-long v2, p0, v0

    if-gez v2, :cond_3

    move-wide v0, p0

    :cond_3
    return-wide v0
.end method

.method private getRecorderOrientationHint()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    return p0
.end method

.method private getZoomGroupForTrack()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0O0O00;

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    .line 7
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideHint()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getTopAlert()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000OO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyRemoteDeviceLayoutType()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000O0;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    :goto_0
    return-void
.end method

.method private onStartRecorderSucceed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.start_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->hideHint()V

    return-void
.end method

.method private pauseVideoRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->pauseVideoRecording2()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateReselectButton()V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    return-void
.end method

.method private pauseVideoRecording2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->pauseRecorder()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "failed to pause media recorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    :cond_0
    return-void
.end method

.method private platformAllowed()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OooO0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderBusy:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method private resumeVideoRecording(Lcom/android/camera/protocol/protocols/RecordState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->resumeVideoRecording2(Lcom/android/camera/protocol/protocols/RecordState;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateReselectButton()V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    return-void
.end method

.method private resumeVideoRecording2(Lcom/android/camera/protocol/protocols/RecordState;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->resume()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onResume()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v0, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "failed to resume media recorder"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->release()V

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_device_type"

    invoke-static {v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->forceTrackLayoutType(Z)V

    return-void
.end method

.method private startRecordingRelate()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mSoundStartTime:J

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000O;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000O;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    new-array v2, v1, [I

    .line 7
    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v3

    sget-object v5, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v3, v5, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v0, [I

    .line 11
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v0

    aput v0, v2, v4

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v0

    aput v0, v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v0, [I

    .line 12
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v0

    aput v0, v2, v4

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v0

    aput v0, v2, v1

    :cond_1
    :goto_0
    move-object v6, v2

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/SoundSetting;->isStartKaraoke(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v0, :cond_2

    .line 16
    new-instance v0, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v0}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    .line 18
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mIsStopKaraoke:Z

    .line 19
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    .line 22
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderBusy:Z

    .line 23
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    new-instance v2, Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->setSoundChecker(Lcom/android/camera/dualvideo/Checker;)V

    .line 24
    iget-object v5, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getLocation()Landroid/location/Location;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v8, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget-object v9, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    invoke-direct {p0, v4}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getRecorderMaxFileSize(I)J

    move-result-wide v10

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getRecorderOrientationHint()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->startRecorder([ILandroid/location/Location;Lcom/android/camera/CameraSize;Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;JI)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->setSoundChecker(Lcom/android/camera/dualvideo/Checker;)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->onStartRecorderSucceed()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v4, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    .line 30
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->trackOnVideoStart()V

    return-void
.end method

.method private trackOnVideoStart()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_device_type"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->forceTrackLayoutType(Z)V

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_3a_locked"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->hasRemoteCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000OOo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000OOo;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/RecordState;)V
    .locals 0

    .line 6
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "releaseRemote: isAnimating, waiting!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->releaseRemote()V

    return-void
.end method

.method public synthetic OooO0OO(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string/jumbo v1, "start"

    .line 2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_device_type"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic OooOO0O(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->getRecorderSurface()Landroid/util/SparseArray;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->startRecording(Landroid/opengl/EGLContext;Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLastBackPressedTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, v3, v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setLastBackPressedTime(J)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f1208ee

    invoke-static {p0, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    :goto_0
    return v2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "value_back_select"

    .line 10
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchToGridWindow(I)V

    return v2

    .line 12
    :cond_4
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->handleBackStack()Z

    .line 2
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCameraPickerClicked: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->switchTopBottom()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0o()V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120051

    .line 7
    invoke-static {p1}, Lcom/android/camera/module/common/ModuleUtil;->announceForAccessibility(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "value_pause_switch"

    .line 9
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "value_idle_switch"

    .line 10
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetTouchFocus(I)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onPauseButtonClick()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->handleBackStack()Z

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->resumeVideoRecording(Lcom/android/camera/protocol/protocols/RecordState;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->pauseVideoRecording()V

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPause()V

    .line 15
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPauseButtonClick"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onResume()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->notifyRemoteDeviceLayoutType()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "value_back_select"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchToGridWindow(I)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onReviewCancelClicked()V

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isAnimating()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->platformAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->startVideoRecording()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public releaseRemote()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/RenderManager;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x64

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000000O;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    .line 9
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchRenderRemoteItem()V

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchRenderRemoteItem()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reselectCamera()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mKeepRecorderWhenSwitching:Z

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00000Oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showOrHideBottom(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    const-string/jumbo v0, "value_reselect"

    .line 5
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchToGridWindow(I)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->shouldReleaseLater()Z

    move-result p0

    return p0
.end method

.method public startVideoRecording()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0oO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->startRecordingRelate()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/oo0o0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/oo0o0Oo;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->stopVideoRecording(Z)V

    return-void
.end method

.method public switchRenderRemoteItem()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchRemoteCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O00;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x200

    aput v3, v1, v2

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    .line 8
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->reStartCurrentModule()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchToGridWindow(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public takeVideoSnapShot()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takeVideoSnapShot"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mLastSnapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mLastSnapTime:J

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(ILjava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/RenderManager;

    new-instance v2, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/camera/dualvideo/render/RenderManager;->captureVideoSnapshot(Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;ILandroid/hardware/camera2/CaptureResult;)V

    :cond_2
    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 4
    div-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mVideoRecordTime:J

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1, v4}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x1f4

    .line 8
    iget-object v6, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v6}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v6

    if-nez v6, :cond_2

    .line 9
    rem-long/2addr v0, v2

    sub-long v4, v2, v0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2a

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateReselectButton()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "topAlert is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x201

    aput v2, v0, v1

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    return-void
.end method
