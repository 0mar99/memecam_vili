.class public Lcom/android/camera/module/video/AiAudioController;
.super Ljava/lang/Object;
.source "AiAudioController.java"


# static fields
.field public static final AI_AUDIO_SET_ZOOM:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AiAudioController"


# instance fields
.field public mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

.field public mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

.field public mBaseZoomRatio:D

.field public mChildHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsInit:Z

.field public mMaxZoomRatio:F

.field public mModuleIndex:I

.field public mOrientation:I

.field public mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/RecordRuntimeInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    .line 3
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO0O0;-><init>(Lcom/android/camera/module/video/AiAudioController;)V

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    .line 4
    iput-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/AiAudioController;)Lcom/android/camera/aiaudio/AiAudioParameterManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    return-object p0
.end method

.method private initAudioZoomHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ai_audio_set"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lcom/android/camera/module/video/AiAudioController$1;

    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/video/AiAudioController$1;-><init>(Lcom/android/camera/module/video/AiAudioController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mChildHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFrontCamera()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget v3, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigAiAudio(IZ)V

    :cond_3
    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-eqz v0, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioZoomLv()V

    :cond_5
    return-void
.end method

.method public getAIAudioTrackParams()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v1, v3, :cond_1

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_1

    return-object v2

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecTypeStr(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 5
    iget-wide v2, p0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public handleAiAudioTipsState(Z)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/AiAudioController;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    .line 6
    iget p0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-eq p0, v1, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudioMutexToastIfNeed(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    .line 9
    :goto_0
    invoke-interface {v0, p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiAudio(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public initAiAudio(ZLandroid/content/Context;Landroid/media/MediaRecorder;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v2

    iput v2, v0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 3
    :cond_0
    new-instance v2, Lcom/android/camera/aiaudio/AiAudioParameterManager;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v2, v3, v4}, Lcom/android/camera/aiaudio/AiAudioParameterManager;-><init>(Landroid/content/Context;Landroid/media/MediaRecorder;)V

    iput-object v2, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    .line 4
    iget v2, v0, Lcom/android/camera/module/video/AiAudioController;->mMaxZoomRatio:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder.zoomMaxValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AiAudioController"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setMaxSupportLevel(I)V

    if-eqz v1, :cond_1

    const-string v3, "initializeRecorder: recording"

    .line 7
    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v3

    .line 9
    iget v4, v0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    iget v5, v0, Lcom/android/camera/module/video/AiAudioController;->mOrientation:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getCurrentParameters(IZI)V

    .line 10
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getRecType()I

    move-result v8

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getShot()I

    move-result v9

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getScene()I

    move-result v10

    .line 13
    iget-wide v11, v0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    const-wide/16 v13, 0x0

    .line 14
    iget-object v1, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->getEleValue()D

    move-result-wide v15

    .line 15
    iget-wide v4, v0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    int-to-double v1, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getFocusSectorWidth(DD)D

    move-result-wide v17

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 16
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getWindns()Z

    move-result v21

    .line 17
    iget-object v6, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    const/4 v7, 0x1

    invoke-virtual/range {v6 .. v21}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->init(ZIIIDDDDDZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    goto :goto_0

    :cond_1
    const-string v1, "initializeRecorder: prorecord"

    .line 18
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v5, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v5 .. v20}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->init(ZIIIDDDDDZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    .line 20
    :goto_0
    iget-boolean v1, v0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    if-eqz v1, :cond_2

    .line 21
    iget-object v0, v0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->prepare()V

    :cond_2
    return-void
.end method

.method public isNeedAlertAudioZoomIndicator(Lcom/android/camera/module/video/RecordRuntimeInfo;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/4 v1, 0x0

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/video/AiAudioController;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez p1, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object p1

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    const-string p1, "AiAudioController"

    const-string v0, "isNeedAlertAudioZoomIndicator:SupportAiAudioNew"

    .line 6
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_0

    :cond_3
    return v1

    .line 8
    :cond_4
    iget p0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result p0

    :goto_0
    if-eq p0, v2, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Handler;I)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManager:Landroid/media/AudioManager;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-direct {v0}, Lcom/android/camera/AudioManagerAudioDeviceCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/video/AiAudioController;->setModuleIndex(I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/video/AiAudioController;->initAudioZoomHandler()V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/video/AiAudioController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public setBaseZoomRatio(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    return-void
.end method

.method public setCurrentAiAudioParameters(Z)V
    .locals 12

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v1

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v2

    const-string v3, "AiAudioController"

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    if-eqz v2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mMaxZoomRatio:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    iget v2, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    iget v4, p0, Lcom/android/camera/module/video/AiAudioController;->mOrientation:I

    invoke-virtual {v1, v2, p1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getCurrentParameters(IZI)V

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getRecType()I

    move-result p1

    const-wide/16 v4, 0x0

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->getEleValue()D

    move-result-wide v6

    .line 11
    iget-wide v8, p0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    int-to-double v10, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getFocusSectorWidth(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 12
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getWindns()Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setRecordType(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioWindNoise(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusAzimuth(D)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v6, v7}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusElevation(D)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v8, v9}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusWidth(D)V

    .line 18
    iget-object p0, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusHeight(D)V

    const-string/jumbo p0, "setCurrentAiAudioParameters: support FORTE & NOKIA"

    .line 19
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 20
    :cond_4
    iget v1, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    iget p0, p0, Lcom/android/camera/module/video/AiAudioController;->mOrientation:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentParameters(IZI)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO0OO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO0OO;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setCurrentAiAudioParameters.parameters = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "setCurrentAiAudioParameters:J10-FORTE"

    .line 23
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public setCurrentAiAudioZoomLv()V
    .locals 5

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/video/AiAudioController;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    const-string v1, "AiAudioController"

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 7
    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentAiAudioZoomLv -> enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    return-void

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    .line 10
    iget v3, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    return-void

    .line 11
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 14
    iput v2, v0, Landroid/os/Message;->what:I

    .line 15
    iget-wide v1, p0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object p0, p0, Lcom/android/camera/module/video/AiAudioController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 17
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AURISYS_SET_PARAM,DSP,RECORD,FV_SPH,KEY_VALUE,audioZoom,ZoomLv@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lcom/android/camera/Util;->getEnglishDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/module/video/AiAudioController;->mBaseZoomRatio:D

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/=SET"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentAiAudioZoomLv.parameters = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0Oo/OooO00o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public setMaxZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/AiAudioController;->mMaxZoomRatio:F

    return-void
.end method

.method public setModuleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/AiAudioController;->mOrientation:I

    return-void
.end method

.method public startAiAudio()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/video/AiAudioController;->mIsInit:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/video/AiAudioController;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->start()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    :cond_1
    return-void
.end method
