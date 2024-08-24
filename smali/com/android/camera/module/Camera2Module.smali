.class public abstract Lcom/android/camera/module/Camera2Module;
.super Lcom/android/camera/module/BaseModule;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/CameraAction;
.implements Lcom/android/camera/protocol/protocols/TopConfigProtocol;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$IFirstCaptureFocus;
.implements Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;,
        Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;,
        Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;
    }
.end annotation


# static fields
.field public static final CAPTURE_DURATION_THRESHOLD:J = 0x2ee0L

.field public static final TAG:Ljava/lang/String; = "Camera2Module"

.field public static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field public mAFEndLogTimes:I

.field public mAIWatermarkEnable:Z

.field public mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

.field public mAlgorithmName:Ljava/lang/String;

.field public mApertures:[F

.field public mAutoFlashTargetState:Z

.field public volatile mBlockQuickShot:Z

.field public mBroadcastIntent:Landroid/content/Intent;

.field public mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

.field public final mCameraDeviceLock:Ljava/lang/Object;

.field public mCancelDownCaptureOnLongClick:Z

.field public mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public volatile mCaptureDownTime:J

.field public mCaptureStartTime:J

.field public mCaptureWaterMarkStr:Ljava/lang/String;

.field public mDebugFaceInfos:Ljava/lang/String;

.field public mDelayTimeMessageSent:Z

.field public mDelayTimeReturned:Z

.field public mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

.field public mEnableShot2Gallery:Z

.field public mEnabledPreviewThumbnail:Z

.field public final mFaceDetectCB:Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

.field public mFaceDetected:Z

.field public mFirstCreateCapture:Z

.field public mFixedShot2ShotTime:I

.field public mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

.field public mFocalLengths:[F

.field public mHHTDisabled:Z

.field public mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

.field public volatile mIsAiShutterOn:Z

.field public mIsBeautyBodySlimOn:Z

.field public mIsHdrDegradeMFNREnabled:Z

.field public mIsHighQualityQuickShotBurstShot:Z

.field public mIsHighQualityQuickShotEnabled:Z

.field public mIsISORight4HWMFNR:Z

.field public mIsISORight4MFNRReplaceSR:Z

.field public mIsMacroModeEnable:Z

.field public mIsMfHdrQuickShotEnabled:Z

.field public mIsNearRangeMode:Z

.field public mIsNearRangeModeUITip:Z

.field public mIsQuickShotEnabled:Z

.field public mIsShowLyingDirectHintStatus:I

.field public mIsShutterLongClickRecording:Z

.field public mKeepCoverView:Z

.field public mLastCaptureStartTime:J

.field public mLastCaptureTime:J

.field public mLastFlashMode:Ljava/lang/String;

.field public mLastShotClickTime:J

.field public mLightFilterId:I

.field public mLongPressedAutoFocus:Z

.field public mMFNRReplaceSRWhenMotion:Z

.field public final mMateDataParserLock:Ljava/lang/Object;

.field public mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

.field public final mModuleSpecialProtocol:Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;

.field public mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

.field public mNeedDelaySoundForCapture:Z

.field public mNightManager:Lcom/android/camera/module/image/NightManager;

.field public mNumberOfFace:I

.field public mOnResumeTime:J

.field public mOperatingMode:I

.field public mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

.field public mQuickShotAnimateEnable:Z

.field public mQuickShotIsoThresholds:[I

.field public mRawCallbackType:I

.field public mRotateFlags:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

.field public final mScreenLightCb:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

.field public final mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShot2Gallery:J

.field public mShot2Shot:J

.field public mShot2Shutter:J

.field public mShotClickTimeInterval:J

.field public mShouldDoMFNR:Z

.field public mShutterReturned:Z

.field public mSpecShotMode:Ljava/lang/Integer;

.field public mSuperNightCbImageImpl:Lcom/android/camera/module/image/SuperNightCbImageImpl;

.field public mSupportAnchorFrame:Z

.field public mSupportAnchorFrameAsThumbnail:Z

.field public mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

.field public mUpscaleImageWithMFNR:Z

.field public mUpscaleImageWithSR:Z

.field public volatile mWaitSaveFinish:Z

.field public mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSpecialProtocol:Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;

    .line 3
    new-instance v0, Lcom/android/camera/module/image/ScreenLightCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/ScreenLightCallbackImpl;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mScreenLightCb:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mLastShotClickTime:J

    .line 5
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShotClickTimeInterval:J

    .line 6
    new-instance v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;

    invoke-direct {v0}, Lcom/android/camera/module/image/ModuleSizeFormatManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    .line 11
    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    .line 14
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCameraDeviceLock:Ljava/lang/Object;

    .line 15
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    .line 17
    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    .line 27
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShot2Shutter:J

    .line 29
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShot2Shot:J

    .line 30
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShot2Gallery:J

    .line 31
    new-instance v2, Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/asd/FlashAsdManager;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    .line 32
    new-instance v2, Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-direct {v2, p0}, Lcom/android/camera/timerburst/TimerBurstManager;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    .line 33
    new-instance v2, Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/MultiCaptureManager;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    .line 34
    new-instance v2, Lcom/android/camera/module/image/NightManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/NightManager;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    .line 35
    new-instance v2, Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/hdr/HDRManager;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    .line 36
    new-instance v2, Lcom/android/camera/module/image/AiSceneManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/AiSceneManager;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    .line 37
    new-instance v2, Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/image/hdr/ParallelManager;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    .line 38
    new-instance v2, Lcom/android/camera/module/interceptor/camera/FaceDetectCbImpl;

    invoke-direct {v2, p0}, Lcom/android/camera/module/interceptor/camera/FaceDetectCbImpl;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mFaceDetectCB:Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    .line 39
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    .line 40
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_90:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mRotateFlags:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    .line 41
    new-instance v0, Lcom/android/camera/module/Camera2Module$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$2;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->startLensActivity()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/interceptor/ASDInterceptorChain;Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;

    invoke-direct {v0, p1}, Lcom/android/camera/module/interceptor/camera/TrackFocusMultipleASD;-><init>(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/ActionProcessing;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/protocols/ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V

    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showDocumentPreview: actionProcessing == null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(ZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 38
    :goto_1
    invoke-interface {p2, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawFace(Z)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/protocols/ActionProcessing;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    return-void
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->setEffectViewVisible(Z)V

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setIdPhotoBoxVisible(Z)V

    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/protocol/protocols/MainContentProtocol;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOO0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->onUserInteraction()V

    return-void
.end method

.method public static synthetic OooOO0o(Lcom/android/camera/protocol/protocols/MainContentProtocol;)Ljava/lang/Boolean;
    .locals 0

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFocusViewVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOOO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setActiveIndicator(I)V

    return-void
.end method

.method public static synthetic OooOOO0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setActiveIndicator(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/Camera2Module;[BIIZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/Camera2Module;->doSaveJpegThumbnail([BIIZZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/Camera2Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    return p0
.end method

.method public static synthetic access$801(Lcom/android/camera/module/Camera2Module;D)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onDeviceKeepMoving(D)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSwMfnr()V

    return-void
.end method

.method private checkIntentAndCapture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isIntentPhotoDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIntentAndCapture: MSG_STILL_CAPTURE, mHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v2, 0x34

    const-wide/16 v3, 0x3e8

    .line 8
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setIntnetPhotoDone(Z)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "checkIntentAndCapture: reject by dialog. pause:%b , focus:%b"

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private checkMoreFrameCaptureLockAFAE(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setMFLockAfAe(Z)V

    :cond_0
    return-void
.end method

.method private checkQuickshotISORight4HWMFNR(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkQuickshotISORight4HWMFNR: iso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4b0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportQuickshotIsoThresholds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFirstRoleIdByActualId(I)I

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    if-nez v4, :cond_2

    .line 10
    invoke-static {v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportQuickshotIsoThresholds(Lcom/android/camera2/CameraCapabilities;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    .line 11
    :cond_2
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "quickShotIsoThresholdValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-le v1, v3, :cond_d

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    aget v1, v1, v3

    if-lt p1, v1, :cond_3

    move v0, v3

    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00O()Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x320

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v5, :cond_5

    move v0, v3

    :cond_5
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    goto :goto_2

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO0O:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_8

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v5, :cond_7

    move v0, v3

    :cond_7
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    move v1, v0

    goto :goto_1

    .line 19
    :cond_9
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMinIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    .line 20
    :goto_1
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkQuickshotISORight4HWMFNR:  minIso = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v5, :cond_a

    move v0, v3

    :cond_a
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    goto :goto_2

    .line 22
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 v1, v1, 0x8

    if-lt p1, v1, :cond_c

    move v0, v3

    :cond_c
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    :cond_d
    :goto_2
    return-void
.end method

.method private doAttach()V
    .locals 6

    const-string v0, "crop-temp"

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->getStoredJpegData()[B

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isSaveCaptureImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->saveStoredData()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getCropValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "Exception when doAttach: "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 14
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 15
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 16
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 17
    throw v0

    :cond_2
    const v0, 0xc800

    .line 18
    invoke-static {v1, v0}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    .line 22
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 25
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 27
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5, v0, v2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 29
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    :try_start_4
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 31
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getCropValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "circle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "circleCrop"

    const-string/jumbo v3, "true"

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    const-string/jumbo v3, "return-data"

    .line 37
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->releaseStoredJpegData()V

    return-void

    :catchall_1
    move-exception p0

    move-object v3, v0

    goto :goto_5

    :catch_1
    move-object v3, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    .line 43
    :catch_2
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 44
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 45
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_5
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 46
    throw p0
.end method

.method private doSaveJpegThumbnail([BIIZZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1
    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v4

    if-ne v11, v4, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    move v15, v14

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v10

    .line 3
    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result v5

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/timerburst/TimerBurstController;->getOrientation(ZI)I

    move-result v9

    .line 4
    sget v8, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->getFilterId()I

    move-result v7

    .line 6
    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v16

    if-eqz v11, :cond_1

    if-eqz v16, :cond_1

    .line 7
    iget v4, v0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    sget v5, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v14

    :goto_1
    if-nez v6, :cond_4

    if-nez v15, :cond_2

    if-nez v10, :cond_2

    if-eqz v16, :cond_4

    .line 8
    :cond_2
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "saveJpegAsThumbnail: decode bitmap now"

    invoke-static {v4, v5}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    array-length v4, v1

    invoke-static {v1, v14, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    .line 10
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveJpegAsThumbnail: failed to decode bitmap"

    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v5

    int-to-float v1, v9

    move v13, v6

    move v6, v15

    move/from16 v17, v7

    move v7, v1

    move v1, v8

    move v8, v10

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v19, v10

    move/from16 v10, p4

    invoke-static/range {v4 .. v10}, Lcom/android/camera/Util;->cropBitmap(Landroid/graphics/Bitmap;FZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 12
    sget-object v5, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v5, v14}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    move-object/from16 v28, v4

    move v4, v1

    move-object/from16 v1, v28

    goto :goto_2

    :cond_4
    move v13, v6

    move/from16 v17, v7

    move v4, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 13
    :goto_2
    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    .line 14
    iget v6, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/module/Camera2Module;->getPictureFormatSuitableForShot(II)I

    move-result v5

    .line 15
    sget-object v6, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveJpegAsThumbnail: isParallel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v8, v8, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", shot2Gallery = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", format = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "HEIC"

    goto :goto_3

    :cond_5
    const-string v8, "JPEG"

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", anchorFrame= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", noGaussian= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", filterId= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v17

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v6, v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    move-result-object v25

    .line 19
    new-instance v6, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v7, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v21

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, -0x1

    iget-wide v9, v0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    move-object/from16 v20, v6

    move-wide/from16 v26, v9

    invoke-direct/range {v20 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 21
    iget-object v7, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v7, v7, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v7, :cond_7

    iget-boolean v7, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v7, :cond_7

    iget-boolean v7, v0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v14

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 22
    invoke-virtual {v6, v1, v14}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 23
    invoke-virtual {v6, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNoGaussian(Z)V

    move/from16 v1, v19

    .line 24
    invoke-virtual {v6, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSquare(Z)V

    .line 25
    invoke-virtual {v6, v13}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedCropAfterFilter(Z)V

    if-eqz v15, :cond_8

    if-eqz v11, :cond_8

    .line 26
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    goto :goto_6

    :cond_8
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v1

    .line 27
    :goto_6
    new-instance v7, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v7, v9, v10, v12, v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 28
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move/from16 v2, v18

    .line 29
    invoke-virtual {v7, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 31
    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 32
    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v11}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAnchorPreview(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v15}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 39
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 40
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    .line 41
    invoke-virtual {v3}, Lcom/android/camera/module/image/hdr/ParallelManager;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 42
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasCvWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCaptureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 46
    invoke-virtual {v6, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 47
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v6, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 49
    :cond_9
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    .line 50
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string/jumbo v2, "shot_create_thumbnail"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/Camera2Module;->mShot2Gallery:J

    return-void
.end method

.method private enableFrontMFNR()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0o()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0oO()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0o()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v3, 0x8005

    if-ne v0, v3, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v3, 0x8002

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    const v3, 0x9000

    if-ne v0, v3, :cond_5

    return v2

    .line 7
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0oO()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v3, 0x9001

    if-ne v0, v3, :cond_6

    return v2

    :cond_6
    const v3, 0x9003

    if-ne v0, v3, :cond_7

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OOoO()Z

    move-result p0

    return p0

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v0, 0x9005

    if-ne p0, v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method private generateDocumentBean()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/DocViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->hideOrShowDocument(Z)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->stopDecode(I)V

    .line 6
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    check-cast v0, Lcom/android/zxing/decoders/DocumentDecoder;

    invoke-virtual {v0}, Lcom/android/zxing/decoders/DocumentDecoder;->getCachePreview()Landroid/util/Pair;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/zxing/PreviewImage;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {v2, v3, v0, v1}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;-><init>(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    :cond_1
    return-void
.end method

.method private getCalibrationDataFileName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front_dual_camera_caldata.bin"

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "back_dual_camera_caldata_wu.bin"

    return-object p0

    :cond_1
    const-string p0, "back_dual_camera_caldata.bin"

    return-object p0
.end method

.method private getFilterId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getNormalFilterId()I

    move-result v0

    .line 2
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    :goto_0
    return v0
.end method

.method private getRequestFlashMode()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v2

    const-string v3, "0"

    const-string v4, "105"

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 5
    invoke-virtual {v2, v1}, Lcom/android/camera/MutexModeManager;->isHdrSupportTorch(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget v1, v1, Lcom/android/camera/module/image/asd/FlashAsdManager;->mCurrentAsdScene:I

    const/16 v2, 0x9

    const/4 v5, -0x1

    if-ne v1, v2, :cond_8

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x33

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0xbdf4

    if-eq v1, v2, :cond_2

    const v2, 0xbdf6

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_1

    :cond_2
    const-string v1, "103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, "101"

    return-object p0

    :cond_6
    const-string p0, "1"

    return-object p0

    :cond_7
    const-string p0, "2"

    return-object p0

    .line 9
    :cond_8
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget p0, p0, Lcom/android/camera/module/image/asd/FlashAsdManager;->mCurrentAsdScene:I

    const/16 v1, 0xa

    if-ne p0, v1, :cond_9

    const-string p0, "104"

    return-object p0

    :cond_9
    const/16 v1, 0xb

    if-ne p0, v1, :cond_a

    const-string p0, "106"

    return-object p0

    :cond_a
    if-ne p0, v5, :cond_b

    return-object v3

    :cond_b
    return-object v0
.end method

.method public static getTiltShiftMode()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleHaloFlash(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x48

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x69

    if-ne v0, v4, :cond_2

    .line 5
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo00()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v2

    .line 9
    :cond_2
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_5

    const/16 p1, 0x68

    if-eq p2, p1, :cond_4

    const/16 p1, 0x6a

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    if-eq p2, v4, :cond_5

    if-eq p2, v2, :cond_5

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 12
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return v1
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureAlertShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resumePreview()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startPreview()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoO0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    .line 10
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateCenterMarkSwitched()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->hide()V

    goto :goto_1

    .line 14
    :cond_3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showPostCaptureAlert: lost BaseDelegate"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private initDecodePreviewType(Lcom/android/camera2/Camera2Proxy;)I
    .locals 7

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo00()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0xa3

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v4, 0xba

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/16 v5, 0xab

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const/16 v5, 0xb6

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/16 v1, 0xcd

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v3, v5

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v6

    :cond_1
    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 11
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v1, v4, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSensorOrientation(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    invoke-static {v1}, Lcom/android/zxing/decoders/DocumentDecoder;->getRotateFlag(I)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mRotateFlags:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    :cond_3
    or-int/lit8 v0, v0, 0x20

    .line 14
    :cond_4
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "initDecodePreviewType: initPreviewCallbackTypeDecoders E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->initPreviewCallbackTypeDecoders(I)Z

    .line 16
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "initDecodePreviewType: initPreviewCallbackTypeDecoders X"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    .line 18
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setPreviewMaxImages(I)V

    .line 19
    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOO0;

    invoke-direct {v2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOO0;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/Camera2Proxy;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_5
    return v0
.end method

.method private initFlashAutoStateForTrack(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "auto-off"

    const/16 v3, 0xa

    if-nez v1, :cond_3

    const-string v1, "103"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "105"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget p1, p1, Lcom/android/camera/module/image/asd/FlashAsdManager;->mCurrentAsdScene:I

    if-ne p1, v3, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string p1, "auto_halo"

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string p1, "auto_halo_flash"

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget v0, v0, Lcom/android/camera/module/image/asd/FlashAsdManager;->mCurrentAsdScene:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string p1, "auto-on"

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFlashAutoModeState(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private initPreviewCallbackTypeDecoders(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p0

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/zxing/PreviewDecodeManager;->init(II)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/zxing/PreviewDecodeManager;->init(II)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2}, Lcom/android/zxing/PreviewDecodeManager;->init(II)Z

    move-result p0

    or-int/2addr v1, p0

    .line 6
    :cond_2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreviewCallbackTypeDecoders: previewCallbackType: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", needUpdatePreference: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isCannotGotoGallery()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isZooming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageSaverFull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xad

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCaptureAlertShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCupCaptureRequired()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera2/CaptureResultParser;->isCupCaptureDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isCupCaptureRequired : cup algo disabled by HAL!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x5

    .line 8
    invoke-static {p0}, Lcom/android/camera/Util;->isLowPower(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 9
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isCupCaptureRequired : disable cup capture when ev is not 0 !"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isHighQualityQuickShotSupport()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportEnableHighQualityQuickShotByTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->judgeHighQualityQuickShotSupportByTag()Z

    move-result p0

    return p0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->judgeHighQualityQuickShotSupportByFeature()Z

    move-result p0

    return p0
.end method

.method private isHighQualityQuickShotSupportedBurstShot()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xab

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighQualityQuickShotSupportBackBokehHDR(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighQualityQuickShotSupportSatHDR(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighQualityQuickShotSupportSatSuperResolution(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->isSatMultipleRawUseCase(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighQualityQuickShotSupportSatSuperNight(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    move v2, v1

    :cond_7
    return v2
.end method

.method private isNeedFixedShotTime()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "(mtk)isNeedFixedShotTime mIsAiShutterOn: true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isSuperNightOn, isNeedFixedShotTime false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupportedBurstShot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isQuickShotSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldEnableMfHdrQuickShot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    if-eqz v0, :cond_2

    return v1

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    if-eqz v0, :cond_7

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 14
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-eqz v0, :cond_7

    .line 17
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    .line 18
    :cond_7
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedFixedShotTime nfst:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsISORight4HWMFNR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHQQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isParallel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isQueueFull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/image/hdr/ParallelManager;->isParallelQueueFull()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageSaverFull()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isRefuseOffer()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v1, 0x0

    const/16 v2, 0xba

    if-ne v0, v2, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private judgeHighQualityQuickShotSupportByTag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getTagSupportModeFrontCamera()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getTagSupportModeBackCamera()Z

    move-result p0

    return p0
.end method

.method private needActiveASD()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0o0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onShutter(Lcom/android/camera2/QuickViewParam;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onShutter: preview stopped"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    .line 4
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shutterLag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "shot_on_shutter"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShot2Shutter:J

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p2, :cond_2

    .line 7
    iget-boolean p2, p1, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    invoke-virtual {p0, p2}, Lcom/android/camera/module/Camera2Module;->updateEnablePreviewThumbnail(Z)V

    .line 8
    iget-boolean p2, p1, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-nez p2, :cond_2

    .line 9
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter remove thumbnail path for not anchorframe and previewthumbnail"

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xba

    if-ne p2, v1, :cond_3

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    invoke-virtual {p1}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getImage()Lcom/android/zxing/PreviewImage;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    .line 14
    invoke-virtual {p2}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getPoints()[F

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    invoke-virtual {v0}, Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;->getDocValue()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/module/Camera2Module;->showDocumentPreview(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :cond_3
    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p1, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    if-nez p2, :cond_6

    .line 17
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p0, Lcom/android/camera/features/mode/night/photo/NightModule;

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    move p2, v1

    .line 19
    :goto_0
    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    .line 20
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz p2, :cond_5

    .line 21
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutter: not anchorFrame, check ButtonStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0o;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0o;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/QuickViewParam;)V

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0O;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0O;-><init>(Lcom/android/camera/module/Camera2Module;)V

    .line 23
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object p0

    .line 24
    invoke-virtual {p2, v0, p1, p0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 25
    :cond_5
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutter: not anchorFrame, read pixel"

    invoke-static {p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 27
    :cond_6
    iget-boolean p2, p1, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result p2

    if-nez p2, :cond_8

    .line 28
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz p2, :cond_7

    .line 29
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutter: anchorFrame, check ButtonStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO0;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO0;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/QuickViewParam;)V

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOOO;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOOO;-><init>(Lcom/android/camera/module/Camera2Module;)V

    .line 31
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object p0

    .line 32
    invoke-virtual {p2, v0, p1, p0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 33
    :cond_7
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutter: anchorFrame, normal handle"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-boolean p2, p1, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    invoke-direct {p0, p2, p1}, Lcom/android/camera/module/Camera2Module;->playSoundOrReadPixel(ZZ)V

    goto :goto_1

    .line 35
    :cond_8
    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xad

    const-string/jumbo v1, "onShutter: not Preview thumbnail, normal handle"

    if-eq p2, v0, :cond_a

    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result p2

    if-nez p2, :cond_a

    .line 36
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz p2, :cond_9

    .line 37
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutter: not preview thumbnail, check ButtonStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p2, p1, Lcom/android/camera2/QuickViewParam;->buttonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOOo;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOOo;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/QuickViewParam;)V

    const/4 p0, 0x0

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_1

    .line 39
    :cond_9
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundNoPreviewThumbnail(Z)V

    goto :goto_1

    .line 41
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 42
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundNoPreviewThumbnail(Z)V

    :cond_b
    :goto_1
    return-void
.end method

.method private playSoundNoPreviewThumbnail(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter update thumb progress"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO0O;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutter: super night se playCameraSound"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private playSoundOrReadPixel(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutter: anchor playSound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " readPixel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v3}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionEnabled(Z)V

    .line 3
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_MANUALLY:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method private resumePreviewInWorkThread()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private sendDelayTimeMessage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeFrontCamera()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeBackCamera()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4b

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    .line 8
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HQQuickShot : send MSG_FIXED_SNAP_SHOT_DELAY_TIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    :goto_1
    return-void
.end method

.method private setLightingEffect()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProColorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "ProColor is enable, disable AI filter"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v0

    .line 7
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLightingEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 9
    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/FilterInfo;

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/effect/FilterInfo;->getOrder()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v2

    .line 13
    :cond_3
    iput v2, p0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    .line 14
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectController;->setLightingEffect(I)V

    return-void
.end method

.method private setPictureOrientation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setPictureOrientation(Z)V

    :cond_0
    return-void
.end method

.method private shouldApplyUltraWideLDC()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oooO()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldUltraWideLDCBeVisibleInMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oOo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideLDCEnabled()Z

    move-result p0

    return p0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideLDCEnabled()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private shouldDoMultiFrameCapture()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 5
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v4, :cond_3

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isAiShutterExistMotion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldDoMultiFrameCapture return false; run mtk aishutter 1.0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 13
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFlashSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldDoMultiFrameCapture: return false in case of flash"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 16
    :cond_5
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xa7

    if-ne v1, v5, :cond_6

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o00()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 18
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldDoMultiFrameCapture: SR is enabled for pro mode"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 20
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-eqz v1, :cond_7

    .line 21
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldDoMultiFrameCapture: SR is enabled for upscaling image"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 22
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO0O()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xab

    if-eq v1, v5, :cond_9

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move v1, v3

    .line 24
    :goto_4
    sget-object v5, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldDoMultiFrameCapture: isShouldDoHHT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHHTDisabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    move v1, v3

    .line 25
    :goto_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oOo()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0Oo()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 26
    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_6

    :cond_c
    move v5, v3

    .line 27
    :goto_6
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v6}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v5, :cond_d

    move v5, v2

    goto :goto_7

    :cond_d
    move v5, v3

    .line 28
    :goto_7
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/android/camera/module/Camera2Module;->checkMotionStatus(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v5, :cond_e

    .line 29
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->ifReplaceSRWithMFNR(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    xor-int/lit8 v5, v0, 0x1

    .line 30
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 31
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "shouldDoMultiFrameCapture: is Motion Existed  isMotionExisted\uff1a  "

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldDoMultiFrameCapture: should reset SR to false   shouldDoSR\uff1a   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_e
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCurrentModeSupportAISDenoise(I)Z

    move-result v0

    .line 34
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera2/CameraConfigs;->setDedicatedMotionAlgoEnabled(Z)V

    goto :goto_8

    .line 35
    :cond_f
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    if-eqz v0, :cond_10

    .line 36
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    :cond_10
    move v0, v3

    .line 38
    :goto_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v6

    if-nez v4, :cond_12

    if-nez v1, :cond_12

    .line 39
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    if-nez v1, :cond_12

    if-nez v5, :cond_12

    if-nez v6, :cond_12

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    move v2, v3

    .line 40
    :cond_12
    :goto_9
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldDoMultiFrameCapture: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldDoMultiFrameCapture: shouldDoSR:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private shouldDoQCFA(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInQCFAMode()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/image/ImageModuleUtil;->isEnableQcfaForAlgoUp(Lcom/android/camera/module/common/ModuleCameraManagerInterface;ZZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isRemosaicDetecedSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isRemosaicDetected(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 6
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldDoQCFA: iso = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc8

    if-gt p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private shouldEnableMfHdrQuickShot()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const/4 v1, 0x0

    const v2, 0x9005

    if-eq v2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static shouldShotOneByOne(Lcom/android/camera2/Camera2Proxy;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/common/ModuleUtil;->shouldNotShotQuick(Lcom/android/camera2/Camera2Proxy;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDocumentPreview(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 2
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    move-result-object v9

    .line 3
    new-instance v3, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 4
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDocumentPreview: savePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", docValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v13

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    move-result-object v15

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mRotateFlags:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    const/16 v16, 0x0

    move-object/from16 v14, p2

    move-object/from16 v17, v1

    .line 8
    invoke-virtual/range {v10 .. v17}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->doCropAndEnhance([BII[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;ZLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    move-result-object v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v6

    iget-object v7, v0, Lcom/android/camera/module/Camera2Module;->mRotateFlags:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-object/from16 v8, p2

    .line 11
    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object v4

    .line 12
    sget-object v5, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showDocumentPreview: points = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", rotatePoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    if-nez v1, :cond_1

    .line 13
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showDocumentPreview cropImage is null..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/DocViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->hideOrShowDocument(Z)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->startDecode(I)V

    return-void

    .line 17
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v5

    .line 18
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v7, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0oO;

    invoke-direct {v7, v5, v1, v4, v3}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0oO;-><init>(Lcom/android/camera/protocol/protocols/ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0;

    invoke-direct {v4, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    .line 20
    invoke-static {}, Lcom/android/camera/Util;->getEnterDuration()J

    move-result-wide v5

    invoke-static {}, Lcom/android/camera/Util;->getSuspendDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {}, Lcom/android/camera/Util;->getExitDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 21
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    invoke-static {}, Lcom/android/camera/Util;->isSaveDocPreview()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo000;

    invoke-direct {v4, v0, v9, v1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo000;-><init>(Lcom/android/camera/module/Camera2Module;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 24
    :cond_2
    sget-object v3, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v3, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 25
    array-length v4, v3

    if-ge v4, v10, :cond_3

    .line 26
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showDocumentPreview: jpegData is null!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 29
    new-instance v12, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v5

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, -0x1

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 31
    invoke-virtual {v12, v10}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 32
    invoke-virtual {v12, v3, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 33
    new-instance v2, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v11, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v11, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v1}, Landroid/util/Size;-><init>(II)V

    const/16 v1, 0x100

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 34
    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 36
    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 37
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {v12, v10}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 39
    :cond_4
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, v1, v1}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureAlertShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->stopFaceDetection(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->pausePreview()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoo0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoo0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl2()Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->hideReferenceGradienter()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/HaloProtocol;->impl2()Lcom/android/camera/protocol/protocols/HaloProtocol;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/HaloProtocol;->disableFrontHalo()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->show()V

    goto :goto_0

    .line 14
    :cond_3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showPostCaptureAlert: lost BaseDelegate"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startLensActivity()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startLensActivity()V

    :cond_1
    return-void
.end method

.method private startPreviewOnCameraOpened()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start preview"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private unregisterSensor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setLieIndicatorEnabled(Z)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateAIWatermark()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->needActiveASD()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    if-eq v1, v0, :cond_2

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAiASDEnable(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setASDPeriod(I)V

    .line 7
    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    return p0
.end method

.method private updateASDDirtyDetect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isLensDirtyDetectEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0Oo()Z

    move-result v2

    const-string/jumbo v3, "pref_lens_dirty_tip"

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->shouldShowLensDirtyDetectHintByTimes()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setAsdDirtyEnable(Z)V

    :cond_1
    return-void
.end method

.method private updateAiShutter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiShutterOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->applyAiShutterEnable(Z)V

    return-void
.end method

.method private updateAlgorithmName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOoO()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "soft-portrait-enc"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "soft-portrait"

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getDualBokehVendorId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera2/portrait/PortraitUtil;->getBokehAlgorithmName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "portrait"

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAlgorithmName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAlgorithmName:Ljava/lang/String;

    return-void
.end method

.method private updateAnchorFramePreview()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    return v0
.end method

.method private updateDecodePreview()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->scanQRCodeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo00oO()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDecodePreview: PreviewDecodeManager AlgorithmPreviewSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/DocViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->hideOrShowDocument(Z)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->startDecode()V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method

.method private updateEvValue()V
    .locals 3

    const-string/jumbo v0, "pref_qc_camera_manual_exposure_value_key"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureCompensationStep(Lcom/android/camera2/CameraCapabilities;)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {v2, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setEvValue(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setEvState(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    return-void
.end method

.method private updateFocusMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFocusMode(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusStateIfNeeded()V

    :cond_0
    const-string v2, "manual"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    .line 9
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMinimumFocusDistance(Lcom/android/camera2/CameraCapabilities;)F

    move-result v2

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxFocusDistance(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    sub-float/2addr v2, v0

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    mul-float/2addr v2, v0

    div-float v0, v2, v4

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFocusDistance(F)V

    :cond_2
    return-void
.end method

.method private updateJpegQuality()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->clampQuality(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setJpegQuality(I)V

    :cond_0
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xab

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->updatePortraitBokeh1x()V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/android/camera/module/image/ImageModuleUtil;->getImageFormat(Z)I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v15

    .line 5
    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v5, v15}, Lcom/android/camera/module/Camera2Module;->requireRaw(II)Z

    move-result v16

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isHeicPreferred()Z

    move-result v17

    .line 7
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    if-eqz v17, :cond_3

    const v6, 0x48454946

    goto :goto_2

    :cond_3
    const/16 v6, 0x100

    :goto_2
    iput v6, v5, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    .line 8
    sget-object v5, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    .line 9
    iget-object v8, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v8, v8, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v8

    const-string v18, "HEIC"

    const-string v19, "JPEG"

    if-eqz v8, :cond_4

    move-object/from16 v8, v18

    goto :goto_3

    :cond_4
    move-object/from16 v8, v19

    :goto_3
    aput-object v8, v7, v4

    const-string/jumbo v8, "updateSize: use %s as preferred output image format"

    .line 10
    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v5

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    move/from16 v20, v3

    goto :goto_4

    :cond_5
    move/from16 v20, v4

    :goto_4
    if-eqz v20, :cond_6

    .line 13
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v8, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v9, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v10, v0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    move v6, v1

    move/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateMultiSurfaceSatPicSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V

    goto :goto_5

    .line 14
    :cond_6
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v9, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v10, v6, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->getOperatingMode()I

    move-result v11

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureEnabled()Z

    move-result v12

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->isInQCFAMode()Z

    move-result v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v13, v17

    .line 18
    invoke-virtual/range {v5 .. v14}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateNormalSurfacePicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZIZZZ)V

    .line 19
    :goto_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v16, :cond_8

    if-eqz v15, :cond_7

    goto :goto_6

    :cond_7
    move v5, v4

    goto :goto_7

    :cond_8
    :goto_6
    move v5, v3

    .line 20
    :goto_7
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {v5, v6}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateTuningBufferSize(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    .line 21
    :cond_9
    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-static {v5, v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 22
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    iget v6, v6, Lcom/android/camera/CameraSize;->width:I

    iget-object v7, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    iget v7, v7, Lcom/android/camera/CameraSize;->height:I

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v8}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(IILcom/android/camera2/CameraCapabilities;)F

    move-result v6

    float-to-double v13, v6

    .line 23
    iget v6, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v2, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 24
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v7, 0x0

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v8

    .line 25
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000Oo()Lcom/android/camera/CameraSize;

    move-result-object v12

    move-object v9, v5

    move-wide v10, v13

    .line 26
    invoke-static/range {v7 .. v12}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    goto :goto_8

    .line 27
    :cond_a
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v6

    invoke-static {v4, v6, v5, v13, v14}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 28
    :goto_8
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/camera2/CameraConfigManager;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 29
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {v5, v2, v13, v14, v6}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateAlgorithmPreviewSizeAndFormat(Ljava/util/List;Lcom/android/camera/CameraSize;DLcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    .line 30
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v9, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v2, :cond_c

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    move v10, v4

    goto :goto_a

    :cond_c
    :goto_9
    move v10, v3

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureEnabled()Z

    move-result v11

    move/from16 v6, v17

    move/from16 v7, v20

    invoke-virtual/range {v5 .. v11}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateParallelSessionPicSize(ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZZ)V

    .line 31
    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v7

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v9, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v2, :cond_e

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_b

    :cond_d
    move v10, v4

    goto :goto_c

    :cond_e
    :goto_b
    move v10, v3

    :goto_c
    move v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateThirdPartyPicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V

    .line 32
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 33
    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v6, v6, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v6, :cond_f

    const-string v18, "YUV"

    goto :goto_d

    :cond_f
    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_d

    :cond_10
    move-object/from16 v18, v19

    :goto_d
    aput-object v18, v5, v4

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 34
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v4, v4, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    aput-object v4, v5, v3

    const-string/jumbo v3, "updateSize: picture size (%s): %s, preview size: %s, sensor raw image size: %s"

    .line 35
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->checkDisplayOrientation()V

    return-void
.end method

.method private updatePortraitLighting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitLightingVersion(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/render/FilterFactory;->setLightingVersion(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setPortraitLightingOn(Z)V

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setPortraitLighting(I)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->setLightingEffect()V

    return-void
.end method

.method private updateQuickShotStatus()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isNeedFixedShotTime()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Ooooo0o()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    .line 5
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraConfigs;->setHighQualityQuickShotEnabled(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraConfigs;->setQuickShotEnabled(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraConfigs;->setMfHdrQuickShotEnabled(Z)V

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/HybridZoomingSystem;->isZoomRatioNone(FZ)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v4}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    goto :goto_2

    .line 17
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    .line 18
    :goto_2
    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    invoke-virtual {v0, v4}, Lcom/android/camera2/Camera2Proxy;->setHdrDegradeMFNREnabled(Z)V

    .line 19
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighQualityQuickShotLimitMnfrInputNumFramesEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getMiCamera2ShotQueueSize()I

    move-result v3

    if-lez v3, :cond_3

    .line 21
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera2/CameraConfigManager;->setLimitMfnrNumFramesEnabled(Z)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigManager;->setLimitMfnrNumFramesEnabled(Z)V

    .line 23
    :goto_3
    iget v3, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-eq v3, v1, :cond_4

    .line 24
    invoke-virtual {v0, v5}, Lcom/android/camera2/Camera2Proxy;->setFixShotTimeEnabled(Z)V

    .line 25
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-lez v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":send MSG_FIXED_SHOT2SHOT_TIME_OUT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 29
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setFixShotTimeEnabled(Z)V

    :cond_5
    :goto_4
    return-void
.end method

.method private updateSRAndMFNR()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0:Z

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    :goto_1
    if-nez v0, :cond_4

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    :cond_6
    return-void
.end method

.method private updateShotDetermine()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v0, 0xab

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v3, v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o00O()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0O0()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0o()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v12

    :goto_1
    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v13

    .line 7
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    const/16 v1, 0xa3

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mIsParallelParameterSet:Z

    if-nez v1, :cond_4

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000O0()Ljava/util/Map;

    move-result-object v1

    .line 10
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelPerformance:I

    .line 11
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelQuality:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setMaxQueueSize(I)V

    .line 14
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParallelPerformance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget v6, v6, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelPerformance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mParallelQuality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget v6, v6, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " maxQueueSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget v5, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelPerformance:I

    iget v4, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mParallelQuality:I

    invoke-virtual {v1, v5, v4}, Lcom/android/camera2/CameraConfigManager;->setParallelSettings(II)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iput-boolean v12, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mIsParallelParameterSet:Z

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v1, :cond_5

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oOO()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v12

    goto :goto_3

    :cond_5
    move v1, v13

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    :cond_6
    if-ne v3, v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/image/ImageModuleUtil;->isMultipleRawBokehUseCase(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/camera/module/Camera2Module;->isSatMultipleRawUseCase(I)Z

    move-result v0

    :goto_4
    move v9, v0

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    move v6, v0

    goto :goto_5

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v0, :cond_9

    move v6, v2

    goto :goto_5

    :cond_9
    move v6, v12

    .line 25
    :goto_5
    new-instance v14, Lcom/android/camera/module/shottype/ShotTypeParam;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 26
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v7, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldDoMultiFrameCapture()Z

    move-result v8

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v10, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/module/shottype/ShotTypeParam;-><init>(Lcom/android/camera2/CameraConfigs;ZIIIIZZZZZ)V

    .line 27
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureRequired()Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->setCupCapture(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->setRawType(I)V

    .line 29
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_a

    .line 30
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDngPostProc(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->setDngPostProc(Z)V

    .line 31
    :cond_a
    new-instance v0, Lcom/android/camera/module/shottype/ShotTypeChainManager;

    invoke-direct {v0, v14}, Lcom/android/camera/module/shottype/ShotTypeChainManager;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeChainManager;->getChainHandler()Lcom/android/camera/module/shottype/ShotTypeHandler;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeChainManager;->getChainHandler()Lcom/android/camera/module/shottype/ShotTypeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ChainHandler;->handle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_b
    move v0, v13

    .line 34
    :goto_6
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableParallel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enableShot2Gallery="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shotType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setShot2Gallery(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotAndQuickShotMixedUseSupport()Z

    move-result v0

    .line 38
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOO()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v12, v13

    goto :goto_7

    :cond_d
    move v12, v0

    .line 40
    :goto_7
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HQQuickShot | needMixQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isMixQuickShotSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/android/camera2/CameraConfigManager;->applyMixQuickShot(Z)V

    return-void
.end method

.method private updateSwMfnr()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isUseSwMfnr()Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSwMfnr to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSwMfnr(Z)V

    :cond_0
    return-void
.end method

.method private updateUltraWideLDC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setUltraWideLDC(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportSATUltraWideLDCEnable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideLDCEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSATUltraWideLDC(Z)V

    :cond_0
    return-void
.end method

.method private updateVideoSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->height:I

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-direct {v1, v2, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 7
    new-instance v1, Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v1, Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->height:I

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-direct {v1, v2, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->setVideoSize(Lcom/android/camera/CameraSize;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCallbackType()I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->initPreviewCallbackTypeDecoders(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/Camera;)V
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 4

    .line 12
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onButtonStatusFocused: capture down time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 13
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onButtonStatusFocused: button status focusing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onButtonStatusFocused: reset button status"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 18
    iput-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    .line 19
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/RecordState;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onLongExposeStart()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "[WTP]CacheImageDecoder#init: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-direct {v0}, Lcom/android/zxing/decoders/CacheImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    .line 23
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/zxing/decoders/CacheImageDecoder;->init(I)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {v0, p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->setAnchorPreviewCallback(Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;)V

    .line 25
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setCacheImageDecoder(Lcom/android/zxing/decoders/CacheImageDecoder;)V

    .line 26
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string p1, "[WTP]CacheImageDecoder#init: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera2/QuickViewParam;)V
    .locals 3

    .line 36
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    const-string v0, "IMG_"

    const-string v1, "IMG_Preview_"

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 30
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDocumentPreview mShootOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/camera/Util;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    const/16 v0, 0x64

    .line 33
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p2, p1, v0, v1}, Lcom/android/camera/Util;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z

    .line 34
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 2

    .line 9
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takePicture play sound when up"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, p0}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1

    .line 39
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->initEffectCropView()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 41
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->updateEffectViewVisible()V

    xor-int/lit8 p0, p1, 0x1

    .line 42
    invoke-interface {p2, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setEvAdjustable(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
    .end array-data
.end method

.method public synthetic OooO00o(ZZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 15

    move-object v0, p0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    .line 3
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v8

    move-object/from16 v3, p4

    move/from16 v6, p2

    .line 5
    invoke-interface/range {v3 .. v8}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateFaceView(ZZZZI)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object/from16 v9, p4

    move/from16 v11, p3

    move/from16 v12, p2

    .line 6
    invoke-interface/range {v9 .. v14}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateFaceView(ZZZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera2/QuickViewParam;)V
    .locals 1

    .line 2
    iget-boolean v0, p1, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundOrReadPixel(ZZ)V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera2/QuickViewParam;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundNoPreviewThumbnail(Z)V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setCameraDisplayOrientation(I)V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->setEffectViewVisible(Z)V

    const/4 v1, 0x7

    .line 3
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    .line 4
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setIdPhotoBoxVisible(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/customization/ThemeModeManager;->setThemeChangeListener(Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->doAttach()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)[Landroid/graphics/RectF;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0oO()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    return-void
.end method

.method public synthetic OooO0oo()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    return-void
.end method

.method public synthetic OooOO0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setDeviceOrientation(I)V

    return-void
.end method

.method public synthetic OooOO0O()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showDocumentPreview finished"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/DocViewProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/DocViewProtocol;->hideOrShowDocument(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/zxing/PreviewDecodeManager;->startDecode(I)V

    return-void
.end method

.method public synthetic OooOO0o()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "[WTP] mCacheImageDecoder#startDecode E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "[WTP] mCacheImageDecoder#startDecode startDecode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {v2}, Lcom/android/zxing/decoders/CacheImageDecoder;->getAnchorPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->startDecode()V

    .line 6
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "[WTP] mCacheImageDecoder#startDecode X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SupportMTKMFNRAlgo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 2
    new-instance v0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mFaceDetectCB:Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;-><init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 3
    new-instance v0, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/NearRangeSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Ooooo00;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Ooooo00;-><init>(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    new-instance v0, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/ZoomMapMultipleASD;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 6
    new-instance v0, Lcom/android/camera/module/interceptor/camera/HHTDisableSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/HHTDisableSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 7
    new-instance v0, Lcom/android/camera/module/interceptor/camera/SpecShotModeSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/SpecShotModeSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 8
    new-instance v0, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/LLSNeededSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 9
    new-instance v0, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 10
    new-instance v0, Lcom/android/camera/module/interceptor/camera/HistogramMultipleASD;

    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/HistogramMultipleASD;-><init>(Lcom/android/camera/protocol/protocols/TopAlert;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 11
    new-instance v0, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/AiSceneMultipleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 12
    new-instance v0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;-><init>(Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 13
    new-instance v0, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Lcom/android/camera/module/image/SuperNightCbImageImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/SuperNightMultipleASD;-><init>(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 14
    new-instance v0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 15
    new-instance v0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 16
    new-instance v0, Lcom/android/camera/module/interceptor/camera/FlashMultipleASD;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/interceptor/camera/FlashMultipleASD;-><init>(Lcom/android/camera/module/interceptor/camera/FlashMultipleASD$IFlashAsdDetected;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 17
    new-instance p0, Lcom/android/camera/module/interceptor/camera/NeedPerformanceDumpSimpleASD;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/NeedPerformanceDumpSimpleASD;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 18
    new-instance p0, Lcom/android/camera/module/interceptor/camera/CameraThermalLevelSimpleASD;

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/interceptor/camera/CameraThermalLevelSimpleASD;-><init>(Lcom/android/camera/ThermalDetector;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    .line 19
    new-instance p0, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public applyZoomRatio()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->applyZoomRatio(F)V

    return-void
.end method

.method public applyZoomRatio(F)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateSpecshotMode()Z

    return-void
.end method

.method public blockSnapClickUntilSaveFinish(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSnapClickUntilFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/module/common/ModuleUtil;->showOrHideLoadingProgress(ZZ)V

    :cond_0
    return-void
.end method

.method public calculateTimeout(I)J
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x5dc0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x2ee0

    :goto_0
    return-wide p0
.end method

.method public cancelFocus(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->cancelFocus(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    :cond_0
    return-void
.end method

.method public changeScreenOrientation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenOrientation isInTimerBurstShotting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo0o;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateVideoSize()V

    return-void
.end method

.method public checkForAnchorFrame()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oooo()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public checkForDownCapture()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonLongClickCancel: notify cancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonLongClickCancel: reset button status"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    .line 8
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonLongClickCancel: button status focusing"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public checkMoreFrameCaptureLockAFAE()Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "mCamera2Device == null, return"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00OOO()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOo()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v5, v4, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    if-nez v5, :cond_5

    if-nez v2, :cond_5

    .line 10
    invoke-virtual {v4}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v2}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 13
    :cond_6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    if-eqz v2, :cond_8

    .line 14
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 15
    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 17
    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v3
.end method

.method public checkMotionStatus(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMotionCaptureType(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->XIAOMI_MOTION_CAPTURE_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tag of motion capture type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMotionCaptureType(I)V

    :cond_1
    return v0
.end method

.method public checkShutterCondition()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: low storage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: screen is slide off"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->isZoomSliderViewIdle()Z

    move-result p0

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: 3SAT zooming"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 12
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: blockSnap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ignoreTouchEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public checkSuperResolutionValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateSuperResolution: null camera device"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "SR force off for ultra wide camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "HAL doesn\'t support SR in macro mode."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    const-string v2, "macro camera prefers MFNR to SR"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMfnrMacroZoomSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 13
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 14
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSREnable()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 15
    :cond_7
    :goto_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "SR is disabled"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public checkWhenLongClick()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mCancelDownCaptureOnLongClick:Z

    .line 2
    iget-wide v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onShutterButtonLongClick notifyCancel"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v5, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onShutterButtonLongClick: reset button status"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    .line 9
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 10
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mCancelDownCaptureOnLongClick:Z

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonLongClick: button status focusing"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onShutterButtonLongClick: not down capture"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonLongClick: doing action"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public clampQuality(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear108MPSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/16 v0, 0x5a

    .line 2
    invoke-static {p1, p0, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    :cond_0
    return p1
.end method

.method public closeCamera()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-boolean v1, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v2, v2, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v2, v2, Lcom/android/camera/module/image/NightManager;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setScreenLightCallback(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera2/CameraConfigManager;->setAiASDEnable(Z)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->scanQRCodeEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo00oO()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xba

    if-ne v2, v4, :cond_5

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionStarted(Z)V

    .line 24
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setM3ALocked(Z)V

    .line 25
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setASDEnable(Z)V

    .line 26
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera2/CameraConfigManager;->setColorEnhanceEnable(Z)V

    .line 27
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(IZ)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelCameraSessionMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 30
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V

    .line 31
    :cond_7
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 32
    :cond_8
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->destroy()V

    .line 36
    :cond_9
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->quit()V

    .line 37
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    if-eqz p0, :cond_a

    .line 38
    invoke-virtual {p0}, Lcom/android/zxing/decoders/CacheImageDecoder;->quit()V

    .line 39
    :cond_a
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->setResultDataCallbackListener(Lcom/xiaomi/camera/core/IResultDataCallbackListener;)V

    .line 42
    :cond_b
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->stopCpuBoost()V

    .line 43
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "closeCamera: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 44
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public varargs consumePreference([I)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_13

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    const/4 v4, 0x5

    if-eq v3, v4, :cond_e

    const/4 v4, 0x7

    if-eq v3, v4, :cond_d

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_c

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_b

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_a

    const/16 v4, 0x42

    if-eq v3, v4, :cond_9

    const/16 v4, 0x46

    if-eq v3, v4, :cond_8

    const/16 v4, 0x49

    if-eq v3, v4, :cond_7

    const/16 v4, 0x52

    if-eq v3, v4, :cond_6

    const/16 v4, 0x54

    if-eq v3, v4, :cond_5

    const/16 v4, 0x56

    if-eq v3, v4, :cond_4

    const/16 v4, 0x37

    if-eq v3, v4, :cond_3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    .line 2
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->consumePreference(I)Z

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateASDDirtyDetect()V

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateCinematicPhoto()V

    goto/16 :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateOnTripMode()V

    goto/16 :goto_1

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto/16 :goto_1

    .line 7
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateShotDetermine()V

    goto/16 :goto_1

    .line 8
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updatePortraitLighting()V

    goto/16 :goto_1

    .line 9
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSwMfnr()V

    goto/16 :goto_1

    .line 10
    :pswitch_7
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v3}, Lcom/android/camera/module/image/AiSceneManager;->updateAiScene()V

    goto/16 :goto_1

    .line 11
    :pswitch_8
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setDeviceOrientation(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    goto/16 :goto_1

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSharpness()V

    goto/16 :goto_1

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSaturation()V

    goto/16 :goto_1

    .line 15
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateContrast()V

    goto/16 :goto_1

    .line 16
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto/16 :goto_1

    .line 17
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->applyZoomRatio()V

    goto/16 :goto_1

    .line 18
    :pswitch_f
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateDecodePreview()V

    goto/16 :goto_1

    .line 19
    :pswitch_10
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isZslPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setEnableZsl(Z)V

    goto/16 :goto_1

    .line 20
    :pswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateFocusMode()V

    goto/16 :goto_1

    .line 21
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateBeauty()V

    .line 22
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateSkinColor()V

    goto/16 :goto_1

    .line 23
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto/16 :goto_1

    .line 24
    :pswitch_14
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {v3}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRPreference()V

    goto/16 :goto_1

    .line 25
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFlashPreference()V

    goto/16 :goto_1

    .line 26
    :pswitch_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/camera/module/BaseModule;->initializeMetaDataCallback(Lcom/android/camera/module/BaseModule;)V

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v4, v4, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    invoke-virtual {v3, v4}, Lcom/android/camera/module/image/ImageModuleCameraManager;->updateAsdNightPreferred(Z)V

    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v3}, Lcom/android/camera/module/image/NightManager;->updateSuperNight()V

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateTrackFocus()V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateTrackEye()V

    goto :goto_1

    .line 33
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateHighQualityPreferred()V

    goto :goto_1

    .line 34
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateAiShutter()V

    goto :goto_1

    .line 35
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateAIWatermark()Z

    goto :goto_1

    .line 36
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateASD()V

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 38
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateEvValue()V

    goto :goto_1

    .line 39
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateUltraWideLDC()V

    goto :goto_1

    .line 40
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    goto :goto_1

    .line 41
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateJpegQuality()V

    goto :goto_1

    .line 42
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFace()V

    goto :goto_1

    .line 43
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateFocusArea(Z)V

    goto :goto_1

    .line 44
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFilter()V

    goto :goto_1

    .line 45
    :cond_11
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updatePictureAndPreviewSize()V

    :cond_12
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2a
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public consumeWatermarkCoordinate(J)V
    .locals 0

    return-void
.end method

.method public createCameraManager()Lcom/android/camera/module/common/BaseModuleCameraManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/image/ImageModuleCameraManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/ImageModuleCameraManager;-><init>(Lcom/android/camera/module/Module;)V

    return-object v0
.end method

.method public createModuleStateManager()Lcom/android/camera/module/common/BaseModuleStateManager;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/module/image/ImageModuleStateManager;

    invoke-direct {p0}, Lcom/android/camera/module/image/ImageModuleStateManager;-><init>()V

    return-object p0
.end method

.method public doLaterReleaseIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "doLaterReleaseIfNeed: mActivity is null..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isShotQueueMultitasking()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    const/16 v3, 0x32

    .line 7
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 10
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "doLaterRelease"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :cond_4
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "doLaterRelease but session is closed"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->releaseAll(Z)V

    return-void

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "doLaterReleaseIfNeed: isDeparted..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Ooo0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000Ooo0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v2, "doLaterReleaseIfNeed: surfaceTexture expired, restartModule"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoOO;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoOO;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public enablePreviewAsThumbnail()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPortraitLightingOn()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 7
    :cond_5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xad

    if-eq v0, v2, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 8
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 9
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 10
    :cond_8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOo0()Z

    move-result p0

    return p0

    .line 12
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    .line 13
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-ne p0, v1, :cond_a

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOOo()Z

    move-result p0

    return p0

    .line 15
    :cond_a
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->isNeedPreviewThumbnail()Z

    move-result p0

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public generateFileTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->generateFileTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAiSceneEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iput-boolean v1, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mAIWatermarkEnable:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getAutoFlashTargetState()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mAutoFlashTargetState:Z

    return p0
.end method

.method public getAutoHDRTargetState()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    iget-boolean p0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mAutoHDRTargetState:Z

    return p0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    return-wide v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, " "

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraCharacteristics(Lcom/android/camera2/CameraCapabilities;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 6
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    if-eqz v5, :cond_0

    .line 7
    array-length v6, v5

    if-lez v6, :cond_0

    const-string v6, "lensFocal:"

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    array-length v5, v2

    if-lez v5, :cond_1

    const-string v5, "lensApertues:"

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0xa7

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "sceneProfession:true"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "zoomMultiple:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAFRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    array-length v2, v1

    if-lez v2, :cond_4

    .line 17
    aget-object v1, v1, v3

    if-nez v1, :cond_3

    const-string v1, "0"

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result v3

    .line 20
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 21
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afRoi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RectF;

    .line 25
    invoke-static {v1}, Lcom/android/camera/module/DebugInfoUtil;->getRetriveFaceInfo([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "faceRoi:"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "filterId:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AIScene:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFixTimeBackCamera()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFixTimeForBackSAT(Lcom/android/camera2/CameraCapabilities;)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getQuickShotBackSRCaptureDelayTime(Lcom/android/camera2/CameraCapabilities;)J

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getQuickShotBackHdrDelayTime(Lcom/android/camera2/CameraCapabilities;)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/common/ModuleUtil;->isFaceBeautyOn(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getQuickShotFaceBeautyDelayTime(Lcom/android/camera2/CameraCapabilities;)J

    move-result-wide p0

    return-wide p0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 9
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getQuickShotBackSuperNightSeDelayTime(Lcom/android/camera2/CameraCapabilities;)J

    move-result-wide p0

    return-wide p0

    .line 10
    :cond_5
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getQuickShotBackNormalCaptureDelayTime(Lcom/android/camera2/CameraCapabilities;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFixTimeFrontCamera()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGraphDescriptorBean(II)Lcom/xiaomi/engine/GraphDescriptorBean;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraIdUtil;->getCombinationModeByActualId(I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x201

    .line 2
    :cond_0
    new-instance p1, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0, p0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    return-object p1
.end method

.method public getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    check-cast p0, Lcom/android/camera/module/image/ImageModuleCameraManager;

    return-object p0
.end method

.method public getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/image/ImageModuleStateManager;

    return-object p0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result p0

    return p0
.end method

.method public getMixedQuickShotSupportOfBackCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMixedQuickShotSupportOfFrontCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v0

    .line 2
    new-instance v1, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;-><init>(IIILcom/android/camera2/CameraCapabilities;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->setImageCaptureIntent(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;

    move-result-object p0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->setParallelEnabled(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->build()Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    move-result-object p0

    return-object p0
.end method

.method public getMutexCallback()Lcom/android/camera/MutexModeManager$MutexCallBack;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/Camera2Module$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$3;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-object v0
.end method

.method public getOperatingMode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    return v0
.end method

.method public getPictureFormatSuitableForShot(II)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/image/ImageModuleUtil;->isLiveShotAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p0, 0x100

    return p0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    return p0
.end method

.method public getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/image/ImageModuleCameraManager;->isPictureUseDualFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getOperatingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setCurrentModuleIndex(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setIsSmallPicture(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setAiEnabled(Z)Lcom/xiaomi/camera/core/PictureInfo;

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setAiType(I)Lcom/xiaomi/camera/core/PictureInfo;

    .line 11
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v1, 0x1

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_0

    .line 12
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setProfession(Z)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setShotBurst(Z)V

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setFilter(I)Lcom/xiaomi/camera/core/PictureInfo;

    .line 15
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "front"

    .line 17
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v0

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_RearUltra"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_RearMacro"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_RearTele"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_RearTele4x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_RearWide"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rear"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    .line 31
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFocalLengths:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    .line 32
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensfocal(F)V

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v0, v0, Lcom/android/camera/module/image/NightManager;->mCaptureSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->asdExifInfo:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setPreviewAsdExif(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object v0, v0, Lcom/android/camera/module/image/NightManager;->mCaptureSuperNightExifInfo:Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    invoke-static {v0}, Lcom/android/camera/module/DebugInfoUtil;->getSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 37
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setPreviewSuperNightExif(Ljava/lang/String;)V

    .line 38
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mApertures:[F

    if-eqz v0, :cond_b

    array-length v3, v0

    if-lez v3, :cond_b

    .line 39
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setLensApertues(F)V

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setFaceRoi(Ljava/lang/String;)V

    .line 42
    :cond_c
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setOperateMode(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setZoomMulti(F)Lcom/xiaomi/camera/core/PictureInfo;

    .line 44
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 45
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/PictureInfo;->setEvValue(I)V

    .line 46
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 47
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAFRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 48
    array-length v3, v0

    if-lez v3, :cond_d

    .line 49
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setTouchRoi(Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 50
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 51
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object v0

    const-string v2, "i:0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 52
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLevelBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setBeautyLevel(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    .line 54
    :cond_e
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xad

    if-ne p0, v0, :cond_f

    .line 55
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setNightScene(I)Lcom/xiaomi/camera/core/PictureInfo;

    .line 56
    :cond_f
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRawCallbackType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSuperNightCbImpl()Lcom/android/camera/module/image/SuperNightCbImageImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/module/image/SuperNightCbImageImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/SuperNightCbImageImpl;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Lcom/android/camera/module/image/SuperNightCbImageImpl;

    return-object p0
.end method

.method public getTagSupportModeBackCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTagSupportModeFrontCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleUpdateFaceView(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO;

    invoke-direct {v2, p0, p1, v0, p2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO;-><init>(Lcom/android/camera/module/Camera2Module;ZZZ)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initZoomMapControllerIfNeeded()V
    .locals 0

    return-void
.end method

.method public isBlockSnap()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->shouldShotOneByOne(Lcom/android/camera2/Camera2Proxy;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureWillCostHugeMemory()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->shouldBlockOneByOneCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: shooting super night or shooting with huge memory, then discard snap"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelCameraSessionMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    goto/16 :goto_4

    :cond_1
    move v0, v3

    goto/16 :goto_7

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_8

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->isParallelBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_2
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_3

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 17
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShotBusy()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 18
    :goto_3
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-nez v1, :cond_e

    .line 19
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "isBlockSnap HQQuickShot is in progress!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    move v0, v2

    goto/16 :goto_7

    .line 20
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 24
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_4

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_5

    :cond_c
    move v0, v3

    :goto_5
    if-nez v0, :cond_e

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v1

    if-nez v1, :cond_e

    .line 27
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v3

    .line 29
    :goto_6
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockSnap snapshotInProgress: getCameraState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_e
    :goto_7
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xba

    if-ne v1, v4, :cond_10

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 31
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v1

    const/4 v4, 0x2

    .line 32
    invoke-virtual {v1, v4}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 33
    check-cast v1, Lcom/android/zxing/decoders/DocumentDecoder;

    invoke-virtual {v1}, Lcom/android/zxing/decoders/DocumentDecoder;->getCachePreview()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_10

    .line 34
    :cond_f
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: document cache preview is null..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 35
    :cond_10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 36
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: paused"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 37
    :cond_11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isZooming()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: zooming"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 39
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 40
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: isKeptBitmapTexture"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 41
    :cond_13
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v1, :cond_14

    .line 42
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: multiSnap"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 43
    :cond_14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v1

    if-nez v1, :cond_15

    .line 44
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: getCameraState() = CameraStateConstant.PREVIEW_STOPPED"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    if-eqz v0, :cond_16

    .line 45
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: snapshot is in progress"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 46
    :cond_16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelCameraSessionMode()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v1

    if-nez v1, :cond_17

    .line 48
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldEnableMfHdrQuickShot()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_8

    :cond_17
    move v1, v3

    .line 49
    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: mCamera2Device\'s boolean is true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 51
    :cond_18
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isQueueFull()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 52
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: queue is full"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 53
    :cond_19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 54
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/MIVICaptureManager;->isSnapshotAvailable()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 55
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: mivi queue is full"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 56
    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 57
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: counting down"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 58
    :cond_1b
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    if-eqz v0, :cond_1c

    .line 59
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: waiting save finish"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 60
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/hdr/ParallelManager;->isParallelSessionConfigured()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 61
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: parallel session hasn\'t been configured"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 62
    :cond_1d
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 63
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: has message MSG_RESUME_CAPTURE"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 64
    :cond_1e
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isBlockSnap: return false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final isBokehUltraWideBackCamera()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isCameraSwitchingDuringZoomingAllowed()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCaptureIntent()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p0

    return p0
.end method

.method public isCaptureWillCostHugeMemory()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isHugeMemCaptureScene()Z

    move-result p0

    return p0
.end method

.method public isCupCaptureEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDoingAction()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelCameraSessionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->isParallelBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 7
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 8
    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isZooming()Z

    move-result v3

    if-nez v3, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 10
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public isDownCapturing()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualCamera()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isDualCamera(I)Z

    move-result p0

    return p0
.end method

.method public isFallbackToWide()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v4

    invoke-static {v0, v2}, Lcom/android/camera/Util;->getValue(Ljava/util/HashMap;I)F

    move-result v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    return v3

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isFastShot()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotAnimateEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    .line 3
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-nez p0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public isFirstCreateCapture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    return p0
.end method

.method public isFocusFrameAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isFrontMirror()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p0

    return p0
.end method

.method public isHighQualityQuickShotAndQuickShotMixedUseSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getMixedQuickShotSupportOfFrontCamera()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getMixedQuickShotSupportOfBackCamera()Z

    move-result p0

    return p0
.end method

.method public isHugeMemCaptureScene()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00oO0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isCaptureWillCostHugeMemory: true >>> capture will trigger AINR "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v0, 0x9002

    if-ne v0, p0, :cond_0

    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInCountDown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isInCountDown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInQCFAMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIsAiShutterOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isMeteringAreaSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusOrAELockSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x5

    if-eq p0, v0, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isMfnrNeeded()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/camera/Util;->isInQuickshotNoSRZoomRange(Lcom/android/camera2/CameraCapabilities;F)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v2, v3

    .line 8
    :cond_2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mfnrNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOO()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    cmpl-float v0, v1, v4

    if-lez v0, :cond_4

    .line 10
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "mtk mfnrNeeded true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    cmpg-float v0, v1, v4

    if-lez v0, :cond_5

    float-to-double v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0Oo()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-nez p0, :cond_6

    :cond_5
    move v2, v3

    .line 12
    :cond_6
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMfnrNeeded -> getThresholdZoom is null, and mfnrNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isMultipleRawHdrSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDelaySound()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedNearRangeTip()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNeedSequence()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isParallelCameraSessionMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isParallelSessionEnable()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRawOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0ooo()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000oo()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoO0o()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isForceMainBackCamera()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public isPortraitMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewThumbnailWhenFlash()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    const-string v0, "1"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isQuickShotSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReceiveDoubleTap()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p0

    return p0
.end method

.method public isRepeatingRequestInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSatMultipleRawUseCase(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isSelectingCapturedResult()Z

    move-result p0

    return p0
.end method

.method public isShot2GalleryOrEnableParallel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result p0

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSupportFocusShoot()Z

    move-result p0

    return p0
.end method

.method public isSuperResolutionHDR()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    invoke-static {v2, p0}, Lcom/android/camera/HybridZoomingSystem;->getZoomRatioNone(ZI)F

    move-result p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    const-string p0, "auto"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportFocusShoot()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFocusShootSettingNeed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_focus_shoot_key"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isGlobalSwitchOn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTestImageCaptureWithoutLocation()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.providerui.cts.fileprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isTestImageCaptureWithoutLocation"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUnIncorruptible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUnInterruptableReason(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string v1, "bitmap cover"

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUnInterruptableReason(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string/jumbo v1, "snapshot"

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUnInterruptableReason(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getUnInterruptableReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isUseSwMfnr()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000ooo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "SwMfnr force off for ultra wide camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "Mfnr not enabled"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO00o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "SwMfnr is not supported"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "Mutex mode is not normal"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/16 v0, 0xab

    .line 10
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "front portrait SwMfnr is not supported: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000ooo()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa7

    if-eq v0, v3, :cond_7

    const/16 v3, 0xad

    if-eq v0, v3, :cond_7

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "For the devices does not have hardware MFNR, use software MFNR"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 18
    :cond_8
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    const v3, 0x8005

    if-ne v0, v3, :cond_9

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0o()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 20
    :cond_9
    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    if-ne p0, v3, :cond_a

    .line 21
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0o()Z

    move-result p0

    if-nez p0, :cond_a

    return v1

    .line 22
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo()Z

    move-result p0

    if-eqz p0, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public isZoomEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZslPreferred()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public judgeHighQualityQuickShotSupportByFeature()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public multiCapture()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mCancelDownCaptureOnLongClick:Z

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    return v1

    .line 7
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v1, "multiCapture: ignore down capture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->multiCapture()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object p0, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 10
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v3, "multiCapture : Activity already paused, ignore!"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStartResult:Ljava/lang/Boolean;

    return v1
.end method

.method public needKeepCoverView()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    return p0
.end method

.method public needMixQuickShot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needQuickShot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needShowThumbProgressImmediately()Z
    .locals 4

    const v0, 0x7f1206ba

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_exposuretime_key"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x17d78400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notSupportUltraZoom()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isZoomEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/DualController;->isZoomVisible()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getNoSupportZoomTip()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1204e3

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    .line 12
    :cond_3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onZoomingActionStart(): zoom is currently disallowed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public notifyFirstFrameArrived()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAfterFirstFrameArrived.m3ALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus()V

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstManager;->stopTimerBurst()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    :cond_1
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->handleSuperNightResultIfNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    :cond_4
    return-void
.end method

.method public onAllHalFrameReceived()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onAllHalFrameReceived : module has been destroy !!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/timerburst/TimerBurstManager;->getCountDownTimes(ILandroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAllHalFrameReceived: isMenuTimer > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xad

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getVolumeKeyFunction()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1207f6

    invoke-static {v2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    if-eqz v0, :cond_5

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    .line 13
    :cond_5
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHQQuickShot: All shutter is received isHdr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDelayTimeReturned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsHighQualityQuickShotBurstShot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_8
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

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
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonLongClickCancel(Z)V

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mLastCaptureTime:J

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/timerburst/TimerBurstManager;->onBackPressed(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_a

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "on Receive voice control broadcast action intent"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVoiceControlAction()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object p2, p0, Lcom/android/camera/module/Camera2Module;->mBroadcastIntent:Landroid/content/Intent;

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4bbb5326    # 2.4553036E7f

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "on voice control: block snap"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mBroadcastIntent:Landroid/content/Intent;

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    .line 12
    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mBroadcastIntent:Landroid/content/Intent;

    .line 13
    :goto_2
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->removeInstance(Landroid/content/Intent;)V

    goto :goto_4

    .line 14
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "on Receive speech shutter broadcast action intent"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "on Speech shutter: ingore caz mode changing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/16 v0, 0x6e

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    goto :goto_4

    .line 20
    :cond_8
    :goto_3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "on Speech shutter: block snap"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public onBurstPictureTakenFinished(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->handleLLSResultInCaptureMode()V

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    return-void
.end method

.method public onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraOpened()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa3

    if-eq v1, v3, :cond_0

    const/16 v3, 0xcd

    if-ne v1, v3, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getAiColorCorrectionVersion(Lcom/android/camera2/CameraCapabilities;Z)I

    move-result v2

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setAiColorCorrectionVersion(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oOOo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getAiColorCorrectionVersion(Lcom/android/camera2/CameraCapabilities;Z)I

    move-result v2

    .line 10
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setAiColorCorrectionVersion(I)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setAiColorCorrectionVersion(I)V

    .line 12
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->initZoomMapControllerIfNeeded()V

    .line 14
    sget-object v1, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_INIT:[I

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraCalibrationData(Lcom/android/camera2/CameraCapabilities;)[B

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/module/Camera2Module;->getCalibrationDataFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->saveCameraCalibrationToFile([BLjava/lang/String;)Z

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/hdr/ParallelManager;->customizeReprocessor()V

    .line 20
    :cond_6
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 22
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSatFusionCalibrationDataArray(Lcom/android/camera2/CameraCapabilities;)[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/camera/Util;->saveCameraCalibrationToFile([Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;)V

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->startPreviewOnCameraOpened()V

    .line 26
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateAutoHibernation()V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mOnResumeTime:J

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setUWAELocked(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_1
    return-void
.end method

.method public onCaptureCompleted(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted: playCameraSound"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v1}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "hdr support high quality quick shot, do not unlock AFAE"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE(Z)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/NightManager;->handleLLSResultInCaptureMode()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isAIIEPreviewEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->resumePreviewInWorkThread()V

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000Oo0;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000Oo0;-><init>(Lcom/android/camera/protocol/protocols/RecordState;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 22
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object p0, p0, Lcom/android/camera/module/image/NightManager;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_4

    const/4 p1, 0x2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onCaptureProgress: departed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p1, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-boolean v1, p1, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-boolean v3, p1, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    .line 5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-boolean v3, p1, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const-string/jumbo v1, "onCaptureProgress: quick = %b, anchorFrame = %b, doAnchor = %b, anchorPixel = %b"

    .line 6
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/Camera2Module;->onShutter(Lcom/android/camera2/QuickViewParam;I)V

    return-void
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureShutter: cameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isParallel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/Camera2Module;->onShutter(Lcom/android/camera2/QuickViewParam;I)V

    return-void
.end method

.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->updateFlashStateTimeLock()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onCaptureStart: departed"

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-object v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    .line 10
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getQuickViewParam()Lcom/android/camera2/QuickViewParam;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 11
    iget-boolean v4, v2, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 12
    iget-boolean v5, v2, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    if-eqz v2, :cond_5

    .line 13
    iget-boolean v6, v2, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 14
    iget-boolean v7, v2, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    if-eqz v7, :cond_6

    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v3

    .line 15
    :goto_3
    sget-object v8, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCaptureStart: quickShotAnimation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", anchorFrame: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", doAnchor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", doAnchorPixel: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-nez v4, :cond_b

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO0()Z

    move-result v7

    if-nez v7, :cond_7

    .line 17
    invoke-virtual {p0, v4}, Lcom/android/camera/module/Camera2Module;->updateEnablePreviewThumbnail(Z)V

    .line 18
    iget-boolean v7, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-eqz v7, :cond_7

    .line 19
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setPlayToneOnCaptureStart(Z)V

    .line 20
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-eqz v7, :cond_8

    .line 21
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setPlayToneOnCaptureStart(Z)V

    goto :goto_4

    .line 22
    :cond_8
    iget-boolean v7, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-nez v7, :cond_a

    .line 23
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 24
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getBurstNum()I

    move-result v7

    if-gt v7, v1, :cond_a

    .line 25
    :cond_9
    sget-object v7, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "single capture shutter"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/Camera2Module;->onShutter(Lcom/android/camera2/QuickViewParam;I)V

    .line 27
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setPlayToneOnCaptureStart(Z)V

    .line 28
    :cond_a
    :goto_4
    new-instance v2, Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;-><init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module$1;)V

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAddToProcessorListener(Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;)V

    .line 29
    :cond_b
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_c
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 31
    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 32
    :cond_d
    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v7, v7, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v2}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 33
    :cond_e
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v7, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 34
    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getSatCameraId()I

    move-result p2

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v9, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v7, v2, p2, v8, v9}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateOutputSize(Lcom/android/camera/CameraSize;ILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V

    .line 35
    :cond_f
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object p2, p2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    if-nez p2, :cond_10

    .line 36
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    goto :goto_5

    .line 37
    :cond_10
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    .line 38
    :goto_5
    sget-object v7, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCaptureStart: outputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v9, v7, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v7, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0, v0, v7}, Lcom/android/camera/module/Camera2Module;->getPictureFormatSuitableForShot(II)I

    move-result v7

    .line 40
    invoke-static {v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v8

    .line 41
    sget-object v10, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCaptureStart: outputFormat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_11

    const-string v12, "HEIC"

    goto :goto_6

    :cond_11
    const-string v12, "JPEG"

    :goto_6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_13

    .line 42
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v10}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 43
    invoke-interface {v10}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v10

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v10}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v10

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_13

    .line 44
    :cond_12
    new-instance v10, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-direct {v10, v11, p2}, Landroid/util/Size;-><init>(II)V

    .line 45
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCaptureStart: switched outputSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p2, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v10

    .line 46
    :cond_13
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/module/Camera2Module;->clampQuality(I)I

    move-result v8

    .line 47
    sget-object v10, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCaptureStart: outputQuality = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v10}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraCharacteristics(Lcom/android/camera2/CameraCapabilities;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 49
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    iput-object v11, p0, Lcom/android/camera/module/Camera2Module;->mFocalLengths:[F

    .line 50
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    iput-object v10, p0, Lcom/android/camera/module/Camera2Module;->mApertures:[F

    .line 51
    new-instance v10, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 52
    invoke-interface {v11}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v11

    .line 53
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v10, v11, v2, p2, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    if-eq v0, v1, :cond_14

    const/16 p2, 0xe

    if-eq v0, p2, :cond_14

    const/16 p2, 0x14

    if-ne v0, p2, :cond_15

    .line 54
    :cond_14
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object p2, p2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    if-eqz p2, :cond_15

    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_15

    .line 55
    iget v0, p2, Lcom/android/camera/CameraSize;->width:I

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v10, v0, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setRawSize(II)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 56
    :cond_15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00Oo()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 57
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getWaterMarkAppliedList()Ljava/util/List;

    move-result-object p2

    const-string v0, "device"

    invoke-static {v0, p2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 58
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getWaterMarkAppliedList()Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "watermark"

    invoke-static {v0, p2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_17

    :cond_16
    move p2, v1

    goto :goto_7

    :cond_17
    move p2, v3

    .line 59
    :goto_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_8

    :cond_18
    move-object v0, v6

    .line 61
    :goto_8
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 62
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportIspHeif(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportIspHeif(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 63
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setVendorWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 65
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasCvWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 66
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setIso(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 67
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v10

    invoke-virtual {p2, v10, v11}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setExposureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 68
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/display/device/FlatSelfieManager;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v2

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_9

    :cond_19
    move v2, v3

    goto :goto_9

    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v2

    :goto_9
    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 69
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 70
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getCvEffectForPreview()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 71
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const/4 v2, -0x1

    .line 72
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v7}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v7

    if-ne v2, v7, :cond_1b

    move v2, v3

    goto :goto_a

    :cond_1b
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v2

    :goto_a
    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 73
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 74
    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 75
    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 76
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 77
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/watermark/WaterMarkUtil;->getTimeWatermarkStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :cond_1c
    invoke-virtual {p2, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 78
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->isPictureUseDualFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAlgorithmName:Ljava/lang/String;

    .line 80
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const-string v0, ""

    .line 82
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 83
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    .line 84
    invoke-virtual {v2}, Lcom/android/camera/module/image/hdr/ParallelManager;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 85
    invoke-virtual {p2, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPrefix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 87
    invoke-virtual {p2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMoonMode(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMajorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 89
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitLightingVersion(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPortraitLightingVersion(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 90
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    if-nez v2, :cond_1d

    .line 91
    sget-object v2, Lcom/android/camera2/CameraPreferredMode;->HIGH_QUALITY_MODE:Lcom/android/camera2/CameraPreferredMode;

    goto :goto_b

    :cond_1d
    sget-object v2, Lcom/android/camera2/CameraPreferredMode;->PERFORMANCE_MODE:Lcom/android/camera2/CameraPreferredMode;

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 92
    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCameraPreferredMode(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 93
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setEffectRectAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setIsImageCaptureIntent(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-wide v6, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    .line 95
    invoke-virtual {p2, v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCaptureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 98
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSquare(Z)V

    const/16 p2, 0xba

    if-nez v4, :cond_20

    .line 99
    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    if-nez v2, :cond_20

    if-nez v5, :cond_20

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v2, p2, :cond_1e

    .line 100
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xb6

    if-ne v2, v4, :cond_1f

    .line 101
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    move v2, v1

    goto :goto_c

    :cond_20
    move v2, v3

    .line 102
    :goto_c
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parallel need thumbnail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 104
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCurrentModuleIndex(I)V

    .line 105
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v2, p2, :cond_22

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 106
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mDocumentBean:Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setDocumentBean(Lcom/android/zxing/decoders/DocumentDecoder$DocumentBean;)V

    .line 107
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 108
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_21
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 110
    :cond_22
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 111
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAdaptiveSnapshotSizeInSatModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 112
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne p2, v0, :cond_23

    move p2, v1

    goto :goto_d

    :cond_23
    move p2, v3

    .line 113
    :goto_d
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAdaptiveSnapshotSize(Z)V

    .line 114
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setLiveShotTask(Z)V

    .line 115
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 116
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 117
    :cond_24
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureStart: isParallel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shotType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v9, p2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, p2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v0, :cond_25

    .line 121
    invoke-virtual {p2, p1, v1}, Lcom/android/camera/module/image/hdr/ParallelManager;->beginParallelProcess(Lcom/xiaomi/camera/core/ParallelTaskData;Z)V

    .line 122
    :cond_25
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 123
    sget-object p2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "send msg: reset hand gesture"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x39

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_26
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 127
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 128
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isSupportParallelSuperNightEnable()Z

    move-result p2

    if-nez p2, :cond_27

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 129
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isSupportParallelLLSEnable()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 130
    :cond_27
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/NightManager;->handleSuperNightResultInCaptureMode()V

    :cond_28
    return-object p1
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->parseIntent(Lcom/android/camera/Camera;)V

    .line 3
    new-instance p1, Lcom/android/camera/module/image/Camera2ModuleHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/image/Camera2ModuleHandler;-><init>(Lcom/android/camera/module/Camera2Module;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportAnchorFrameAsThumbnail()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->onCameraOpened()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapController;->onModuleDestroy()V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/ParallelManager;->onModuleDestroy()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isPreviewReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string p1, "ignore onDoubleTap trackFocus off"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string p1, "ignore onDoubleTap isInTimerBurstShotting"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mDoubleTapedTime:J

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusState(Z)V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v4

    .line 21
    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->calculateTrackFocusArea(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDoubleTap rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p1, p0}, Lcom/android/camera2/Camera2Proxy;->startTrackFocus(Landroid/graphics/Rect;I)V

    return v1

    .line 24
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string p1, "ignore onDoubleTap"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onExtraMenuVisibilityChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/asd/FlashAsdManager;->resetAsdSceneInExtraMenuVisibilityChange()V

    :cond_0
    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onFocusAreaChanged isAFSaliencyCheckSeparation requestReadPixels"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->updateFocusAreaForAF(II)V

    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onFocusStateChanged: first frame has not arrived"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureAlertShown()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_e

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_7

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "AutoFocusTime=%1$dms focused=%2$b"

    .line 9
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOooo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOooo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    return-void

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 13
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 14
    iput v3, p0, Lcom/android/camera/module/Camera2Module;->mAFEndLogTimes:I

    const-string/jumbo v1, "onAutoFocusMoving start"

    goto :goto_0

    .line 15
    :cond_8
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mAFEndLogTimes:I

    if-nez v0, :cond_9

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAutoFocusMoving end. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mAFEndLogTimes:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mAFEndLogTimes:I

    .line 18
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    if-eqz v0, :cond_9

    .line 19
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    .line 20
    :cond_9
    :goto_0
    sget-object v0, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 21
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v2, :cond_b

    goto :goto_1

    .line 24
    :cond_b
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 25
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 26
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setWithFlash(Z)V

    .line 29
    :cond_d
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 30
    :cond_e
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "FocusTime=%1$dms focused=%2$b"

    .line 32
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 34
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 35
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 36
    :cond_f
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_10

    .line 38
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 39
    :cond_10
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 42
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusStateChanged: isUltraFocusAreaSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 44
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera2/CameraConfigManager;->setFocusMode(I)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setFocusDistance(F)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setUWAELocked(Z)V

    .line 47
    :cond_11
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 48
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    goto :goto_2

    .line 49
    :cond_12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 50
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    :cond_13
    :goto_2
    return-void
.end method

.method public onFrameThumbnailFail()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "could not find anchor frame, use preview as thumbnail"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameThumbnailSuccess(J)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anchor frame as thumbnail success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHanGestureSwitched(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/zxing/PreviewDecodeManager;->load(II)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/zxing/PreviewDecodeManager;->unload(I)V

    :goto_0
    return-void
.end method

.method public onInterceptZoomingEvent(FFI)Z
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInterceptZoomingEvent: unlockAEAF by toggle or slider bar button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInterceptZoomingEvent: restore continuous center focus by toggle button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocusState(Z)V

    .line 9
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onInterceptZoomingEvent(FFI)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_5

    const/16 v4, 0x19

    if-eq p1, v4, :cond_5

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_3

    const/16 v4, 0x42

    if-eq p1, v4, :cond_3

    const/16 v4, 0x50

    if-eq p1, v4, :cond_1

    const/16 v4, 0x57

    if-eq p1, v4, :cond_5

    if-eq p1, v0, :cond_5

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/Camera2Module;->onShutterButtonFocus(ZI)V

    :cond_2
    return v3

    .line 4
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x28

    const v0, 0x7f1207f5

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Camera2Module;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_4
    return v3

    :cond_5
    if-eq p1, v2, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v3

    .line 8
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v3

    .line 10
    :cond_8
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 11
    :cond_9
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(FF)V
    .locals 1

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/Camera2Module;->onSingleTapUp(IIZ)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALockSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p1

    const-string p2, "manual"

    invoke-static {p2}, Lcom/android/camera/constant/AutoFocus;->convertToFocusMode(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->lockAEAF()V

    :cond_1
    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v5

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringOrFocusAreas(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigManager;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_3
    :goto_1
    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p2}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->setOrientation(II)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause dropBitmapTexture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/ImageSaver;->setDropBitmapTexture(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->unregisterSensor()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetScreenOn()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->closeCamera()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    .line 15
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "(onPause)mIsNeedNightHDR: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move-wide/from16 v8, p2

    .line 1
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPictureTakenFinished: succeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_5

    .line 3
    iget v0, v7, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    const v0, 0x7f120037

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/common/ModuleUtil;->announceForAccessibility(I)V

    .line 5
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "attr_3a_locked"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "attr_time_stamp"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v0, v7, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "attr_picture_number_of_face"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    move v5, v14

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 10
    new-instance v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;

    invoke-direct {v0}, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;-><init>()V

    .line 11
    iput-wide v8, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->captureStartTime:J

    .line 12
    iput v14, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->takenNum:I

    .line 13
    iput-boolean v13, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->burst:Z

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v14

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    iput-boolean v1, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->location:Z

    .line 15
    iget-object v1, v7, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v1

    iput v1, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    .line 16
    iget-object v1, v7, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    iput-boolean v1, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isSuperNightInCaptureMode:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 18
    iget-boolean v1, v7, Lcom/android/camera/module/Camera2Module;->mIsNearRangeMode:Z

    iput-boolean v1, v0, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isNearRangeMode:Z

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;)V

    .line 20
    iget-wide v0, v7, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    sub-long v0, v10, v0

    .line 21
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/performance/PerformanceManager;->stopEvent()J

    .line 22
    iget-object v2, v7, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    iget v3, v7, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureCost(JZI)V

    .line 23
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isQuickCapture()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iput-boolean v14, v7, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    .line 28
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPictureTakenFinished: showPostCaptureAlert"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->showPostCaptureAlert()V

    goto :goto_2

    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->doAttach()V

    goto :goto_2

    .line 31
    :cond_4
    iget-boolean v0, v7, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    if-eqz v0, :cond_6

    if-nez p4, :cond_6

    .line 32
    iput-boolean v13, v7, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    .line 33
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelLongPressedAutoFocus()V

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {p0, v8, v9}, Lcom/android/camera/module/Camera2Module;->consumeWatermarkCoordinate(J)V

    .line 35
    iput v12, v7, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    .line 36
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {v0, v8, v9}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShot(J)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v14

    goto :goto_3

    :cond_7
    move v1, v13

    :goto_3
    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {v0, v8, v9}, Lcom/android/camera2/Camera2Proxy;->isQuickShot(J)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v14

    goto :goto_4

    :cond_8
    move v0, v13

    .line 39
    :goto_4
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMultiSnapStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v4, v4, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBlockQuickShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isQuickShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isHighQualityQuickShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isParallel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v4, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v7, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v2, :cond_9

    iget-boolean v2, v7, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    if-eqz v2, :cond_9

    iget v2, v7, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-ne v2, v12, :cond_9

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    .line 41
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->cleanMessage()V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    .line 43
    :cond_9
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->handleSuperNightResultIfNeed()Z

    move-result v0

    .line 45
    iget-object v1, v7, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, v7, Lcom/android/camera/features/mode/night/photo/NightModule;

    if-eqz v1, :cond_a

    move v1, v14

    goto :goto_5

    :cond_a
    move v1, v13

    :goto_5
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 46
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 48
    iget-object v0, v7, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-virtual {v0, v14, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestReadPixels(I[Ljava/lang/Object;)V

    .line 49
    :cond_b
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->handleSuperNightResultInCaptureMode()V

    .line 50
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/NightManager;->handleLongExpCaptureIfNeeded()V

    .line 51
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getInstanceOpt()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    .line 53
    iget-wide v0, v7, Lcom/android/camera/module/Camera2Module;->mLastCaptureStartTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_c

    .line 54
    iput-wide v8, v7, Lcom/android/camera/module/Camera2Module;->mLastCaptureStartTime:J

    .line 55
    iget-object v0, v7, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0, v10, v11}, Lcom/android/camera/timerburst/TimerBurstManager;->dealTimerBurst(J)V

    :cond_c
    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isCaptureState()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->checkQuickshotISORight4HWMFNR(Landroid/hardware/camera2/CaptureResult;)V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0oO()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0Oo()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0oO()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    goto :goto_2

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    :goto_2
    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 8

    const/4 v0, 0x3

    if-eq p4, v0, :cond_c

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    sget-object p4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPreviewPixelsRead E"

    invoke-static {p4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p5, :cond_5

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p5

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p5, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p5

    if-nez p5, :cond_5

    .line 3
    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result p5

    if-eqz p5, :cond_1

    move p5, v0

    goto :goto_0

    :cond_1
    move p5, p4

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p4

    :goto_1
    if-nez p5, :cond_3

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p5

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p5, v2}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 7
    :cond_3
    instance-of p5, p0, Lcom/android/camera/features/mode/night/photo/NightModule;

    if-eqz p5, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSoundPlayed()Z

    move-result p5

    if-eqz p5, :cond_4

    move p5, v0

    goto :goto_2

    :cond_4
    move p5, p4

    :goto_2
    if-nez p5, :cond_5

    .line 8
    sget-object p5, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreviewPixelsRead playCameraSound"

    invoke-static {p5, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p4}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 10
    :cond_5
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result p1

    if-nez p1, :cond_6

    move p4, v0

    .line 13
    :cond_6
    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean p1, p1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 16
    :cond_9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDisplayRotation()I

    move-result p2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    .line 17
    invoke-static {p2, v2, p1, p4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 19
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 20
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V

    .line 21
    monitor-exit v7

    return-void

    :cond_a
    const/4 v5, 0x0

    .line 22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0()Z

    move-result v6

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/Camera2Module;->saveBitmapAsThumbnail(Landroid/graphics/Bitmap;IIZZ)V

    .line 23
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onPreviewPixelsRead X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_b
    :goto_3
    :try_start_1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onPreviewPixelsRead: module is dead"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 28
    :cond_c
    :goto_4
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->onPreviewPixelsRead([BIIIZ)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPreviewSessionClosed: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->retryOnceIfCameraError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewSessionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreviewSessionSuccess: null session."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreviewSessionSuccess: module is not alive."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->previewWhenSessionSuccess()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotIsoThresholds:[I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSelectingCapturedResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->hidePostCaptureAlert()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoO;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onShineChanged(I)V
    .locals 3

    const/16 v0, 0xc4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xef

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown configItem changed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0o()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    :cond_2
    new-array p1, v2, [I

    const/16 v0, 0xd

    aput v0, p1, v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [I

    const/4 v0, 0x2

    aput v0, p1, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xd
        0x22
        0x2a
    .end array-data
.end method

.method public onShutterButtonCancel(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonCancel: notify up"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonUp(J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonCancel: notify cancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonCancel: reset button status"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onShutterButtonCancel: button status focusing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick trigger mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8c

    if-eq p1, v2, :cond_1

    .line 2
    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonClick: notify up"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonUp(J)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 6
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick: reset button status"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onShutterButtonClick: button status focusing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    const/16 v2, 0x64

    if-eq p1, v2, :cond_3

    const/16 v2, 0x6e

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->onUserInteraction()V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "speech_shutter_desc"

    .line 14
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->onUserInteraction()V

    .line 16
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooO0O0;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/timerburst/TimerBurstManager;->onShutterButtonClick(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkShutterCondition()Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 20
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v2}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 21
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    :cond_9
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startNormalCapture : Capture in progress, block night shot"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 23
    :cond_a
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getMiCamera2ShotQueueSize()I

    move-result v2

    if-lez v2, :cond_b

    .line 24
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block flash shot MiCamera2ShotQueueSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getMiCamera2ShotQueueSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 25
    :cond_b
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CameraConfigs;->setShutterTimestamp(J)V

    .line 26
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    .line 27
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutterButtonClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 28
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    const-string v2, "algo_prepare_capture"

    const-string/jumbo v3, "shot_prepare_capture"

    const-string/jumbo v4, "shot_2_shot"

    const-string/jumbo v5, "shot_2_gallery"

    const-string/jumbo v6, "shot_create_thumbnail"

    const-string/jumbo v7, "shot_on_shutter"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction([Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->prepareCapture(ZI)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->doSnap(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 34
    :cond_c
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_capture_total_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shot_2_view_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction([Ljava/lang/String;)V

    return v0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkWhenLongClick()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonLongClick: sat fallback"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0OO;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->requestAutoFocus()V

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return v1
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkForDownCapture()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelLongPressedAutoFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mCamera2Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; isInCountDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; getCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMultiSnapStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; Camera2Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isPreviewReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 13
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string p1, "ignore onSingleTapUp isInTimerBurstShotting"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 20
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isMeteringAreaSupported()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 23
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOooO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 27
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 28
    invoke-virtual {p0, p3, v0}, Lcom/android/camera/module/BaseModule;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/module/image/NightManager;->handleSuperNightEvMapValue(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 31
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFocusAreaSupported()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isMeteringAreaSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onSurfaceTextureReleased: no further preview frame will be available"

    invoke-static {p0, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->onPreviewComing()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    if-eqz p1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThumbnailClicked: CannotGotoGallery...mWaitSaveFinish"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean p1, p1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThumbnailClicked: DoingAction.."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCannotGotoGallery()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onThumbnailClicked: CannotGotoGallery..."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->gotoGallery()V

    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportTrackFocusOrTrackEye()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput v2, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOoo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOoo;-><init>(Lcom/android/camera/module/Camera2Module;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTouchDownEvent()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "quickshot | snap click -> click at %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mLastShotClickTime:J

    const-wide/16 v7, -0x1

    cmp-long v2, v4, v7

    if-eqz v2, :cond_0

    sub-long v4, v0, v4

    .line 4
    iput-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mShotClickTimeInterval:J

    .line 5
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mLastShotClickTime:J

    .line 6
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mShotClickTimeInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v6

    const-string/jumbo p0, "quickshot | click event -> clickTimeInterval: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOoo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOOoo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 7
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "capture check: sat fallback"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 10
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startNormalCapture failed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v0

    .line 11
    :cond_5
    :goto_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onWaitingFocusFinished : Activity already paused, ignore!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onWaitingFocusFinishedFailed()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWaitingFocusFinishedFailed: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWaitingFocusFinishedFailed: reset"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v4, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonUp(J)V

    .line 5
    iput-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onWindowFocusChanged(Z)V

    .line 2
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public onZoomingActionEnd(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomingActionEnd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->updateZoomIndexsButton()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0O0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onZoomingActionEnd: restore continuous center focus by slider bar button."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v0, 0x19

    aput v0, p1, v1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_2
    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onZoomingActionStart(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    :cond_0
    return-void
.end method

.method public onZoomingActionUpdate(FI)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/image/hdr/HDRManager;->mIsNeedNightHDR:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->onZoomRatioUpdate(F)V

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomingActionUpdate(FI)Z

    move-result p0

    return p0
.end method

.method public openForShotWithWinFocus()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->openForShotWithWinFocus()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/hdr/ParallelManager;->isParallelSessionConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performKeyClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | pressed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | repeatCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl2()Lcom/android/camera/protocol/protocols/MoreModePopupController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->shrink(Z)Z

    :cond_1
    const/4 v0, 0x1

    if-eqz p4, :cond_2

    const/4 p1, 0x3

    if-le p3, p1, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isVolumeLongPress()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonLongClick()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setVolumeLongPress(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isVolumeLongPress()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setVolumeLongPress(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isVolumeLongPress()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/module/Camera2Module;->onShutterButtonFocus(ZI)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isVolumeLongPress()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setVolumeLongPress(Z)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->onShutterButtonLongClickCancel(Z)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonFocus(ZI)V

    const p3, 0x7f1207f6

    .line 16
    invoke-static {p3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public prepareAIWatermark(J)V
    .locals 0

    return-void
.end method

.method public prepareNormalCapture()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareNormalCapture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->initFlashAutoStateForTrack(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    .line 5
    iput v0, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/camera2/CameraConfigManager;->setCaptureTime(J)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    .line 10
    new-instance v3, Lcom/android/camera/performance/CaptureStatus$Builder;

    invoke-direct {v3}, Lcom/android/camera/performance/CaptureStatus$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 11
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->frontCamera(Z)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->modeIndex(I)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v4, v4, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    .line 13
    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->isMultiCapture(Z)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 14
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->isNeedFlash(Z)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 15
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->isHdrOn(Z)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/camera/performance/CaptureStatus$Builder;->isCaptureNightSE(Z)Lcom/android/camera/performance/CaptureStatus$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/android/camera/performance/CaptureStatus$Builder;->build()Lcom/android/camera/performance/CaptureStatus;

    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->getCaptureEvent(Lcom/android/camera/performance/CaptureStatus;)Lcom/android/camera/performance/Action$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/performance/PerformanceManager;->startEvent(Lcom/android/camera/performance/Action$Event;)V

    .line 19
    :cond_1
    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3, v4, v1, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureShotToViewStart(JZI)V

    .line 20
    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3, v4, v1, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureShotToGalleryStart(JZI)V

    .line 21
    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    iput-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mLastCaptureTime:J

    .line 22
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setInTimerBurstShotting(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->changeScreenOrientation()V

    .line 28
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->cancelHibernate()V

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getJpegRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera2/CameraConfigManager;->setJpegRotation(I)V

    .line 30
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareNormalCapture: mOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", jpegRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 31
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/module/Camera2Module;->prepareAIWatermark(J)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateLocation()Landroid/location/Location;

    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera2/CameraConfigManager;->setGpsLocation(Landroid/location/Location;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setLocation(Landroid/location/Location;)V

    .line 37
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setIsFaceExist(Z)V

    .line 39
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/android/camera/module/DebugInfoUtil;->getRetriveFaceInfo([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 41
    array-length v1, v1

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    goto :goto_1

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setIsFaceExist(Z)V

    .line 43
    invoke-static {v3}, Lcom/android/camera/module/DebugInfoUtil;->getRetriveFaceInfo([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    .line 45
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    .line 46
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v1, :cond_7

    .line 47
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/Camera2Module;->shouldDoQCFA(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    xor-int/2addr v1, v2

    .line 49
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithMFNR:Z

    .line 50
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareNormalCapture: mUpscaleImageWithSR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; mBinningPictureSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v4, v4, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; mPictureSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 51
    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithMFNR:Z

    if-eqz v1, :cond_5

    .line 54
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v3, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_2

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    goto :goto_2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/Camera2Module;->shouldDoQCFA(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    .line 57
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareNormalCapture: qcfa = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    .line 59
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    .line 60
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo000()I

    move-result v3

    .line 61
    sget-object v4, Lcom/android/camera/module/image/ModuleSizeFormatManager;->AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

    aget-object v3, v4, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v0

    .line 62
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera2/CameraConfigs;->setLockedAlgoSize(Lcom/android/camera/CameraSize;)V

    .line 63
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera2/CameraConfigs;->setDoRemosaic(Z)V

    .line 64
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v3}, Lcom/android/camera/module/image/NightManager;->updateSuperNight()V

    .line 65
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setFrontMirror(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateBeauty()V

    .line 67
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSRAndMFNR()V

    .line 68
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateShotDetermine()V

    .line 69
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateDoDepurple()V

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateRawCapture()V

    .line 71
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v3

    .line 72
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v3}, Lcom/android/camera/module/image/ImageModuleUtil;->isLiveShotAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    if-eqz v3, :cond_a

    const/16 v3, 0x100

    goto :goto_5

    .line 73
    :cond_a
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v3, v3, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    .line 74
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->generateFileTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 75
    sget-object v6, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareNormalCapture title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->generateDocumentBean()V

    .line 77
    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    iput-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    .line 78
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateAnchorFramePreview()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera2/CameraConfigManager;->setModuleAnchorFrame(Z)V

    .line 79
    invoke-static {v3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isParallel()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isRefuseOffer()Z

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/camera2/CameraConfigManager;->setShotSavePath(Ljava/lang/String;ZZ)V

    .line 81
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 82
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isNeedSequence()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setNeedSequence(Z)V

    .line 83
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    .line 84
    sget-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0oo:Z

    if-eqz v1, :cond_d

    .line 85
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    goto :goto_7

    .line 86
    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotAnimateEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    goto :goto_7

    .line 87
    :cond_e
    :goto_6
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    .line 88
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->setWaterMark()V

    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->setPictureOrientation()V

    .line 90
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateJpegQuality()V

    .line 91
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateAlgorithmName()V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needShowThumbProgressImmediately()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 93
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooO00;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 94
    :cond_f
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/NightManager;->prepareSuperNightModule()V

    .line 95
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/NightManager;->prepareSuperNightInCaptureMode()V

    .line 96
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/NightManager;->prepareLLSInCaptureMode()V

    .line 97
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/NightManager;->prepareLongExpCaptureIfNeeded()V

    .line 98
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateQuickShotStatus()V

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isNeedDelaySound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-eqz v1, :cond_10

    .line 100
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "need playCameraSound for capture audio"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 102
    :cond_10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0OO()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_11

    goto :goto_8

    .line 103
    :cond_11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setMFLockAfAe(Z)V

    goto :goto_9

    .line 104
    :cond_12
    :goto_8
    invoke-direct {p0, v2}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE(Z)V

    .line 105
    :goto_9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v2, v2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigs;->setOutputSize(Lcom/android/camera/CameraSize;)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v2, v2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 108
    :goto_a
    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigs;->setAlgorithmOutputSize(Lcom/android/camera/CameraSize;)V

    .line 109
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    return-void

    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public recheckAndKeepAutoHibernation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateAutoHibernation()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    return-void
.end method

.method public registerProtocol()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSpecialProtocol:Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->registerProtocol()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/camera/protocol/protocols/ConfigChanges;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/android/camera/protocol/protocols/RecordState;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V

    .line 7
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMacroModeEnable:Z

    return-void
.end method

.method public requireRaw(II)Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->SupportMTKMFNRAlgo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0o()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oooo()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportMTKHDRReprocess()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    invoke-static {p2}, Lcom/android/camera/module/common/ModuleUtil;->isMTKRawSuperNightCallback(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x10

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public resetScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public resetStatusToIdle()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "shot_2_shot"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShot2Shot:J

    .line 9
    :cond_0
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset Status to Idle, caller(time-consuming):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetToIdleNoKeep(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->previewWhenSessionSuccess()V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    return-void
.end method

.method public saveBitmapAsThumbnail(Landroid/graphics/Bitmap;IIZZ)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v3

    if-ne v10, v3, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move v14, v13

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v15

    .line 3
    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v3}, Lcom/android/camera/timerburst/TimerBurstManager;->getTimerBurstCtr()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result v4

    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/timerburst/TimerBurstController;->getOrientation(ZI)I

    move-result v9

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module;->getFilterId()I

    move-result v8

    .line 5
    sget v7, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    if-eqz v10, :cond_1

    .line 6
    iget v3, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v3, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v13

    :goto_1
    if-nez v6, :cond_2

    .line 7
    sget-object v3, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveBitmapAsThumbnail: crop bitmap now"

    invoke-static {v3, v4}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v4

    int-to-float v5, v9

    iget v3, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 9
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v16

    move-object/from16 v3, p1

    move/from16 v17, v5

    move v5, v14

    move v12, v6

    move/from16 v6, v17

    move/from16 v18, v7

    move v7, v15

    move/from16 v19, v8

    move/from16 v8, v16

    move/from16 v20, v9

    move/from16 v9, p4

    .line 10
    invoke-static/range {v3 .. v9}, Lcom/android/camera/Util;->cropBitmap(Landroid/graphics/Bitmap;FZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_2
    move v12, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v3, p1

    :goto_2
    if-nez v3, :cond_3

    .line 11
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveBitmapAsThumbnail: bitmap is null"

    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    sget-object v4, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v4, v13}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 13
    array-length v4, v3

    if-nez v4, :cond_4

    .line 14
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveBitmapAsThumbnail: jpeg data is null"

    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_4
    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    .line 16
    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/Camera2Module;->getPictureFormatSuitableForShot(II)I

    move-result v4

    .line 17
    sget-object v5, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveBitmapAsThumbnail: isParallel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v7, v7, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", shot2Gallery = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "HEIC"

    goto :goto_3

    :cond_5
    const-string v7, "JPEG"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", anchorFrame= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", noGaussian= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", filterId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v5, v6}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    move-result-object v26

    .line 21
    new-instance v5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v22

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/16 v25, -0x1

    iget-wide v8, v0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    move-object/from16 v21, v5

    move-wide/from16 v27, v8

    invoke-direct/range {v21 .. v28}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 23
    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v6, v6, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v6, :cond_7

    iget-boolean v6, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v6, :cond_7

    iget-boolean v6, v0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v6, v13

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 24
    invoke-virtual {v5, v3, v13}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 25
    invoke-virtual {v5, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNoGaussian(Z)V

    .line 26
    invoke-virtual {v5, v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSquare(Z)V

    .line 27
    invoke-virtual {v5, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedCropAfterFilter(Z)V

    .line 28
    new-instance v3, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v3, v6, v8, v9, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 29
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move/from16 v1, v20

    .line 30
    invoke-virtual {v3, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    if-eqz v14, :cond_8

    if-eqz v10, :cond_8

    .line 31
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v3

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    goto :goto_6

    :cond_8
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v3

    :goto_6
    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getShootOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    move/from16 v3, v18

    .line 35
    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAnchorPreview(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v3}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v14}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 41
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    .line 42
    invoke-virtual {v3}, Lcom/android/camera/module/image/hdr/ParallelManager;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasCvWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCvOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/camera/module/Camera2Module;->mCaptureStartTime:J

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setCaptureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 47
    invoke-virtual {v5, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 48
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v5, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 50
    :cond_9
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    .line 51
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string/jumbo v2, "shot_create_thumbnail"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/Camera2Module;->mShot2Gallery:J

    return-void
.end method

.method public saveJpegAsThumbnail([BIIZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "saveJpegAsThumbnail: jpeg data is null"

    invoke-static {p0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p6, :cond_1

    .line 2
    new-instance v7, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;-><init>(Lcom/android/camera/module/Camera2Module;[BIIZZ)V

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoo;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOoo;-><init>(Lcom/android/camera/module/Camera2Module;)V

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p0

    .line 4
    invoke-virtual {p6, v7, p1, p0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/Camera2Module;->doSaveJpegThumbnail([BIIZZ)V

    :goto_0
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendOpenFailMessage()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method public setAsdScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iput-object p1, p0, Lcom/android/camera/module/image/asd/FlashAsdManager;->mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-void
.end method

.method public setAutoFlashTargetState(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mAutoFlashTargetState:Z

    if-eq v1, p1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoFlashTargetState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mAutoFlashTargetState:Z

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v1, 0xc1

    aput v1, p0, p1

    .line 5
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/MiuiCameraSound;->asyncLoadImageModuleSound(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->releaseFakeSurfaceIfNeed()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, p1, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    iput-boolean v0, p1, Lcom/android/camera/module/image/hdr/ParallelManager;->mInitParallelSessionWhenPreviewOn:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/Camera2Module$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$1;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo00O;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo00O;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFrameAvailable: invalid"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHHTDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    return-void
.end method

.method public setNearRangeMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsNearRangeMode:Z

    return-void
.end method

.method public setNearRangeModeUIStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsNearRangeModeUITip:Z

    return-void
.end method

.method public setOrientation(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientation(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientationCompensation(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->changeZoom4Crop()V

    :cond_1
    return-void
.end method

.method public setOrientationParameter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput v2, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0o0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSpecShotMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    return-void
.end method

.method public setWaterMark()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00oo()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/AiSceneManager;->mHasAiSceneFilterEffect:Z

    if-nez v0, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00Oo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xab

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setTimeWaterMarkEnable(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/watermark/WaterMarkUtil;->getTimeWatermarkStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureWaterMarkStr:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureWaterMarkStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setTimeWatermarkValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureWaterMarkStr:Ljava/lang/String;

    .line 18
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setTimeWaterMarkEnable(Z)V

    :goto_1
    return-void

    .line 19
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    .line 20
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setTimeWaterMarkEnable(Z)V

    return-void
.end method

.method public shouldCaptureDirectly()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OOoo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldReleaseLater()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isRecording()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v3}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/16 v3, 0x32

    .line 6
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->shouldReleaseLater()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_5

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_4

    const p0, 0x7f1206ba

    .line 9
    invoke-static {p0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    .line 10
    invoke-static {v3, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v2
.end method

.method public startAiLens()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo00o;-><init>(Lcom/android/camera/module/Camera2Module;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startCount(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/timerburst/TimerBurstManager;->realStartCount(III)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getMaxFaceCount()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionStarted(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/Oooo0oo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->startFaceDetection()V

    .line 7
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/Camera2Module;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startNormalCapture(I)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNormalCapture mode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000oOoO;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000oOoO;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHintCached()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSuperNightExifTagDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/storage/ImageSaver;->setSuperNightExifSupport(Z)V

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v3, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v5, 0x6

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mFirstCreateCapture:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startNormalCapture: skip capture due to low memory"

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough space or storage not ready. remaining="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/ImageSaver;->setDropBitmapTexture(Z)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_4

    .line 16
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startNormalCapture exception: cameraDevice is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture()V

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0, v4}, Lcom/android/camera/module/Camera2Module;->calculateTimeout(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setQuickShotAnimation(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFlawDetect()V

    .line 21
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 23
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAIIEPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->resumePreviewInWorkThread()V

    .line 26
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    if-nez v0, :cond_6

    .line 27
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->sendDelayTimeMessage()V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateShotBoostParams()V

    .line 29
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNormalCapture ButtonStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    .line 31
    iget v2, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isZslPreferred()Z

    move-result v4

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/camera2/SnapParamCreater;->createSnapParam(Lcom/android/camera/module/BaseModule;ZILcom/android/camera/module/common/ModuleCameraManagerInterface;Z)Lcom/android/camera2/SnapParam;

    move-result-object v2

    .line 32
    sget-object v3, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create snapParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    .line 33
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getAlgoType()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    .line 34
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-virtual {v3, v4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSatRawSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v3

    .line 35
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    iget v6, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    const/16 v7, 0x20

    invoke-direct {v5, v6, v3, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    const/16 v3, 0x8

    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 36
    sget-object v3, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "reset snapParam algoType to default"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->resetToDefault()V

    .line 38
    :cond_7
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/Camera2Proxy;->setSnapParam(Lcom/android/camera2/SnapParam;)V

    if-eqz v2, :cond_9

    .line 39
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->isParamValid()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 40
    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-nez v2, :cond_9

    .line 41
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    if-eqz v2, :cond_8

    .line 42
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOoO;

    invoke-direct {v1, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOoO;-><init>(Lcom/android/camera/module/Camera2Module;Z)V

    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->checkStatus(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0

    .line 45
    :cond_8
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "takePicture play sound"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 47
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v1}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 48
    :cond_9
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 49
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    .line 50
    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    .line 51
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "isSuperNightOn, and block quick shot"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needQuickShot()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    iget p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-ne p1, v1, :cond_b

    .line 53
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startNormalCapture force set CameraStateConstant.IDLE"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_1

    .line 56
    :cond_b
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    .line 57
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParallelSessionEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", and block quick shot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/camera2/Camera2Proxy;->takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return v2

    .line 59
    :cond_c
    :goto_2
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startNormalCapture : Activity already paused, ignore!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startPreview()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusFrameAvailable(Lcom/android/camera2/Camera2Proxy$IFirstCaptureFocus;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mScreenLightCb:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setScreenLightCallback(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 7
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: set PictureSize with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvLensOn()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v1, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setBokehDepthSize(Lcom/android/camera/CameraSize;)V

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 12
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: set PictureFormat to YUV"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v1, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 14
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPreview: set PictureFormat to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v4, v4, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "HEIC"

    goto :goto_1

    :cond_2
    const-string v4, "JPEG"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 18
    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    if-nez v6, :cond_3

    .line 19
    sget-object v6, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    const-string/jumbo v0, "startPreview: force reset raw callback type from %d to %d"

    .line 21
    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput v5, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    goto :goto_3

    .line 23
    :cond_3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startPreview: set SensorRawImageSize with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v7, v7, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Lcom/android/camera2/CameraConfigManager;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)V

    .line 25
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startPreview: set SubPictureSize with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v7, v7, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Lcom/android/camera2/CameraConfigManager;->setSubPictureSize(Lcom/android/camera/CameraSize;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v0, v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v0, v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Lcom/android/camera2/CameraConfigManager;->setBokehMainRawSize(Lcom/android/camera/CameraSize;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Lcom/android/camera2/CameraConfigManager;->setBokehSubRawSize(Lcom/android/camera/CameraSize;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v6, 0xab

    if-ne v0, v6, :cond_6

    .line 34
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera2/CameraConfigManager;->setExtendSceneMode(I)V

    goto :goto_4

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera2/CameraConfigManager;->setExtendSceneMode(I)V

    .line 36
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v4, v4, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isInQCFAMode()Z

    move-result v6

    invoke-static {v0, v4, v6}, Lcom/android/camera/module/image/ImageModuleUtil;->isEnableQcfaForAlgoUp(Lcom/android/camera/module/common/ModuleCameraManagerInterface;ZZ)Z

    move-result v0

    .line 37
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[QCFA]startPreview: set qcfa enable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera2/CameraConfigManager;->setQcfaEnable(Z)V

    if-eqz v0, :cond_8

    .line 39
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPreview: set binning picture size with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v6, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget-object v4, v4, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v4}, Lcom/android/camera2/CameraConfigManager;->setBinningPictureSize(Lcom/android/camera/CameraSize;)V

    .line 41
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->initDecodePreviewType(Lcom/android/camera2/Camera2Proxy;)I

    move-result v8

    .line 42
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 44
    sget-object v4, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startPreview: surfaceTexture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    .line 45
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    goto :goto_5

    .line 46
    :cond_9
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startPreview: surfaceTexture unavailable!!!!"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_b

    .line 47
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v7, v2

    goto :goto_6

    :cond_b
    move-object v7, v3

    .line 48
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getOperatingMode()I

    move-result v11

    .line 49
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPreview: operatingMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_c

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapController;->createZoomMapSurfaceIfNeeded()Landroid/view/Surface;

    move-result-object v3

    :cond_c
    move-object v10, v3

    .line 52
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v6

    iget v9, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v12, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_d

    move v13, v1

    goto :goto_7

    :cond_d
    move v13, v5

    :goto_7
    move-object v14, p0

    invoke-virtual/range {v6 .. v14}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 53
    :cond_e
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/ParallelManager;->onStartPreview()V

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->stopFaceDetection()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionStarted(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/OooOo00;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/module/Camera2Module;->updateFaceView(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public supportAnchorFrameAsThumbnail()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkForAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAnchorFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getAnchorFrameMask(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    .line 7
    invoke-static {v0, v1, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    .line 8
    invoke-static {v0, v1, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public supportMTKHDRReprocess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public trackBeautyInfo(IZLcom/android/camera/fragment/beauty/BeautyValues;J)V
    .locals 6

    if-eqz p2, :cond_0

    const-string p2, "front"

    goto :goto_0

    :cond_0
    const-string p2, "back"

    :goto_0
    move-object v1, p2

    .line 1
    iget v5, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    move v0, p1

    move-object v2, p3

    move-wide v3, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyInfo(ILjava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;JI)V

    return-void
.end method

.method public trackCaptureModuleInfo(Ljava/util/Map;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    .line 5
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->triggerModeToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_trigger_mode"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v1

    const-string/jumbo v4, "on"

    const-string/jumbo v5, "off"

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    const-string v6, "attr_liveshot"

    .line 8
    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "attr_quality"

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_3

    if-nez p3, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    const-string v1, "attr_tiltshift"

    .line 12
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 15
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->getDocumentModeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_document_mode"

    .line 16
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "attr_ai_shutter"

    goto :goto_2

    :cond_4
    const-string v0, "attr_predictive_shutter"

    .line 18
    :goto_2
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAiShutterOn(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v4

    goto :goto_3

    :cond_5
    move-object v1, v5

    .line 19
    :goto_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isHeicPreferred()Z

    move-result v0

    const-string v1, "attr_heic"

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    iget v0, v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_4
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportNearRangeMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingNearRangeEnable()Z

    move-result p0

    if-eqz p0, :cond_7

    move-object p0, v4

    goto :goto_5

    :cond_7
    move-object p0, v5

    :goto_5
    const-string v0, "attr_near_range_mode"

    .line 25
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v5

    :goto_6
    const-string p0, "attr_near_range_status"

    .line 26
    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "M_capture_"

    .line 28
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->miStatEventNew(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->burstShotNumToName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_burst_count"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_burst_shot_times"

    .line 31
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return-void
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 0

    return-void
.end method

.method public trackMultiCapture()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "attr_3a_locked"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v7

    const/4 v4, 0x1

    move-object v1, p0

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 5
    new-instance v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;

    invoke-direct {v1}, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;-><init>()V

    .line 6
    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->takenNum:I

    .line 7
    iput-boolean v9, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->burst:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    move v8, v9

    :cond_1
    iput-boolean v8, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->location:Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/NightManager;->mShowSuperNightHint:Z

    iput-boolean v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isSuperNightInCaptureMode:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsNearRangeMode:Z

    iput-boolean v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isNearRangeMode:Z

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;)V

    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/TopConfigProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mModuleSpecialProtocol:Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->unRegisterProtocol()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateASD()V
    .locals 0

    return-void
.end method

.method public updateBeauty()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera2/CameraCapabilities;I)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/common/ModuleUtil;->isFaceBeautyOn(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    const-string v1, "i:1"

    iput-object v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    .line 13
    :goto_0
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "i:0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Human scene mode detected, auto set beauty level from %s to %s"

    .line 15
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_3
    sget-object v0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsBeautyBodySlimOn:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFaceAgeAnalyze()V

    return-void
.end method

.method public updateCinematicPhoto()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setCinematicPhotoEnabled(Z)V

    return-void
.end method

.method public updateContrast()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultContrast()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setContrast(I)V

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/Util;->isSaveToHidenFolder(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    if-nez p1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 12
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    return-void
.end method

.method public updateFace()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    move v3, v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string/jumbo v4, "pref_camera_facedetection_key"

    .line 5
    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOo0;

    invoke-direct {v5, v0, v3}, LOooO0O0/OooO0O0/OooO00o/OooooO0/OoooOo0;-><init>(ZZ)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startFaceDetection()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isFaceDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->stopFaceDetection(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setFaceDetectionEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateFaceAgeAnalyze()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/common/ModuleUtil;->isFaceBeautyOn(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFaceAgeAnalyze(Z)V

    return-void
.end method

.method public updateFaceView(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateFilter()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEffectFilter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setNormalFilterId(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setVideoStreamEffect(I)V

    :cond_0
    return-void
.end method

.method public updateFlashPreference()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v4}, Lcom/android/camera/module/image/AiSceneManager;->resetAiSceneInHdrOrFlashOn()V

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/Camera2Module;->handleHaloFlash(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    return-void

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-static {v0, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x67

    if-eq v3, v4, :cond_2

    .line 11
    invoke-static {v0, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/module/image/asd/FlashAsdManager;->resetAsdSceneInHdrOrFlashChange(ZLandroid/os/Handler;)V

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->resetFlashStateTimeLock()V

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "200"

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xc1

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    new-array v4, v6, [I

    aput v5, v4, v2

    .line 17
    invoke-interface {v3, v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    goto :goto_0

    :cond_5
    new-array v4, v6, [I

    aput v5, v4, v2

    .line 18
    invoke-interface {v3, v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    .line 19
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "3"

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "105"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget v2, v1, Lcom/android/camera/module/image/asd/FlashAsdManager;->mCurrentAsdScene:I

    iput v2, v1, Lcom/android/camera/module/image/asd/FlashAsdManager;->mPendingAsdScene:I

    .line 23
    :cond_8
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    return-void
.end method

.method public updateFlawDetect()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFlawDetectEnable(Z)V

    :cond_0
    return-void
.end method

.method public updateHighQualityPreferred()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    iget-boolean p0, p0, Lcom/android/camera/module/image/NightManager;->mMiviSuperNightCheckerCanceled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->applyHighQualityPreferred(Z)V

    return-void
.end method

.method public updateLocation()Landroid/location/Location;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isTestImageCaptureWithoutLocation()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public updateMfnr(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isUseSwMfnr()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v1, v2

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithMFNR:Z

    goto/16 :goto_1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    xor-int/2addr v1, p1

    goto/16 :goto_1

    .line 6
    :cond_3
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xaf

    if-ne p1, v0, :cond_4

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearSwitchOn()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->enableFrontMFNR()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMfnrMacroZoomSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 13
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO00()Z

    move-result p1

    if-nez p1, :cond_9

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 15
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 16
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 17
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 19
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isDisconnected()Z

    move-result p1

    if-nez p1, :cond_a

    .line 20
    sget-object p1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMfnr to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraConfigManager;->setMfnr(Z)V

    :cond_a
    return-void
.end method

.method public updateOnTripMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget-object v0, v0, Lcom/android/camera/module/image/asd/FlashAsdManager;->mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFlashAsdManager:Lcom/android/camera/module/image/asd/FlashAsdManager;

    iget-object p0, p0, Lcom/android/camera/module/image/asd/FlashAsdManager;->mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setOnTripodModeStatus([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    :cond_0
    return-void
.end method

.method public updatePortraitBokeh1x()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->isCVLensUWBokeh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isBokehFallBackEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasPortraitCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasUWPortraitCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 6
    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setBokeh1X(Z)V

    return-void
.end method

.method public updatePreviewSurface()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000OOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000OOO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkDisplayOrientation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePreviewSurface failed because activity is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePreviewSurface: surfaceTexture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->updateDeferPreviewSession(Landroid/view/Surface;)Z

    .line 13
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateRawCapture()V
    .locals 0

    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateSATZooming(Z)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x5d

    aput v1, p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public updateSaturation()V
    .locals 1

    const v0, 0x7f12079e

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSaturation(I)V

    return-void
.end method

.method public updateSharpness()V
    .locals 1

    const v0, 0x7f1207b1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setSharpness(I)V

    return-void
.end method

.method public updateShotBoostParams()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/image/ImageModuleCameraManager;->updateShotBoostParams()V

    return-void
.end method

.method public updateSuperResolution()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkSuperResolutionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "UltraPixel: digital zoom, disable SR"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    sget-object p0, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    const-string v0, "UltraPixel: optical zoom, disable SR"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setSuperResolution(Z)V

    return-void

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isMfnrNeeded()Z

    move-result v1

    const-string/jumbo v2, "pref_camera_super_resolution_key"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_3

    .line 15
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera2/CameraConfigManager;->setSuperResolution(Z)V

    goto/16 :goto_3

    .line 16
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 18
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result v1

    if-ne v1, v4, :cond_7

    goto :goto_1

    :cond_7
    move v4, v3

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFallbackToWide()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 21
    sget-object v1, Lcom/android/camera/module/Camera2Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentZoomRatio: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  isUW: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_2

    .line 24
    :cond_8
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera2/CameraConfigManager;->setSuperResolution(Z)V

    :goto_2
    return-void

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_3

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_b
    :goto_3
    return-void
.end method
