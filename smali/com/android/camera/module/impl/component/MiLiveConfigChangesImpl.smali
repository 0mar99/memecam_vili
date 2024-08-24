.class public Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;
.super Ljava/lang/Object;
.source "MiLiveConfigChangesImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;
.implements Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;


# static fields
.field public static final DEFAULT_FPS:I = 0x1e

.field public static final DEFAULT_RECORD_BITRATE:I = 0xe00000

.field public static final DEFAULT_SPEED:F = 1.0f

.field public static final RECORD_TIME_COMPENSATION:J = 0x12cL


# instance fields
.field public final SPEEDS:[F

.field public final TAG:Ljava/lang/String;

.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mContext:Landroid/content/Context;

.field public mCurAudioPath:Ljava/lang/String;

.field public mCurSpeed:F

.field public mCurrentOrientation:I

.field public mFilterBitmapPath:Ljava/lang/String;

.field public mRecordState:I

.field public mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

.field public mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

.field public mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

.field public mRender:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

.field public mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->SPEEDS:[F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecordState:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurrentOrientation:I

    .line 6
    new-instance v0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;-><init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;->onRecorderPaused(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurAudioPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;->onRecorderFinish(Ljava/util/List;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(ILjava/util/List;)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveRecordDoneProcessing(Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;->onRecorderError()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->release()V

    :cond_0
    return-void
.end method

.method public canRecordingStop()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {v2}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurSpeed:F

    mul-float/2addr p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearAudio()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurAudioPath:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setAudioPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Lcom/android/camera/CameraSettings;->setCurrentLiveMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->impl2()Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-interface {p0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->startBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public deleteLastFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->deletePreSegment()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;->onRecorderCancel()V

    :cond_1
    return-void
.end method

.method public finishReview()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void
.end method

.method public getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->getPreviewRatio()F

    move-result p0

    float-to-double v0, p0

    const/16 p0, 0xb0

    const/16 v2, 0x90

    .line 2
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthResult()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurState()I
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecordState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->genInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->TAG:Ljava/lang/String;

    const-string v0, "genInputSurfaceTexture null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewRatio()F
    .locals 0

    const p0, 0x3fe38e38

    return p0
.end method

.method public getRecordSpeed()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurSpeed:F

    return p0
.end method

.method public getSegmentSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStartRecordingTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getStartTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->getTotalRecordingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 p0, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRecordingTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->getLiveSegments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public initPreview(IIILcom/android/camera/CameraScreenNail;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-direct {p3, p4, p1, p2}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;-><init>(Lcom/android/camera/ActivityBase;II)V

    .line 3
    invoke-virtual {p3, p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setStateListener(Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    .line 5
    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setRecordingTimeListener(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    const/high16 p4, 0xe00000

    .line 6
    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setBitrate(I)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    const/16 p4, 0x1e

    .line 7
    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setFps(I)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    sget-object p4, Lcom/android/camera/module/impl/component/FileUtils;->MI_LIVE_TMP:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setVideoSaveDirPath(Ljava/lang/String;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveSegmentData(I)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->setSegmentData(Ljava/util/List;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->build()Lcom/android/camera/module/impl/component/MiLiveRecorder;

    move-result-object p3

    .line 11
    iput-object p3, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRender:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    .line 12
    iput-object p3, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {p3, p1, p2}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->init(II)V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object p1

    const/16 p2, 0xb7

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->setMaxDuration(J)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result p1

    .line 18
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p2, p3, p1}, Lcom/android/camera/effect/EffectController;->findLiveFilter(Landroid/content/Context;I)Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p1, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->directoryName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    const/4 p3, 0x1

    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->setFilter(ZLjava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->setRecordSpeed(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 24
    aget-object p4, p1, p3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 25
    aget-object p2, p1, p3

    .line 26
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->setAudioPath(Ljava/lang/String;)V

    return-void
.end method

.method public initResource()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->TAG:Ljava/lang/String;

    const-string v1, "initResource"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->hasDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_DIR:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MI_LIVE_TMP:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_CUT:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 9
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MI_LIVE_TMP:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 10
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 11
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 12
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_CUT:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 13
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    :cond_1
    const v0, 0x8000

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "mi_music_cn.zip"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "mi_music_global.zip"

    .line 15
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->getCurState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordingPaused()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->getCurState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurrentOrientation:I

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p2, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurrentOrientation:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->resetVideoSize()V

    :cond_2
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChange(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecordState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0OO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0OO;-><init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveRecordDoneProcessing(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0o0;-><init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0O0;-><init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRender:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTextureReleased()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRender:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->pauseRecording()V

    .line 3
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/LiveFilterChangers;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveBeautyChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveAudioChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo0o;-><init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->reset()V

    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->resumeRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurAudioPath:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setAudioPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFilter(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->FILTER_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mFilterBitmapPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mFilterBitmapPath:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mFilterBitmapPath:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setFilterPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    const-wide/16 v0, 0x12c

    add-long/2addr p1, v0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setMaxDuration(J)V

    return-void
.end method

.method public setRecordSpeed(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->SPEEDS:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget p1, v0, p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurSpeed:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurSpeed:F

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz p1, :cond_2

    .line 5
    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurSpeed:F

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setSpeed(F)V

    :cond_2
    return-void
.end method

.method public setRecorderListener(Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MI_LIVE_TMP:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    const/4 v0, 0x0

    const-string v1, "camera.debug.dump_milive"

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_DUMP:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->impl2()Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mCurrentOrientation:I

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    invoke-interface {v0, v1}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->setOrientation(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->startRecording()V

    :cond_4
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->mRecorder:Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;->stopRecording()V

    .line 3
    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    return-void
.end method

.method public trackVideoParams()V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveAudioChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveBeautyChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/LiveFilterChangers;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->release()V

    return-void
.end method
