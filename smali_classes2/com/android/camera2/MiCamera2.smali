.class public Lcom/android/camera2/MiCamera2;
.super Lcom/android/camera2/Camera2Proxy;
.source "MiCamera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/MiCamera2$PictureCaptureCallback;,
        Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;,
        Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;
    }
.end annotation


# static fields
.field public static final AE_STATE_NULL:I = -0x1

.field public static final DEF_QUICK_SHOT_THRESHOLD_INTERVAL_TIME:I = 0x32

.field public static final DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_TIME_OUT:I = 0x2710

.field public static final MAX_PARALLEL_REQUEST_NUMBER:I = 0x5

.field public static final MSG_CHECK_CAMERA_ALIVE:I = 0x3

.field public static final MSG_WAITING_AF_LOCK_TIMEOUT:I = 0x1

.field public static final MSG_WAITING_LOCAL_PARALLEL_SERVICE_READY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MiCamera2"

.field public static final TIME_WAITING_LOCK_AF_FLASH:J = 0xfa0L

.field public static final TIME_WAITING_LOCK_AF_TORCH:J = 0xbb8L

.field public static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCameraHandler:Landroid/os/Handler;

.field public mCameraPreviewHandler:Landroid/os/Handler;

.field public final mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

.field public mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

.field public mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

.field public mCaptureTime:J

.field public mConfigManager:Lcom/android/camera2/CameraConfigManager;

.field public mCurrentFrameNum:J

.field public mDeferImageReaderList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera2/imagereaders/OutputConfigurationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mDepthImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mEnableParallelSession:Z

.field public mEnableParallelSnapshot:Z

.field public mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

.field public mFocusLockRequestHashCode:I

.field public mFrameCount:J

.field public mFrameCountingStart:J

.field public mHelperHandler:Landroid/os/Handler;

.field public final mHighQualityQuickShotThresholdCacheCount:I

.field public mHighSpeedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsCameraClosed:Z

.field public volatile mIsCaptureSessionClosed:Z

.field public mIsPreviewCallbackStarted:Z

.field public mLastFlashTimeMillis:J

.field public mLastFrameNum:J

.field public mLastSatCameraId:I

.field public mLightScreenStartTime:J

.field public mMaxImageBufferSize:I

.field public mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

.field public final mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/android/camera2/MiCamera2Shot;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedFlashForAuto:Z

.field public volatile mPendingNotifyVideoEnd:Z

.field public mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mPortraitRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mPreCaptureRequestHashCode:I

.field public mPreviewCallbackType:I

.field public mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

.field public final mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final mQuickShotThresholdCacheCount:I

.field public mRawCallbackType:I

.field public mRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mScreenLightColorTemperature:I

.field public mSessionId:I

.field public final mSessionLock:Ljava/lang/Object;

.field public mShotBoostParams:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mShotQueueLock:Ljava/lang/Object;

.field public mSnapParam:Lcom/android/camera2/SnapParam;

.field public mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

.field public final mSurfaceManager:Lcom/android/camera2/MiCameraSurfaceManager;

.field public mToTele:Z

.field public mVideoRecording:Z

.field public mVideoSessionId:I

.field public mVideoSnapImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public final mWaitingFirstFrameRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1
    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/camera2/MiCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/Camera2Proxy;-><init>(I)V

    const/16 v1, 0xa

    .line 2
    iput v1, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v1, Lcom/android/camera2/MiCameraSurfaceManager;

    invoke-direct {v1}, Lcom/android/camera2/MiCameraSurfaceManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSurfaceManager:Lcom/android/camera2/MiCameraSurfaceManager;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    .line 7
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 13
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    .line 14
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    .line 15
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    .line 16
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    .line 18
    new-instance v3, Lcom/android/camera2/MiCamera2$2;

    invoke-direct {v3, p0}, Lcom/android/camera2/MiCamera2$2;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 19
    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooO0oO;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0oO;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 20
    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooO0Oo;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 21
    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooO0o;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0o;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 22
    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooO0o0;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0o0;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mDepthImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 23
    new-instance v3, LOooO0O0/OooO0O0/OooO0O0/OooO;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 24
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 26
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "MiCamera2: preload"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    .line 28
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    .line 29
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera2/Camera2Proxy;-><init>(I)V

    const/16 p1, 0xa

    .line 31
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p1, Lcom/android/camera2/MiCameraSurfaceManager;

    invoke-direct {p1}, Lcom/android/camera2/MiCameraSurfaceManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSurfaceManager:Lcom/android/camera2/MiCameraSurfaceManager;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const-wide/16 v1, -0x1

    .line 35
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    .line 36
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    .line 38
    new-instance p1, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    .line 39
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    .line 43
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    .line 44
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    .line 45
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    .line 47
    new-instance p1, Lcom/android/camera2/MiCamera2$2;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$2;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 48
    new-instance p1, LOooO0O0/OooO0O0/OooO0O0/OooO0oO;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0oO;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 49
    new-instance p1, LOooO0O0/OooO0O0/OooO0O0/OooO0Oo;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 50
    new-instance p1, LOooO0O0/OooO0O0/OooO0O0/OooO0o;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0o;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 51
    new-instance p1, LOooO0O0/OooO0O0/OooO0O0/OooO0o0;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO0o0;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDepthImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 52
    new-instance p1, LOooO0O0/OooO0O0/OooO0O0/OooO;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO0O0/OooO;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 53
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 55
    iput-object p2, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 56
    iput-object p3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 57
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 58
    iput-object p4, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    .line 59
    iput-object p5, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 62
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000o0()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    .line 63
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportEnableHighQualityQuickShotByTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHighQualityQuickShotThresholdCount(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    goto :goto_0

    .line 65
    :cond_0
    iget p1, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private abortCaptures()V
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures E"

    invoke-static {v1, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 6
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "abortCaptures X"

    invoke-static {p0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortCaptures, IllegalState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortCaptures(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/android/camera2/MiCamera2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera2/MiCamera2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Preview;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/camera2/MiCamera2;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p0
.end method

.method public static synthetic access$2302(Lcom/android/camera2/MiCamera2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p1
.end method

.method public static synthetic access$2400(Lcom/android/camera2/MiCamera2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    return-void
.end method

.method public static synthetic access$2600(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    return p0
.end method

.method public static synthetic access$2800(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isDeviceAlive()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    return-void
.end method

.method public static synthetic access$3100(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    return-wide v0
.end method

.method public static synthetic access$3102(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    return-wide p1
.end method

.method public static synthetic access$3200(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    return-void
.end method

.method public static synthetic access$3300(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide v0
.end method

.method public static synthetic access$3302(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide p1
.end method

.method public static synthetic access$3400(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method public static synthetic access$3402(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide p1
.end method

.method public static synthetic access$3404(Lcom/android/camera2/MiCamera2;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2;Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-object p0
.end method

.method private adjustFlashCurrent(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isFaceExist()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p2, "flash_auto_face"

    .line 2
    invoke-static {p2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_0
    const-string p1, "flash_auto_no_face"

    .line 3
    invoke-static {p1, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    :goto_0
    move p2, p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerCapture: softLight-flashCurrentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v0, p2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAiPortraitDeblurSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FlatSelfieManager;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehFallBackEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMFNRBokehSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCvLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForNormalCapture()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 75
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 76
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 78
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyFlashMode: request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", applyType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v3

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-ne v3, v5, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq v2, v6, :cond_1

    .line 5
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "applyFlashMode, force disable flash for SuperNight"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 6
    :cond_1
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-static {v1, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v4, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x2

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_5

    if-eq v2, v8, :cond_3

    if-eq v2, v4, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-ne v3, v5, :cond_9

    .line 8
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v11, v7}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    .line 10
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 12
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_0
    move v11, v6

    goto :goto_1

    :cond_4
    move v11, v7

    :goto_1
    move v10, v9

    goto :goto_4

    .line 13
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v10

    sget-wide v12, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    :goto_2
    move v10, v7

    move v11, v10

    goto :goto_4

    .line 15
    :cond_6
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_7
    if-ne v3, v5, :cond_9

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_2

    .line 17
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo00()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v3

    move v11, v6

    goto :goto_4

    :cond_9
    :goto_3
    move v10, v3

    move v11, v7

    .line 18
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v12

    .line 19
    sget-object v13, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyFlashMode: flashMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mScreenLightCallback = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x65

    if-eq v10, v13, :cond_b

    const/16 v14, 0x68

    if-eq v10, v14, :cond_b

    const/16 v14, 0x6a

    if-ne v10, v14, :cond_a

    goto :goto_5

    :cond_a
    move v14, v7

    goto :goto_6

    :cond_b
    :goto_5
    move v14, v6

    .line 20
    :goto_6
    iget-object v15, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v15, v1, v14}, Lcom/android/camera2/CaptureRequestBuilder;->applyScreenLightHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/16 v14, 0xc8

    const/4 v15, 0x5

    if-eq v10, v14, :cond_10

    if-eqz v10, :cond_10

    .line 21
    sget-boolean v16, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v16, :cond_e

    if-ne v3, v15, :cond_c

    :goto_7
    move v3, v6

    goto :goto_8

    :cond_c
    if-ne v3, v5, :cond_d

    goto :goto_7

    :cond_d
    move v3, v7

    .line 22
    :goto_8
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_a

    .line 23
    :cond_e
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-ne v10, v15, :cond_f

    move v4, v6

    goto :goto_9

    :cond_f
    move v4, v7

    :goto_9
    invoke-static {v3, v1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 24
    :cond_10
    :goto_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v3

    if-gtz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_12

    :cond_11
    move v3, v6

    goto :goto_b

    :cond_12
    move v3, v7

    :goto_b
    if-eqz v10, :cond_24

    if-eq v10, v6, :cond_23

    if-eq v10, v9, :cond_20

    if-eq v10, v5, :cond_1e

    const/4 v3, 0x4

    if-eq v10, v3, :cond_1d

    if-eq v10, v15, :cond_1c

    if-eq v10, v13, :cond_17

    if-eq v10, v14, :cond_15

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_11

    .line 26
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_14

    if-ne v2, v6, :cond_13

    goto :goto_c

    .line 27
    :cond_13
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 28
    :cond_14
    :goto_c
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 29
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 30
    :pswitch_2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_AUTO applyType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_26

    .line 31
    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_11

    .line 32
    :cond_15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 33
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_d

    .line 34
    :cond_16
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 35
    :goto_d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_17
    if-eqz v12, :cond_26

    if-ne v2, v8, :cond_18

    .line 36
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentColorTemperature()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    .line 37
    :cond_18
    iget v3, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    const-string v4, "camera_screen_light_wb"

    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 38
    invoke-static {v3}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v3

    .line 39
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v4

    const-string v6, "camera_screen_light_delay"

    .line 40
    invoke-static {v6, v7}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 41
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_ON color = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", brightness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mCameraHandler = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v8, :cond_1b

    if-ne v2, v5, :cond_19

    goto :goto_e

    :cond_19
    const/4 v5, 0x7

    if-ne v2, v5, :cond_26

    if-nez v6, :cond_1a

    .line 42
    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_11

    .line 43
    :cond_1a
    iget-object v0, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LOooO0O0/OooO0O0/OooO0O0/OooOo00;

    invoke-direct {v1, v12}, LOooO0O0/OooO0O0/OooO0O0/OooOo00;-><init>(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_11

    .line 44
    :cond_1b
    :goto_e
    invoke-interface {v12, v3, v4}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->startScreenLight(II)V

    .line 45
    iget-object v0, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, v1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyScreenLightLevel(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_11

    .line 46
    :cond_1c
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 47
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 48
    :cond_1d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 49
    :cond_1e
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 50
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 51
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 52
    :cond_1f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 53
    :cond_20
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapShotTorch(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 54
    invoke-static {v1, v11}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_21
    if-eqz v3, :cond_22

    .line 55
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    .line 56
    :cond_22
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 57
    :goto_f
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_26

    if-ne v2, v6, :cond_26

    .line 59
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo00()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 60
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x1e

    .line 61
    invoke-direct {v0, v1, v1}, Lcom/android/camera2/MiCamera2;->adjustFlashCurrent(II)V

    goto :goto_11

    .line 62
    :cond_23
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 63
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_11

    :cond_24
    if-eqz v3, :cond_25

    .line 64
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_10

    .line 65
    :cond_25
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    :goto_10
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_26
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x6

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    return-void
.end method

.method private applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v1, 0x6

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    return-void
.end method

.method private applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySettingsForPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSatFallbackDisable()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v0, :cond_1

    move v1, v3

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 30
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    return-void
.end method

.method private applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method private applyVideoHdrModeIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "turns video.hdr.mode on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_KEY_DETECTION_MODE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_VIDEO_HDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoMfnrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->QCOM_VIDEO_MFHDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoMFHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "capture: null session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 6
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture, isHighSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture burst for camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 12
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture for camera "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private captureStillPicture()V
    .locals 3

    const-string v0, "capture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSnapParam()Lcom/android/camera2/SnapParam;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getShotInstanceVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->isParamValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoOo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->captureStillV2(Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillV1()V

    :goto_0
    return-void
.end method

.method private captureStillV1()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "captureStillV1"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected shot type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;->getCVLENSFetcher(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/PortraitCVLENSFetcher;

    move-result-object v2

    goto/16 :goto_1

    .line 5
    :pswitch_2
    new-instance v2, Lcom/android/camera2/QcomRawHdrFetcher;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera2/QcomRawHdrFetcher;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto/16 :goto_1

    .line 6
    :pswitch_3
    new-instance v2, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto/16 :goto_1

    .line 7
    :pswitch_4
    new-instance v2, Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v1

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    goto/16 :goto_1

    .line 8
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SNReprocessThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v1, Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000oO0()I

    move-result v2

    invoke-direct {v1, v0, p0, v2}, Lcom/android/camera2/SuperNightReprocessHandler;-><init>(Landroid/os/Looper;Lcom/android/camera2/MiCamera2;I)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuperNightReprocessHandler@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v2, Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/camera2/MiCamera2ShotRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera2/SuperNightReprocessHandler;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto/16 :goto_1

    .line 15
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;

    if-nez v0, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v9, v0

    .line 16
    :goto_0
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 17
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v5

    .line 19
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getRawCallbackType()I

    move-result v6

    .line 20
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v7

    .line 21
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera2/MiCamera2ShotParallelBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZILOooO0OO/OooO0OO;Lcom/android/camera/module/loader/camera2/ButtonStatus;Z)V

    goto/16 :goto_1

    .line 22
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isNotRequiredFlash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 26
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 27
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->shouldApply()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "[portrait] mfnr raw algo"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :cond_2
    if-nez v2, :cond_4

    .line 29
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->initParallelStillShot()Lcom/android/camera2/MiCamera2ShotParallelStill;

    move-result-object v2

    goto/16 :goto_1

    .line 30
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v0

    .line 31
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0o()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isNotRequiredFlash()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 34
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 35
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->shouldApply()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "mfnr raw algo"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :cond_3
    if-nez v2, :cond_4

    .line 38
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->initParallelStillShot()Lcom/android/camera2/MiCamera2ShotParallelStill;

    move-result-object v2

    goto :goto_1

    .line 39
    :pswitch_9
    new-instance v2, Lcom/android/camera2/MiCamera2ShotPreview;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/camera2/MiCamera2ShotPreview;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_1

    .line 40
    :pswitch_a
    new-instance v2, Lcom/android/camera2/MiCamera2ShotStill;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/camera2/MiCamera2ShotStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto :goto_1

    .line 42
    :pswitch_b
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->initParallelStillShot()Lcom/android/camera2/MiCamera2ShotParallelStill;

    move-result-object v2

    goto :goto_1

    .line 43
    :pswitch_c
    new-instance v2, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-direct {v2, p0}, Lcom/android/camera2/MiCamera2ShotSimplePreview;-><init>(Lcom/android/camera2/MiCamera2;)V

    goto :goto_1

    .line 44
    :pswitch_d
    new-instance v2, Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/camera2/MiCamera2MIVIStill;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto :goto_1

    .line 46
    :pswitch_e
    new-instance v2, Lcom/android/camera2/MiCamera2MIVIPortraitStill;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/camera2/MiCamera2MIVIPortraitStill;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    .line 48
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_5

    .line 49
    iput-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-void

    .line 50
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/camera2/MiCamera2;->startShot(Lcom/android/camera2/MiCamera2Shot;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_3
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_2
        :pswitch_d
        :pswitch_1
    .end packed-switch
.end method

.method private captureStillV2(Lcom/android/camera2/SnapParam;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/SnapParam;->getAlgoType()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureStillV2: algoType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/DefaultShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto/16 :goto_0

    .line 4
    :pswitch_0
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/DualRawBokehShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/PureViewShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/PureViewShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 6
    :pswitch_2
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/CUPShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/CUPShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/SuperNightShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/SuperNightShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 8
    :pswitch_4
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/LlbShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/LlbShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 9
    :pswitch_5
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/LlsShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/LlsShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 10
    :pswitch_6
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/HHTShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/HHTShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 11
    :pswitch_7
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/RemosaicShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/RemosaicShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/RawHdrShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/SRShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/ClearShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/ClearShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera2/AlgoTypeInstances/HDRShotInstance;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->startShot(Lcom/android/camera2/MiCamera2Shot;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkCameraDevice(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is closed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    sget-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-nez v1, :cond_3

    .line 7
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 8
    :cond_3
    throw p0
.end method

.method private checkCaptureSession(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session for camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is closed when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return v1

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz v2, :cond_2

    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    throw p0

    .line 10
    :cond_2
    :goto_0
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    monitor-exit v0

    return v1

    .line 12
    :cond_3
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private configMaxParallelRequestNumber()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O00()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "set prNum = 1 for <4G memory device"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v3, 0x6

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O()I

    move-result v0

    if-gez v0, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000O()I

    move-result v1

    if-lez v1, :cond_2

    if-ge v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000O()I

    move-result v0

    :cond_2
    :goto_0
    const/4 v1, 0x4

    .line 8
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configMaxParallelRequestNumber: prNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_3

    move v2, v0

    .line 9
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/LocalParallelService$LocalBinder;->configMaxParallelRequestNumber(I)V

    :cond_4
    return-void
.end method

.method private createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getTargets(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHighSpeedRequestList() fpsRange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x1e

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/16 v3, 0x78

    .line 6
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v3, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHighSpeedVideoConfigs(Lcom/android/camera2/CameraCapabilities;)[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    array-length v3, p0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v7, p0, v6

    .line 10
    invoke-virtual {v7}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    move-result v8

    if-ne v1, v8, :cond_0

    invoke-virtual {v7}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    move-result v8

    if-ne v1, v8, :cond_0

    invoke-virtual {v7}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getBatchSizeMax()I

    move-result v7

    if-ne v7, v5, :cond_0

    const/4 p0, 0x4

    .line 11
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Qualcomm platform enable super buffer mode for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getCaptureRequestNativeCopy(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 14
    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 15
    invoke-static {v1, v4, v6, v3, v7}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->getCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v5, :cond_2

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 19
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 21
    invoke-virtual {v1, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_2
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 23
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 24
    invoke-virtual {v1, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 25
    :goto_2
    invoke-static {v1, v5}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->setPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    .line 27
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getCaptureRequestNativeCopy(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 28
    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v0, v4, v6, p1, v7}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->getCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 30
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    invoke-virtual {v7, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 35
    invoke-virtual {v7, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 36
    invoke-static {v7, v5}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->setPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 37
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v8, p1

    .line 38
    :cond_3
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_3

    .line 39
    :cond_4
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_3
    if-ge v4, v2, :cond_6

    if-nez v4, :cond_5

    if-eqz v7, :cond_5

    .line 40
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 42
    :cond_6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 43
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input capture request must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private disableSat()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "disableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "disableSat: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private genSessionId()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSessionId: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return p0
.end method

.method private getCaptureInterval()J
    .locals 6

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000o0()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    const-wide/16 v3, 0x320

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDRCheckerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-long/2addr v0, v3

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    add-long/2addr v0, v3

    .line 5
    :cond_2
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureInterval: return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method private getMaxImageBufferSize()I
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0O()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooooO()I

    move-result p0

    return p0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO0()I

    move-result p0

    return p0

    .line 6
    :cond_1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    return p0
.end method

.method private getSessionConfig()Lcom/android/camera2/SessionConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    return-object p0
.end method

.method private initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFocusRequestBuilder: error caller for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isHighSpeedRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->containsTarget(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    return-object p1

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Module index is error!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/MiCamera2$1;-><init>(Lcom/android/camera2/MiCamera2;Landroid/os/Looper;)V

    return-object v0
.end method

.method private initParallelStillShot()Lcom/android/camera2/MiCamera2ShotParallelStill;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDoRemosaic()Z

    move-result v4

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()LOooO0OO/OooO0OO;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/MiCamera2ShotParallelStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZLOooO0OO/OooO0OO;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    return-object v7
.end method

.method private initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xac

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isAllCaptureShutterReturned()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/MiCamera2Shot;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "shot shutter is not return"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isDeviceAlive()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera device maybe dead, current frameNum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    const/4 p0, 0x1

    return p0
.end method

.method private isHighSpeedRecording()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p0

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera2/SessionConfig;->get(Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isLocalParallelServiceReady()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

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

.method private isNeedRetry(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "Request settings are empty"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Each request must have at least one Surface target"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method private isNotRequiredFlash()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private isQcfaMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const v0, 0x8007

    if-eq p0, v0, :cond_1

    const v0, 0x9001

    if-ne p0, v0, :cond_0

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

.method private lockFocus()V
    .locals 5

    const-string v0, "lockFocus"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getFocusTask()Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    .line 4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    .line 5
    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 8
    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAddScanIn3ALockStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    .line 13
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusStart()V

    .line 15
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    .line 21
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0xfa0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0xbb8

    .line 22
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x6

    .line 24
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private lockFocusInCAF(Z)Z
    .locals 5

    const-string v0, "lockFocusInCAF"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 7
    invoke-static {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->access$900(Lcom/android/camera2/MiCamera2$PictureCaptureCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAddScanIn3ALockStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSurfaceManager:Lcom/android/camera2/MiCameraSurfaceManager;

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF lock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF unlock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x6

    .line 18
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v1

    .line 19
    :cond_5
    :goto_1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "should call this in CAF!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is closed when lockFocusInCAF"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private needOptimizedFlash()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    .line 6
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needScreenLight()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needUnlockFocusAfterCapture()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyCaptureBusyCallback(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->enableSat()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private prepareRemoteImageReader()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSATSubCameraIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    if-eqz v3, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    .line 3
    :goto_1
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAT]prepareRemoteImageReader: isUseParallelVtCam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    invoke-static {v10, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0o()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oooo()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO0()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v11, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v2

    .line 6
    :goto_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getMaxImageBufferSize()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 7
    new-instance v12, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    iget v9, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    move-object v3, v12

    move v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/camera2/imagereaders/ImageReaderParam;-><init>(ILcom/android/camera2/CameraConfigs;ZZZI)V

    .line 8
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setHdrType(I)V

    .line 9
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setMiviNightModeSupported(Z)V

    if-nez v11, :cond_4

    .line 10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 11
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    if-ne v10, v3, :cond_6

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    .line 12
    :goto_4
    invoke-virtual {v12, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setNeedMultipleRaw(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isQcfaEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->alwaysUseRemosaicSize()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {v12, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setNeedQcfa(Z)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isQcfaMode()Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setQcfaMode(Z)V

    .line 15
    invoke-virtual {v12, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setSatCameraIds([I)V

    .line 16
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    invoke-virtual {v12, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setRawCallbackType(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setFacingFront(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFusionPhysicalIds(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setMTKFusionPhysicalId([I)V

    .line 19
    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;

    invoke-direct {v0, v12}, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->getChainHandler()Lcom/android/camera2/imagereaders/ImageReaderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ChainHandler;->handle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    if-nez v0, :cond_8

    .line 21
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "could not get surfaces"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 23
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getAllSpecs()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_9

    .line 24
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "could not get surface spec"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 26
    :cond_9
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    if-nez v2, :cond_c

    .line 27
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "prepareRemoteImageReader: ParallelService is not ready"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 29
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 30
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v3

    .line 32
    iget v4, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v5, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v6, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v3, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v4, v5, v6, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    .line 34
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 35
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 36
    invoke-virtual {v4, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    .line 37
    :cond_a
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 38
    :cond_b
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    return-object p0

    .line 39
    :cond_c
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureOutputBuffer(Landroid/util/SparseArray;II)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 40
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_d

    return-object p0

    .line 41
    :cond_d
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Config capture output buffer failed!"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x6

    .line 43
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 4
    instance-of v2, v1, Lcom/android/camera2/MiCamera2ShotStill;

    if-eqz v2, :cond_0

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/android/camera2/MiCamera2ShotStill;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2ShotStill;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/MiCamera2Shot;

    return-object p0
.end method

.method private reset()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: reset"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: hashcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 6
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/MiCameraSurfaceManager;->reset()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    const-string v0, "reset"

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/android/camera/MemoryHelper;->clear()V

    .line 13
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: reset"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private resetShotQueue(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShotQueue !!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private runCaptureSequence()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusFinish()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->waitFlashClosed()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_0
    return-void
.end method

.method private runPreCaptureSequence()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "runPreCaptureSequence"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAddScanIn3ALockStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method private setAFModeToPreview(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAFModeToPreview: focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method private setVideoRecordControl(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoRecordControl: Enter with -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "unknown control value for video control"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result p0

    .line 16
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoRecordControl: Exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reqId->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const-string v7, "startPreviewSession"

    .line 1
    invoke-direct {v1, v7}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v10, v14

    const-string v11, "startPreviewSession: operatingMode=0x%x previewCallback=%d rawCallbackType=%d"

    .line 4
    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10, v7, v8}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean v6, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    move/from16 v7, p7

    .line 6
    iput-boolean v7, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    move-object/from16 v8, p1

    iput-object v8, v7, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iput-object v4, v7, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    .line 9
    iput v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    .line 10
    iput v3, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v7

    iput v7, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 12
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 13
    :try_start_0
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_4

    .line 16
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v11

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11, v8, v15}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePhotoImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 18
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "startPreviewSession: add PhotoImageReader configuration: format=0x%x size=%dx%d"

    new-array v15, v9, [Ljava/lang/Object;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v13

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v14

    .line 22
    invoke-static {v8, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v6, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo00o()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/camera/Util;->sIsDepthImageWithoutAlgoEnable:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 25
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    if-eq v6, v14, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    const/4 v8, -0x3

    if-ne v6, v8, :cond_f

    .line 27
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mDepthImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v9, v11}, Lcom/android/camera2/MiCameraSurfaceManager;->prepareDepthImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 28
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "startPreviewSession: add DepthReader configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v13

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v14

    .line 32
    invoke-static {v8, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v6, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v9, v11}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePortraitRawImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 34
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "startPreviewSession: add PortraitRawImageReader configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v13

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v14

    .line 38
    invoke-static {v8, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v6, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 39
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader()Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result v6

    .line 42
    sget-object v8, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreviewSessionImpl: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v11}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v9, v12

    :goto_0
    if-ge v9, v8, :cond_f

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 45
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v15

    iget-boolean v15, v15, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-nez v15, :cond_e

    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_6

    .line 46
    :cond_5
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v15

    .line 47
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v10

    .line 48
    new-instance v12, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v12, v15}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 49
    iget-object v14, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v14}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x3

    goto :goto_1

    :cond_6
    const/4 v14, 0x2

    .line 50
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v16

    if-eqz v16, :cond_8

    iget-object v13, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 52
    invoke-static {v13}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v13

    move/from16 p6, v8

    const/4 v8, 0x1

    if-ne v13, v8, :cond_9

    if-ge v9, v14, :cond_9

    .line 53
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v10, v12, v8}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    .line 54
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, v10, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    const/4 v13, 0x2

    if-ne v8, v13, :cond_a

    .line 55
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId(Z)I

    move-result v8

    .line 56
    sget-object v13, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binds tuning output stream to camera "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move/from16 p6, v8

    .line 58
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 59
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 60
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v1, v10, v12, v4}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    .line 62
    :cond_a
    :goto_3
    invoke-virtual {v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_c

    .line 63
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 64
    invoke-virtual {v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    goto :goto_4

    .line 65
    :cond_b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x9002

    if-ne v5, v4, :cond_c

    .line 66
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 67
    invoke-virtual {v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    :cond_c
    :goto_4
    if-nez v6, :cond_d

    .line 68
    invoke-virtual {v12}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 69
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :try_start_2
    sget-object v8, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add surface to deferredOutputConfig: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    new-instance v11, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v13

    iget-object v13, v13, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-direct {v11, v13, v12}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;-><init>(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 73
    :cond_d
    :goto_5
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "startPreviewSession: add RemoteImageReader configuration: getPhysicCameraId=%d format=0x%x size=%s"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    .line 75
    invoke-virtual {v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v13, v12

    .line 76
    invoke-static {v15}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v13, v12

    .line 77
    invoke-static {v15}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v13, v12

    .line 78
    invoke-static {v8, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10, v4, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    :goto_6
    move/from16 p6, v8

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p4

    move/from16 v8, p6

    const/4 v10, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto/16 :goto_0

    .line 79
    :cond_f
    :goto_8
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move/from16 v6, p9

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 80
    invoke-direct {v1, v4}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 81
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x0

    .line 82
    :try_start_4
    iput-object v6, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v8, 0x1

    .line 83
    iput-boolean v8, v1, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 84
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-lez v2, :cond_10

    .line 85
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v8, v9}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePreviewImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 86
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "startPreviewSession: add PreviewImageReader configuration: format=0x%x size=%dx%d"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v10, v11

    .line 90
    invoke-static {v4, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    invoke-static {v8, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_10
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    const/16 v4, 0x20

    if-nez v2, :cond_11

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/4 v8, 0x2

    and-int/2addr v2, v8

    if-eqz v2, :cond_13

    :cond_11
    const/4 v2, 0x1

    if-ne v3, v2, :cond_12

    const/4 v2, 0x2

    goto :goto_9

    :cond_12
    const/16 v2, 0xa

    .line 92
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mRawImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v2, v9, v10}, Lcom/android/camera2/MiCameraSurfaceManager;->prepareRawImageReader(Lcom/android/camera/CameraSize;ILandroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 93
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "startPreviewSession: add RawImageReader configuration: format=0x%x size=%dx%d"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v10, v11

    .line 97
    invoke-static {v3, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v8, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_13

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    .line 101
    new-instance v6, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {v6, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 102
    sget-object v8, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "startPreviewSession: setup input configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v11, v3

    .line 104
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v8, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v2, p4

    if-eqz v2, :cond_14

    .line 105
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "startPreviewSession: add zoomMapSurface configuration: format=0x%x size=%s"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    .line 107
    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    .line 108
    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v11, v10

    .line 109
    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-static {v8, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_14
    new-instance v2, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v3, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    move-object/from16 v8, p8

    invoke-direct {v2, v1, v3, v8}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-nez v2, :cond_15

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    new-instance v8, Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v8, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    .line 114
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v8, Landroid/util/Size;

    iget v9, v2, Lcom/android/camera/CameraSize;->width:I

    iget v10, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    const-class v9, Landroid/view/SurfaceHolder;

    invoke-direct {v3, v8, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    .line 115
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 116
    :try_start_6
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    new-instance v10, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    const/16 v11, 0x64

    invoke-direct {v10, v11, v3}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;-><init>(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    :try_start_7
    invoke-interface {v7, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startPreviewSession: first add PreviewSurface configuration: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-static {v8, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 120
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 121
    :cond_15
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v3, 0x0

    invoke-interface {v7, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 123
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "startPreviewSession: add PreviewSurface configuration: format=0x%x size=%s"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v9}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v9}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    .line 126
    invoke-static {v3, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v8, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyAiShutterIfNeed()V

    .line 128
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getCaptureIntent()I

    move-result v3

    if-lez v3, :cond_16

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getCaptureIntent()I

    move-result v2

    .line 131
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v8, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 132
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v8, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/CameraConfigs;->isTrackFocusEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 134
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFeatureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 135
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 136
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    if-eqz v2, :cond_17

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_18

    .line 137
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_19

    .line 138
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns capture.zsl.mode on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ZSL_CAPTURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x1

    .line 140
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 141
    invoke-virtual {v2, v3, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 142
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsd(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 143
    :cond_19
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns PQ feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 145
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 147
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 148
    :cond_1a
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns SAT crop region feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    goto :goto_c

    :cond_1b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 150
    :goto_c
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v3

    .line 151
    invoke-static {v2, v3}, Lcom/android/camera/HybridZoomingSystem;->toMTKCropRegion(FLandroid/graphics/Rect;)[I

    move-result-object v2

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_CONFIG_SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 153
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCropFeature(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    .line 155
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO0()Z

    move-result v2

    if-eqz v2, :cond_1d

    const v2, 0x8002

    if-eq v5, v2, :cond_1c

    const v2, 0x9000

    if-ne v5, v2, :cond_1d

    :cond_1c
    const/4 v2, 0x1

    goto :goto_d

    .line 156
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_d

    :cond_1e
    const/4 v2, -0x1

    :goto_d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 157
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyFeatureMode: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_FEATURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 159
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyFeatureMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 160
    :cond_1f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v2

    if-eqz v2, :cond_20

    const v2, 0x8008

    if-eq v5, v2, :cond_20

    .line 161
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns tuning buffer on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_CAPTURE_ISP_META_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x2

    .line 163
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 164
    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 165
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 166
    :cond_20
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    .line 167
    invoke-virtual {v3}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSessionKeyDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v12, 0x1

    goto :goto_e

    :cond_21
    const/4 v12, 0x0

    :goto_e
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 169
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 170
    :cond_22
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreviewSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 172
    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraOpened2createCaptureSession@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 175
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCaptureSession@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 176
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 177
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    .line 178
    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_15

    .line 179
    :cond_23
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    const-string v4, "android.control.extendedSceneMode"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 182
    :cond_24
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v8

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    goto :goto_f

    :cond_25
    const/4 v8, 0x0

    :goto_f
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 184
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 185
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExtendedMaxZoomCaps(Lcom/android/camera2/CameraCapabilities;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_27

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->EXTENDED_MAX_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 187
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 188
    :cond_27
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BOKEH_ROLE:Lcom/android/camera2/vendortag/VendorTag;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result v8

    if-eqz v8, :cond_28

    const/16 v8, 0x3f

    goto :goto_10

    :cond_28
    const/16 v8, 0x3d

    :goto_10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 191
    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 192
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 193
    :cond_29
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportInsensorZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_2a

    const v3, 0x9002

    if-ne v5, v3, :cond_2a

    .line 194
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_12

    :cond_2b
    const/4 v2, 0x0

    .line 195
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->INSENSORZOOM_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 196
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v4, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyInsensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 197
    :cond_2c
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPreviewFullSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 198
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    const/4 v8, 0x1

    aput v3, v2, v8

    .line 199
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v8, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyPreviewFullSize(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;[I)V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v8, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_FULL_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3, v8, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_13

    :cond_2d
    const/4 v4, 0x0

    .line 201
    :goto_13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 202
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v12, 0x1

    goto :goto_14

    :cond_2e
    move v12, v4

    .line 203
    :goto_14
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyPreviewMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_MIRROR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 205
    :cond_2f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo00()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 206
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvType()I

    move-result v2

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CV_SESSIONKEY_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 208
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v4, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCvType(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;B)V

    .line 209
    :cond_30
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportCvLensDevice()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 210
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLens()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SESSIONKEY_BOKEH_CV_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 212
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v3, v4, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCvLensSessionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;B)V

    .line 213
    :cond_31
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 214
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreviewSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 216
    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraOpened2createCaptureSession@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 219
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCaptureSession@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 220
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 221
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    .line 222
    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 223
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 224
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: IAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    .line 225
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_15

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 226
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: ISE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    .line 227
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_15

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 228
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: CAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 230
    :goto_15
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 231
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelSessionConfig(Lcom/android/camera2/SessionConfig;)V

    :cond_32
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 232
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1
.end method

.method private triggerCapture()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedFlashOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v2, 0x0

    const/4 v4, -0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(JIJLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    .line 6
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "trigger capture need flash"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapShotTorch(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_5

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOoo()I

    move-result v0

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOo0O()I

    move-result v0

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOo00()I

    move-result v2

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOo0()I

    move-result v2

    .line 20
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/android/camera2/MiCamera2;->adjustFlashCurrent(II)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    move-result v0

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFlashFireRequestId(I)V

    .line 23
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto/16 :goto_3

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v0

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000Oo()I

    move-result v1

    if-lez v1, :cond_7

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentColorTemperature()I

    move-result v0

    const-string v1, "camera_screen_light_wb"

    .line 28
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    invoke-static {v0}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v0

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    .line 32
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 33
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 35
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->startScreenLight(II)V

    goto :goto_3

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 38
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_3

    .line 39
    :cond_8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_3

    .line 40
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 43
    invoke-virtual {p0, v3, v3}, Lcom/android/camera2/MiCamera2;->lockExposure(ZZ)V

    .line 44
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oooOO0()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 46
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOoO()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProAmbilightOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    :cond_b
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    .line 49
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 50
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_3
    return-void
.end method

.method private triggerFlashStateTimeLock()Z
    .locals 6

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0Oo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private triggerPrecapture()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAutoFocusSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0oO()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0oo()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 9
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    :goto_2
    return-void
.end method

.method private unlockAfAeForMultiFrame()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->unlockExposure()V

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    :cond_0
    return-void
.end method

.method private unlockFocusForCapture()V
    .locals 5

    const-string v0, "unlockFocusForCapture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 10
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlock focus, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    .line 25
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlockFocusForCapture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method private waitFlashClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 8
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/media/ImageReader;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v0

    invoke-interface {v1, p1, p0, v0}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getAnchorCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    .line 8
    invoke-interface {v0, p1, p0, v1}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 10
    :cond_3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "mPreviewListener: ohh, someone handles the image shutdown before anchor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Landroid/media/ImageReader;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "onImageAvailable: raw"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "onImageAvailable: NO raw image processor!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "onImageAvailable: NO video image processor!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "onImageAvailable: NO depth image processor!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method

.method public synthetic OooO0o0(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "onImageAvailable: NO portrait image processor!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method

.method public alwaysUseRemosaicSize()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p0

    return p0
.end method

.method public applyAiShutterIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMtkAiShutterVersionOneOrTwo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "applyAiShutterIfNeed return; run mtk aishutter 1.0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result v0

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turns ai shutter on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAISDefaultBehavior(Z)B

    move-result v1

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED_QCOM:Lcom/android/camera2/vendortag/VendorTag;

    .line 12
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v3, v1}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public applyMtkQuickPreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "turns quick preview on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public applyOfflineFlushEnable(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyOfflineFlushEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraAccessException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyShutterTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->needOptimizedFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackwardCaptureHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 15
    iget v5, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    if-eq v5, v4, :cond_4

    if-eq v5, v0, :cond_4

    .line 16
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/MemoryHelper;->shouldTrimMemory(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v5, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 22
    :goto_2
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isAlgoUpUltraPixelMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 25
    :cond_7
    :goto_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 30
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isParallelShotType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 32
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFrameRatio()I

    move-result v1

    if-ne p2, v0, :cond_a

    if-eq v1, v4, :cond_a

    .line 33
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 34
    :cond_a
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "quickshot | applySettingsForCapture -> applyMixQuickShot"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMixQuickShot(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getThumbnailSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/util/Size;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getJpegQuality()I

    move-result p0

    int-to-byte p0, p0

    .line 11
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public applySettingsForVideoShot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    .line 21
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 26
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 31
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public cancelFocus(I)V
    .locals 7

    const-string v0, "cancelFocus"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x6

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "cancelFocus afBuilder == null, return"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 12
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-static {v2, v4, v3, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-static {v2, v4, v3, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 21
    :cond_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v3, :cond_5

    move v4, v5

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_6
    const/16 v3, 0xa2

    if-ne p1, v3, :cond_7

    .line 30
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_1

    :cond_7
    const/16 v3, 0xab

    if-ne p1, v3, :cond_8

    .line 33
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 35
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 39
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 40
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 41
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    .line 44
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 45
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel focus, IllegalArgument"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 47
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel focus, IllegalState"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 50
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_2
    return-void
.end method

.method public cancelSession()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: cancelSession: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "cancelSession"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    .line 11
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->replaceSessionClose()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 13
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    .line 14
    :goto_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession: reset session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resetConfigs()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 17
    :try_start_1
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop repeating, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    .line 18
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop repeating session"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X: cancelSession: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public captureAbortBurst()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureAbortBurst: shot queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to abort burst, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 8
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "captureAbortBurst: session is null %s, cameraDevice is close %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    .line 12
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v5

    .line 13
    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o00()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    :cond_1
    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotParallelCShotBurst;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    :cond_3
    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 13
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/16 v3, 0x11

    if-ne v0, v3, :cond_6

    .line 15
    new-instance p1, Lcom/android/camera2/MiCamera2MIVIRepeating;

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    :cond_5
    invoke-direct {p1, p0, v1}, Lcom/android/camera2/MiCamera2MIVIRepeating;-><init>(Lcom/android/camera2/MiCamera2;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 21
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    goto :goto_1

    .line 22
    :cond_6
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 23
    invoke-virtual {v0, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    .line 26
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :goto_1
    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotVideo;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotVideo;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    return-void
.end method

.method public close(I)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "E: close: cameraId = %d, reason = %d"

    .line 3
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/SuperNightReprocessHandler;->cancel()V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 7
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    .line 8
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0O()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oO()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    .line 16
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    move v4, v5

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCameraSurfaceManager;->close()V

    .line 19
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    .line 21
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->reset()V

    .line 23
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: close: cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public disableAnchorWhenFlash()Z
    .locals 6

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "disableAnchorWhenFlash isNeedFlashOn"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOO()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "disableAnchorWhenFlash currentAEState is NULL!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_1
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableAnchorWhenFlash useLegacyAnchorWhenAutoFlash aeState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v2
.end method

.method public enableSat()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "enableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "enableSat: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceTurnFlashOffAndPausePreview()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method

.method public getBokehAuxCameraId()I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object p0, v0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCacheImageDecoder()Lcom/android/zxing/decoders/CacheImageDecoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    return-object p0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfigManager()Lcom/android/camera2/CameraConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    return-object p0
.end method

.method public getConfigs()Lcom/android/camera2/CameraConfigs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAEState()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSatOutputSize()Landroid/util/Size;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFakeSatOutputSize: satMasterCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatOutputSize: invalid satMasterCameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getHighQualityQuickShotThresholdCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    return p0
.end method

.method public getMiCamera2ShotQueueSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    return p0
.end method

.method public getNumOfHighQualityQuickShots()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPhysicalBokehMainId(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    .line 7
    :goto_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhysicalBokehMainId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bokeh1x is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getPhysicalBokehSubId(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOoo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getBokehAuxCameraId()I

    move-result p0

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    .line 9
    :goto_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhysicalBokehSubId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bokeh1x is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getPreviewCallbackType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    return p0
.end method

.method public getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public getRawCallbackType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    return p0
.end method

.method public getSATSubCameraIds()[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getViewAngle(Lcom/android/camera2/CameraCapabilities;Z)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v2, LOooO0O0/OooO0O0/OooO0O0/OooO0oo;

    invoke-direct {v2, v0}, LOooO0O0/OooO0O0/OooO0O0/OooO0oo;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 10
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o()Z

    move-result p0

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    aput v4, p0, v1

    .line 15
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    aput v1, p0, v3

    .line 16
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    aput v1, p0, v2

    .line 17
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    aput v1, p0, v0

    move-object v0, p0

    goto :goto_2

    .line 18
    :cond_2
    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo:Z

    if-nez p0, :cond_3

    new-array v0, v0, [I

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    aput p0, v0, v1

    .line 20
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    aput p0, v0, v3

    .line 21
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    aput p0, v0, v2

    goto :goto_2

    :cond_3
    new-array v0, v2, [I

    .line 22
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    aput p0, v0, v1

    .line 23
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    aput p0, v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getSatFusionType()LOooO0OO/OooO0OO;
    .locals 9

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000OOO()LOooO0OO/OooO0OO;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAT_FUSION_SHOT_USER_CONFIG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAT_FUSION_SHOT_SUPPORTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    .line 5
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FUSION_SHOT_PIPELINE_READY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 8
    :goto_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAT_FUSION_PIPELINE_READY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1a

    .line 9
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v1

    .line 11
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAT_FUSION_SUPER_NIGHT_SE_ENABLED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 12
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestIsHWMFNRProcessing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isAiShutterExistMotion()Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityQuickShotAndQuickShotMixedUse(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getNumOfHighQualityQuickShots()I

    move-result v1

    iget v5, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    if-le v1, v5, :cond_5

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoo()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    .line 21
    :goto_1
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_QUICKSHOT_NEEDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    .line 22
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v1

    const/4 v5, 0x2

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-ne v5, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v3

    .line 24
    :goto_3
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAT_FUSION_FLASH_NEEDED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_9

    .line 25
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 26
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v1

    .line 27
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAT_FUSION_HDR_NEEDED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    .line 28
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 29
    :cond_a
    iget v1, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    .line 30
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAT_FUSION_ACTUAL_CAMERA_ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v6

    if-eq v1, v6, :cond_b

    .line 32
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 34
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v1

    .line 35
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v6

    invoke-virtual {v2, v1, v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v2

    .line 36
    :cond_c
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_MAIN_CAPTURE_SURFACE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_d

    .line 37
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 38
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v1

    .line 39
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAT_FUSION_ZOOM_RATIO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 41
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v2, v6, :cond_e

    .line 43
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_4

    :cond_e
    move v6, v4

    :goto_4
    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x40400000    # 3.0f

    if-eqz v6, :cond_11

    cmpl-float v6, v1, v8

    if-ltz v6, :cond_11

    cmpg-float v6, v1, v7

    if-gez v6, :cond_11

    .line 44
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "SAT_FUSION_T_UT_COMBINATION: true"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    const/4 v1, 0x3

    if-nez p0, :cond_f

    .line 46
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result p0

    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result v0

    .line 47
    invoke-static {v1, v3, p0, v0}, LOooO0OO/OooO0OO;->OooO0O0(IIII)LOooO0OO/OooO0OO;

    move-result-object p0

    return-object p0

    .line 48
    :cond_f
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-ne p0, v1, :cond_10

    return-object v0

    .line 49
    :cond_10
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 50
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 51
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 52
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v2, v6, :cond_12

    .line 53
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_12

    move v6, v3

    goto :goto_5

    :cond_12
    move v6, v4

    :goto_5
    if-eqz v6, :cond_15

    cmpl-float v6, v1, v8

    if-ltz v6, :cond_15

    cmpg-float v6, v1, v7

    if-gez v6, :cond_15

    .line 54
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "SAT_FUSION_W_UT_COMBINATION: true"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-nez p0, :cond_13

    .line 56
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result p0

    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result v0

    .line 57
    invoke-static {v5, v3, p0, v0}, LOooO0OO/OooO0OO;->OooO0O0(IIII)LOooO0OO/OooO0OO;

    move-result-object p0

    return-object p0

    .line 58
    :cond_13
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-ne p0, v5, :cond_14

    return-object v0

    .line 59
    :cond_14
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 60
    :cond_15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 61
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 62
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v2, v6, :cond_16

    .line 63
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_16

    move v4, v3

    :cond_16
    if-eqz v4, :cond_19

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_19

    .line 64
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "SAT_FUSION_UW_W_COMBINATION: true"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-nez p0, :cond_17

    .line 66
    invoke-static {v3, v5, v3, v3}, LOooO0OO/OooO0OO;->OooO0O0(IIII)LOooO0OO/OooO0OO;

    move-result-object p0

    return-object p0

    .line 67
    :cond_17
    invoke-virtual {v0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result p0

    if-ne p0, v3, :cond_18

    return-object v0

    .line 68
    :cond_18
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 69
    :cond_19
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0

    .line 70
    :cond_1a
    :goto_6
    sget-object p0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-object p0
.end method

.method public getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraIdUtil;->mapSatMasterIdToCameraId(I)I

    move-result p0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getSatMasterCameraId()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    .line 2
    sget-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatMasterCameraId: error satCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " zoomRatio = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public getSatPhysicalCameraId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraIdUtil;->mapSatMasterIdToCameraId(I)I

    move-result p0

    return p0
.end method

.method public getShotBoostParams()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getSnapParam()Lcom/android/camera2/SnapParam;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSnapParam:Lcom/android/camera2/SnapParam;

    return-object p0
.end method

.method public getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSurfaceManager:Lcom/android/camera2/MiCameraSurfaceManager;

    return-object p0
.end method

.method public getTargetZoom()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getTargetZoom()F

    move-result p0

    return p0
.end method

.method public isAlgoUpUltraPixelMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const v0, 0x9004

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Assume front beauty is off in case beautyValues is unavailable."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p0

    return p0
.end method

.method public isCaptureBusy(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x65

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->hasPendingCallable(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isCaptureBusy: shotBoost going on"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptureBusy: timeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isCaptureBusy: simple return true"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0x320

    if-lt v0, v5, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSensorHdrSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SENSOR_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-lez v0, :cond_6

    .line 15
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: sensorHdr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_5
    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    const-wide/16 v5, 0x32

    cmp-long p1, v3, v5

    if-gez p1, :cond_7

    .line 17
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptureBusy: time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    .line 19
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    if-le p1, v0, :cond_8

    .line 20
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: MiCamera2ShotQueue size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getNumOfHighQualityQuickShots()I

    move-result p1

    .line 22
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    if-le p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMixQuickShotEnabled()Z

    move-result p0

    if-nez p0, :cond_9

    .line 23
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: number of HighQualityQuickShot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    return v1
.end method

.method public isCaptureState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDepthFocus()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureResultParser;->isDepthFocusForMTK(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureResultParser;->isDepthFocus(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public isDisconnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    return p0
.end method

.method public isFacingFront()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

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

.method public isFakeSatEnabled(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isFakeSatEnable(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAKE_SAT_ENABLED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result p1

    .line 4
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAKE_SAT_FLASH_NEEDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    .line 6
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAKE_SAT_HDR_NEEDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result p1

    .line 8
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAKE_SAT_LLS_NEEDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    move v1, p1

    goto :goto_0

    :catch_0
    :cond_5
    move v1, v0

    .line 13
    :goto_0
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAKE_SAT_HAS_VALID_SURFACE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    return v0

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result p0

    .line 16
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAKE_SAT_ZOOM_RATIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return p1
.end method

.method public isHighQualityQuickShot(J)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getShutterTimestamp()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HQQuickShot timestamp match,ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isHQQuickShot:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isHighQualityQuickShotBusy()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHighQualityQuickShotBusy: shutter is not return shot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    instance-of v0, v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "HighQualityQuickShotBusy: repeating shot exists"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_2
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "HighQualityQuickShot shutter return"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const v0, 0x9002

    if-ne v0, p0, :cond_0

    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const v1, 0x9002

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOoo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedFlashForAuto(Ljava/lang/Integer;I)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-gez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    :cond_2
    move v0, v1

    .line 5
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooo0()Z

    move-result p1

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    const/4 p1, 0x3

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerFlashStateTimeLock()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    .line 8
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return v1
.end method

.method public isNeedFlashOn()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x65

    if-eq v0, v2, :cond_7

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 3
    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedFlashOn: auto mode state:  ae:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 4
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", flash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 5
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0Oo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return p0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object p0

    if-eqz v0, :cond_6

    if-nez p0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 p0, 0x4

    if-eq v0, p0, :cond_4

    return v3

    :cond_4
    return v1

    .line 12
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    :goto_0
    return v3

    :cond_7
    return v1
.end method

.method public isParallelBusy(Z)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: Session is null or pending surface list is not null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMultiCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelMasterCameraId(Ljava/lang/Integer;)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParallelBusy: timeout:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->resetParallelTaskQueue()V

    :cond_4
    return v2

    .line 12
    :cond_5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 13
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v3

    if-nez v3, :cond_7

    .line 14
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: shutter is not return"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 15
    :cond_7
    instance-of v1, v1, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    if-eqz v1, :cond_6

    .line 16
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: repeating shot does exist"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    if-eqz p1, :cond_9

    return v2

    .line 17
    :cond_9
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getFrontProcessingCount()I

    move-result p0

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getMaxQueueSize()I

    move-result p1

    if-lt p0, p1, :cond_a

    .line 20
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: FrontProcessingCount is full"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    return v2

    :cond_b
    return v0
.end method

.method public isPreviewReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickShot(J)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getShutterTimestamp()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickShot timestamp match,ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isQuickShot:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShot()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShot()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSAT()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result p0

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

.method public isSessionReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isShotQueueMultitasking()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockExposure(Z)V
    .locals 2

    const-string v0, "lockExposure"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public lockExposure(ZZ)V
    .locals 1

    const-string v0, "lockExposure"

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public notifyVideoStreamEnd()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getEndOfStreamType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoStreamState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVideoStreamEnd: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    monitor-exit v0

    goto :goto_3

    .line 14
    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "notifyVideoStreamEnd: nullSession = %b, nullDevice = %b, nullSurface = %b"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v3

    .line 15
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-nez v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    .line 16
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 20
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "notifyVideoStreamEnd: "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    .line 21
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method

.method public onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    :cond_0
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewRelease(II)V

    .line 8
    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: onCameraDisconnected"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCameraError()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewRelease(II)V

    .line 8
    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: onCameraError"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method public onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "onCapturePictureFinished: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isSessionReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "onCapturePictureFinished: It\'s worth noting that session has been closed!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needUnlockFocusAfterCapture()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockFocusForCapture()V

    .line 8
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isAllCaptureShutterReturned()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockAfAeForMultiFrame()V

    .line 10
    :cond_5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 11
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 12
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 14
    :cond_6
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 15
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureCompleted(Z)V

    if-nez p1, :cond_7

    const-wide/16 v3, 0x0

    .line 16
    invoke-interface {v0, v2, v3, v4, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJI)V

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getShotBoostParams()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 18
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "do shotBoost later"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->removeShotBoostCallable()V

    .line 20
    new-instance v3, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;

    iget v4, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000OoO()I

    move-result v6

    if-ge v5, v6, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    invoke-direct {v3, v4, v1, v0}, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;)V

    .line 21
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getCaptureInterval()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/xiaomi/camera/device/CameraService;->addShotBoostCallableDelayed(Lcom/xiaomi/camera/device/callable/CameraCallable;J)V

    :cond_9
    :goto_3
    if-nez p1, :cond_b

    .line 22
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 25
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapturePictureFinished failure: mMiCamera2ShotQueue.poll, size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removeResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 29
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_b
    :goto_4
    return-void
.end method

.method public onMultiSnapEnd(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSnapEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    :cond_0
    return-void
.end method

.method public onParallelImagePostProcStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParallelImagePostProcStart: mMiCamera2ShotQueue.poll, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewComing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->onPreviewComing()Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2Shot;->onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 6

    const-string v0, "pausePreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePreview: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview: null session"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to pause preview, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 10
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 11
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pause preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 13
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->setClientCb(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_0
    return-void
.end method

.method public releaseFakeSurfaceIfNeed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method public releasePreview(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: releasePreview: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_1

    .line 7
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: releasePreview: null session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to release preview, IllegalState"

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 16
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to release preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 18
    :goto_1
    :try_start_4
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 19
    throw p1

    .line 20
    :cond_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 21
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: releasePreview"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 23
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public resetConfigs()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: resetConfigs"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera2/CameraConfigs;

    invoke-direct {v1}, Lcom/android/camera2/CameraConfigs;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setConfig(Lcom/android/camera2/CameraConfigs;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/SessionConfig;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 8
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: resetConfigs"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetFlashStateTimeLock()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public resumePreview()I
    .locals 11

    const-string v0, "resumePreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "resumePreview"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v2, v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 5
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumePreview: cameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " highSpeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " | caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    move v3, v1

    move v4, v3

    :cond_2
    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 7
    :try_start_1
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 8
    invoke-direct {p0, v6}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v6

    .line 9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest;

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "high speed repeating for camera "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v7, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v8, v9}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v3

    .line 12
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumePreview: high speed repeating sequenceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v6

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 15
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v7, "resumePreview: addTarget mZoomMapSurface"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 18
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v7, "resumePreview: removeTarget mZoomMapSurface"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 20
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normal repeating for camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 22
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v3

    .line 23
    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumePreview: repeating sequenceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 25
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-direct {p0, v7}, Lcom/android/camera2/MiCamera2;->isNeedRetry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x5

    if-ge v4, v8, :cond_7

    .line 27
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resumePreview: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "! Rebuild and submit again! count = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 28
    :cond_7
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v7, "Failed to resume preview, IllegalState"

    invoke-static {v5, v7, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v5, 0x100

    .line 29
    invoke-virtual {p0, v5}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_1
    move-exception v5

    .line 30
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v7, "Failed to resume preview"

    invoke-static {v6, v7, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move v5, v1

    :goto_3
    if-nez v5, :cond_2

    move v1, v3

    .line 31
    :cond_8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendSatFallbackDisableRequest(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSatFallbackDisableRequest: E. disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRepeatingRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x6

    .line 9
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigs;->setSatFallbackDisable(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 12
    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "sendSatFallbackDisableRequest: X."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSatFallbackRequest(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "sendSatFallbackRequest: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v2, 0xa2

    if-ne p1, v2, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 8
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x6

    .line 11
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSatFallbackRequest: X. requestId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setAlgorithmPreviewFormat(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewFormat(I)Z

    .line 3
    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePreviewImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)Z

    .line 4
    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePreviewImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    return-void
.end method

.method public setAutoZoomStartCapture([FZ)V
    .locals 2

    const-string v0, "setAutoZoomStartCapture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_START:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAutoZoomStopCapture(IZ)V
    .locals 2

    const-string v0, "setAutoZoomStopCapture "

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_STOP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCacheImageDecoder(Lcom/android/zxing/decoders/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/decoders/CacheImageDecoder;

    return-void
.end method

.method public setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureBusyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureBusyCallback: shot queue empty"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 6
    invoke-interface {p1, p0}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setConfig(Lcom/android/camera2/CameraConfigManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    return-void
.end method

.method public setCvLens(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCvLens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCvLens(I)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCvLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getCvLens()I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCvLensSessionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;B)V

    return-void
.end method

.method public setExposureTime(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setExposureTime(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public setISO(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setISO(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMFLockAfAe(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    return-void
.end method

.method public setModuleParameter(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModuleParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2PreviewNormal;

    invoke-direct {v0, p1, p2}, Lcom/android/camera2/MiCamera2PreviewNormal;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-void
.end method

.method public setOpticalZoomToTele(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFastZoomIn(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOpticalZoomToTele: toTele = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyStFastZoomIn(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigManager:Lcom/android/camera2/CameraConfigManager;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId(Z)I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binds main output stream to camera "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isBokeh1X()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId(Z)I

    move-result p0

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binds sub output stream to camera "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoFormat(I)Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePhotoImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setPictureMaxImages(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoMaxImages(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePhotoImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoSize(Lcom/android/camera/CameraSize;)Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera2/MiCameraSurfaceManager;->preparePhotoImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setShotBoostParams(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-void
.end method

.method public setSnapParam(Lcom/android/camera2/SnapParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSnapParam:Lcom/android/camera2/SnapParam;

    return-void
.end method

.method public startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "startFocus"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFocusTask(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "startFocus afBuilder == null, return"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    const/16 v1, 0xa2

    if-ne p2, v1, :cond_3

    .line 12
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xab

    if-ne p2, v1, :cond_4

    .line 15
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    invoke-static {v0, v2}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 19
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    .line 23
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 30
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "Failed to start focus: "

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p2, 0x6

    .line 32
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_2
    return-void
.end method

.method public startHighSpeedRecordPreview()V
    .locals 2

    const-string v0, "startHighSpeedRecordPreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;IILandroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "startHighSpeedRecordSession"

    .line 1
    invoke-direct {v1, v5}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v11, 0x2

    aput-object v2, v8, v11

    const/4 v12, 0x3

    aput-object v3, v8, v12

    const-string v13, "startHighSpeedRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s fpsRange=%s"

    .line 4
    invoke-static {v6, v13, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v5

    iput-object v0, v5, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iput-object v2, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    .line 7
    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-array v0, v9, [Landroid/view/Surface;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v10

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "startHighSpeedRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v6, v11, [Ljava/lang/Object;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 15
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 17
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-array v0, v11, [Landroid/view/Surface;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 19
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "startHighSpeedRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v6, v11, [Ljava/lang/Object;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 22
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_1
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHighSpeedRecordSession: setup output configuration number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 26
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 28
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 29
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 30
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHighSpeedRecordSession: reset session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 32
    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 33
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->getClientCb()Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    move-result-object v2

    if-nez v2, :cond_5

    .line 35
    :cond_4
    new-instance v2, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v3, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v2, v1, v3, v4}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    .line 36
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    const/16 v3, 0x78

    if-eqz v2, :cond_9

    .line 37
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "turns PQ feature on"

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 39
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v9}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 40
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 41
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_120FPS:[I

    goto :goto_1

    :cond_6
    const/16 v3, 0xf0

    if-ne v2, v3, :cond_8

    .line 42
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    .line 43
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v5

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v5, v6, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 44
    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 45
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHighSpeedRecordSession: turns smvr mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 48
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    :cond_7
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 51
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 54
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_5

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Slow Motion Recording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OOoO()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 57
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 58
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_3

    :cond_a
    move v2, v10

    .line 59
    :goto_3
    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v8

    invoke-static {v5, v6, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyPreviewMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v5

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_MIRROR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 61
    :cond_b
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 63
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 64
    :cond_c
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    move/from16 v5, p4

    if-ne v5, v2, :cond_d

    if-ne v0, v3, :cond_d

    .line 65
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: use customized operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 66
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 67
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v12, p3

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 70
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_5

    .line 71
    :cond_d
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 73
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 76
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_5

    .line 77
    :cond_e
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v5, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v3, v1, v5, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 78
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    .line 79
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 80
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start high speed record session"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public startHighSpeedRecording()V
    .locals 3

    const-string v0, "startHighSpeedRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 2

    const-string v0, "startPreviewCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v0, :cond_3

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera2/MiCamera2;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public startRecordPreview()V
    .locals 4

    const-string v0, "startRecordPreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "startRecordSession"

    .line 1
    invoke-direct {v1, v3}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v9, 0x2

    aput-object v2, v6, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v6, v11

    const-string v10, "startRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s enableVideoSnapshot=%s"

    .line 4
    invoke-static {v4, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iput-object v0, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iput-object v2, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 8
    iput v0, v1, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 15
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDR10Video()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v8

    .line 17
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SESSIONKEY_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDR10Video()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 18
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isTrackFocusEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 20
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFeatureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v1, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 22
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 23
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 24
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordSession: reset session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 26
    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 27
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 31
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_4

    new-array v0, v7, [Landroid/view/Surface;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 34
    :cond_4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 37
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera2/MiCameraSurfaceManager;->prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 40
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_6

    new-array v2, v11, [Landroid/view/Surface;

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    aput-object v3, v2, v7

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 42
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "startRecordSession: add VideoSnapshotImageReader configuration: format=0x%x size=%dx%d"

    new-array v10, v11, [Ljava/lang/Object;

    .line 43
    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    .line 44
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v9

    .line 45
    invoke-static {v4, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0OO;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    new-array v0, v9, [Landroid/view/Surface;

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-array v0, v9, [Landroid/view/Surface;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 48
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 50
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_8
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->getClientCb()Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    move-result-object v0

    if-nez v0, :cond_a

    .line 53
    :cond_9
    new-instance v0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    .line 54
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v7

    goto :goto_4

    :cond_b
    move v3, v8

    :goto_4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyVideoHdrModeIfNeed()V

    .line 56
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "startRecordSession: turns PQ feature on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 59
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 60
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getHDR10Video()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    .line 62
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_c

    move v8, v7

    :cond_c
    if-eqz v8, :cond_d

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HFPSVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 64
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighFpsVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 65
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "startRecordSession: turns hfps mode on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_d
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    iget-object v14, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v10, p4

    .line 68
    invoke-static/range {v9 .. v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_5

    .line 69
    :cond_e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v0

    if-eqz v0, :cond_f

    move v8, v7

    .line 71
    :cond_f
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyPreviewMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_MIRROR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/SessionConfig;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 73
    :cond_10
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 74
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {v0, v7, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 75
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSessionConfig()Lcom/android/camera2/SessionConfig;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 76
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    iget-object v14, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v10, p4

    .line 78
    invoke-static/range {v9 .. v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 79
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 80
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session, IllegalState"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 82
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_5
    return-void
.end method

.method public startRecording(ZZ)V
    .locals 6

    const-string v0, "startRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: startRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p2, :cond_5

    .line 12
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result p1

    if-nez p1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportISOGain(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_DIGITAL_GAIN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    int-to-float p1, p2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v2

    const-wide/32 v4, 0x7735940

    div-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMinIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    if-lez p1, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyISO(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    :cond_4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewIso "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isoDigitalGain "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " recordIso "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 25
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "X: startRecording"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start recording, IllegalState"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 28
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start recording"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startShot(Lcom/android/camera2/MiCamera2Shot;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: mMiCamera2ShotQueue.offer, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: mMiCamera2ShotQueue.offer failure, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotEnabled()Z

    move-result v0

    .line 10
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startShot holder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isHQQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v1, p1}, Lcom/android/camera2/MiCamera2Shot;->setHighQualityQuickShotEnabled(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotEnabled(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 15
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :cond_2
    return-void
.end method

.method public startTrackFocus(Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTrackFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p2, v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "startTrackFocus error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "startTrackFocus end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public stopPreviewCallback(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreviewCallback(): isRelease = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 3
    iget v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 7
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    if-nez p1, :cond_1

    const-string p1, "stopPreviewCallback"

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const-string v0, "stopRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop recording, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    .line 8
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera2/Camera2Proxy;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerCapture()V

    return-void
.end method

.method public takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "takeSimplePicture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;

    invoke-virtual {p3, p1}, Lcom/android/camera/ui/RenderEngineAdapter;->setPreviewSaveListener(Lcom/android/camera/ui/RenderEngineAdapter$PreviewSaveListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    check-cast p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2ShotSimplePreview;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :cond_0
    return-void
.end method

.method public unlockExposure()V
    .locals 2

    const-string v0, "unlockExposure"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public updateDeferPreviewSession(Landroid/view/Surface;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: updateDeferPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iput-object p1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iput-object p1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mDeferPreviewSurface:Landroid/view/Surface;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 7
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: it is no need to update"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_2

    .line 10
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: capture session is not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    monitor-exit v0

    return v1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p1

    iget-object p1, p1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_3

    .line 13
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: preview surface is not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    monitor-exit v0

    return v1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "updateDeferPreviewSession: ParallelService is not ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    monitor-exit v0

    return v1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_5

    .line 23
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 31
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getKey()I

    move-result v2

    .line 32
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    if-eqz v2, :cond_6

    .line 34
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 37
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "updateDeferPreviewSession: finalizeOutputConfigurations success"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "updateDeferPreviewSession: finalizeOutputConfigurations failed"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getValueFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 41
    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 43
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz p1, :cond_9

    .line 45
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    .line 46
    :cond_9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz p1, :cond_a

    .line 47
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewSessionSuccess()V

    .line 48
    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public updateFlashStateTimeLock()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public updateFrameNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    return-void
.end method

.method public useParallelVTCameraSnapshot(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isParallelSupportedCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelHDREnable()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OOO0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 4
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isMacroMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method
