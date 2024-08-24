.class public Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
.super Ljava/lang/Object;
.source "BottomAnimationConfig.java"


# instance fields
.field public mBypassAnimation:Z

.field public mCurrentMode:I

.field public mDuration:I

.field public mIsFPS960:Z

.field public mIsInMimojiCreate:Z

.field public mIsMotion3840:Z

.field public mIsPostProcessing:Z

.field public mIsRecordingCircle:Z

.field public mIsRoundingCircle:Z

.field public mIsSpecificCaptureTime:Z

.field public mIsStart:Z

.field public mIsTimerBurstCircle:Z

.field public mIsVertical:Z

.field public mNeedFinishRecord:Z

.field public mSecondPaintHintEnable:Z

.field public mShouldRepeat:Z

.field public mStopButtonEnabled:Z


# direct methods
.method public constructor <init>(ZIZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 5
    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    .line 6
    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 8
    iput-boolean p5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsMotion3840:Z

    return-void
.end method

.method public static generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;-><init>(ZIZZZ)V

    return-object v6
.end method


# virtual methods
.method public configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 13

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    const/16 v2, 0x7d0

    const/16 v3, 0xd4

    const/16 v4, 0xad

    const/16 v5, 0xa3

    const/16 v6, 0xa1

    const/16 v7, 0xb8

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 2
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v1

    iget v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v9}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v9

    .line 6
    iget v10, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v10, v6, :cond_c

    const/16 v11, 0x3a98

    if-eq v10, v5, :cond_b

    const/16 v12, 0xa7

    if-eq v10, v12, :cond_a

    const/16 v12, 0xab

    if-eq v10, v12, :cond_9

    if-eq v10, v4, :cond_6

    const/16 v2, 0x2710

    if-eq v10, v3, :cond_5

    const/16 v9, 0xd7

    if-eq v10, v9, :cond_4

    const/16 v9, 0xb7

    if-eq v10, v9, :cond_3

    if-eq v10, v7, :cond_1

    .line 7
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1388

    .line 9
    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 10
    :cond_2
    iput v11, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 12
    :cond_4
    iput v11, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    .line 13
    :cond_5
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_6
    if-eqz v9, :cond_7

    .line 14
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isLongNightCaptureAnimEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 16
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    goto/16 :goto_0

    .line 17
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    xor-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    .line 20
    :cond_8
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 21
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    goto :goto_0

    :cond_9
    if-eqz v9, :cond_d

    .line 22
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 24
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->isLongExpose()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v9, 0xf4240

    div-long/2addr v1, v9

    long-to-int v1, v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    .line 29
    :cond_b
    iput v11, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    if-eqz v9, :cond_d

    .line 30
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 32
    invoke-virtual {v9}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    .line 33
    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 34
    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->impl2()Lcom/android/camera/protocol/protocols/LiveSpeedChanges;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 35
    iget v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v2, v2

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->getRecordSpeed()F

    move-result v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 36
    :cond_d
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v2, 0x0

    if-eq v1, v5, :cond_e

    if-eq v1, v6, :cond_e

    if-eq v1, v7, :cond_e

    if-eq v1, v4, :cond_e

    iget-boolean v4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-nez v4, :cond_e

    const/16 v4, 0xbd

    if-eq v1, v4, :cond_e

    if-eq v1, v3, :cond_e

    move v1, v8

    goto :goto_1

    :cond_e
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    if-nez v1, :cond_f

    .line 40
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v1, :cond_10

    .line 41
    :cond_f
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 42
    :cond_10
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-nez v1, :cond_11

    move v1, v8

    goto :goto_2

    :cond_11
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    .line 43
    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 44
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_12

    .line 45
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->impl2()Lcom/android/camera/protocol/protocols/AmbilightProtocol;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 46
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 47
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->shouldDisableStopButton()Z

    move-result v1

    xor-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 48
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getAutoFinish()Z

    move-result v1

    xor-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 49
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getAutoFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    goto :goto_3

    :cond_12
    const/16 v3, 0xd0

    if-eq v1, v3, :cond_13

    if-ne v1, v7, :cond_14

    .line 50
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    :cond_13
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 52
    :cond_14
    :goto_3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVertical:Z

    return-object p0
.end method

.method public isLongExpose()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    return p0
.end method

.method public setSpecifiedDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    return-void
.end method
