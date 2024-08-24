.class public Lcom/android/camera/module/video/VideoCastModule;
.super Lcom/android/camera/module/VideoModule;
.source "VideoCastModule.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method private onStopTimer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVideoRecording>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 7
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOO0;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1, v0}, Lcom/android/camera/module/common/ModuleUtil;->updateZoomRatioToggleButtonState(ZI)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/camera/module/video/UserRecordSetting;->restoreZoomAfterRecording(Lcom/android/camera/module/Module;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->doVideoInfoTrack()V

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    return-void
.end method

.method private pauseVideoCastRecording()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 6
    invoke-virtual {v4}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v6, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v3, v6

    iput-wide v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 8
    iget-wide v2, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastRecordedDuration(J)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    .line 13
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onPause()V

    .line 14
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    .line 15
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "switched to pause state"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeVideoCastRecording()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 4
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 7
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 10
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->getVideoCastRecordedDuration()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 17
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "failed to resume media recorder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 20
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    .line 21
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "switched to resume state"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setVideoCastState(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastState current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->stopVideoCastRecording()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->resumeVideoCastRecording()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->pauseVideoCastRecording()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->startVideoCastRecording()V

    :goto_0
    return-void
.end method

.method private startVideoCastRecording()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoCastModule;->onStartRecorderSucceed()V

    .line 5
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "switched to start state"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVideoCastRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->onStopTimer()V

    .line 2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "switched to idle state"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastStateImpl(Landroid/os/Bundle;)V

    return-void
.end method

.method public checkRecordTimeValid(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onBackPressed()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->onCreate(II)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO;-><init>(Lcom/android/camera/module/video/VideoCastModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onReviewCancelClicked()V

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStartRecorderSucceed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onVideoCastStateChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooOo0;-><init>(Lcom/android/camera/module/video/VideoCastModule;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerProtocol()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->registerProtocol()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;->impl2()Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCastLayoutType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->setVideoCastLayoutType(I)V

    :cond_0
    return-void
.end method

.method public setVideoCastRecordingState(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastState(I)V

    return-void
.end method

.method public setVideoCastStateImpl(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getRecordingState(Landroid/os/Bundle;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastRecordingState(I)V

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getLayoutType(Landroid/os/Bundle;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastLayoutType(I)V

    :cond_1
    return-void
.end method

.method public trySaveVidoeFile(Z)V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/VideoCastModuleProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
