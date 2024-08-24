.class public interface abstract Lcom/android/camera/module/common/ModuleCameraManagerInterface;
.super Ljava/lang/Object;
.source "ModuleCameraManagerInterface.java"


# virtual methods
.method public abstract captureVideoSnapshot(ILcom/android/camera/module/video/JpegPictureCallback;)V
.end method

.method public abstract consumePreference(I)Z
.end method

.method public abstract enableVideoBokeh(Z)V
.end method

.method public abstract getActualCameraId()I
.end method

.method public abstract getBogusCameraId()I
.end method

.method public abstract getCamera2Device()Lcom/android/camera2/Camera2Proxy;
.end method

.method public abstract getCamera2ProxyHashCode()I
.end method

.method public abstract getCameraDisplayOrientation()I
.end method

.method public abstract getCameraState()I
.end method

.method public abstract getCapabilities()Lcom/android/camera2/CameraCapabilities;
.end method

.method public abstract getConfigMgr()Lcom/android/camera2/CameraConfigManager;
.end method

.method public abstract getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;
.end method

.method public abstract getDeviceBasedZoomRatio()F
.end method

.method public abstract getDeviceLock()Ljava/lang/Object;
.end method

.method public abstract getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;
.end method

.method public abstract getEvState()I
.end method

.method public abstract getEvValue()I
.end method

.method public abstract getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;
.end method

.method public abstract getJpegRotation()I
.end method

.method public abstract getLastSatFallbackRequestId()I
.end method

.method public abstract getLastZoomRatio()F
.end method

.method public abstract getMaxFaceCount()I
.end method

.method public abstract getNullableDevice()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPictureSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getPreviewSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getResultDataCBListener()Lcom/xiaomi/camera/core/IResultDataCallbackListener;
.end method

.method public abstract getSatMasterCameraId()I
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract is3ALockSupported()Z
.end method

.method public abstract is3ALocked()Z
.end method

.method public abstract isAELockOnlySupported()Z
.end method

.method public abstract isAeLockSupported()Z
.end method

.method public abstract isAwbLockSupported()Z
.end method

.method public abstract isBokehFrontCamera()Z
.end method

.method public abstract isCameraDisabled()Z
.end method

.method public abstract isCameraHardwareError()Z
.end method

.method public abstract isCameraModule()Z
.end method

.method public abstract isContinuousFocusSupported()Z
.end method

.method public abstract isDualFrontCamera()Z
.end method

.method public abstract isFallbackProcessed()Z
.end method

.method public abstract isFocusAreaSupported()Z
.end method

.method public abstract isFocusOrAELockSupported()Z
.end method

.method public abstract isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;
.end method

.method public abstract isFrontCamera()Z
.end method

.method public abstract isInMultiSurfaceSatMode()Z
.end method

.method public abstract isInQCFAMode()Z
.end method

.method public abstract isMeteringAreaSupported()Z
.end method

.method public abstract isOpenCameraFail()Z
.end method

.method public abstract isSatFallback()I
.end method

.method public abstract isSingleCamera()Z
.end method

.method public abstract isSquareModule()Z
.end method

.method public abstract isTargetZooming()Z
.end method

.method public abstract isUWAELocked()Z
.end method

.method public abstract isWaitingSnapshot()Z
.end method

.method public abstract isZoomRatioBetweenUltraAndWide()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract lockAEAF()V
.end method

.method public abstract release()V
.end method

.method public abstract set3ALockSupported(Z)V
.end method

.method public abstract setAELockOnlySupported(Z)V
.end method

.method public abstract setASDEnable(Z)V
.end method

.method public abstract setAWBMode(Ljava/lang/String;)V
.end method

.method public abstract setAeLockSupported(Z)V
.end method

.method public abstract setAwbLockSupported(Z)V
.end method

.method public abstract setBogusCameraId(I)V
.end method

.method public abstract setBokeh1X(Z)V
.end method

.method public abstract setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V
.end method

.method public abstract setCameraAudioRestriction(Z)V
.end method

.method public abstract setCameraDisabled(Z)V
.end method

.method public abstract setCameraDisplayOrientation(I)V
.end method

.method public abstract setCameraHardwareError(Z)V
.end method

.method public abstract setCameraState(I)V
.end method

.method public abstract setContinuousFocusSupported(Z)V
.end method

.method public abstract setErrorCallback(Lcom/android/camera/CameraErrorCallbackImpl;)V
.end method

.method public abstract setEvState(I)V
.end method

.method public abstract setEvValue(I)V
.end method

.method public abstract setFallbackProcessed(Z)V
.end method

.method public abstract setFocusAreaSupported(Z)V
.end method

.method public abstract setFocusManager(Lcom/android/camera/module/loader/camera2/FocusManager;)V
.end method

.method public abstract setFocusMode(Ljava/lang/String;)V
.end method

.method public abstract setFocusOrAELockSupported(Z)V
.end method

.method public abstract setFrameAvailable(Z)V
.end method

.method public abstract setHistogramTagDefault()V
.end method

.method public abstract setLastSatFallbackRequestId(I)V
.end method

.method public abstract setLastZoomRatio(F)V
.end method

.method public abstract setM3ALocked(Z)V
.end method

.method public abstract setMeteringAreaSupported(Z)V
.end method

.method public abstract setOpenCameraFail(Z)V
.end method

.method public abstract setPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setPreviewSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setSatFallback(I)V
.end method

.method public abstract setSatMasterCameraId(I)V
.end method

.method public abstract setThermalLevel(I)V
.end method

.method public abstract setUWAELocked(Z)V
.end method

.method public abstract setWaitingSnapshot(Z)V
.end method

.method public abstract setZoomRatio(F)V
.end method

.method public abstract setZoomSupported(Z)V
.end method

.method public abstract unlockAEAF()V
.end method

.method public abstract updateDoDepurple()V
.end method

.method public abstract updateExposureMeteringMode()V
.end method

.method public abstract updateFocusArea(Z)V
.end method

.method public abstract updateFpsRange(ZLandroid/util/Range;)V
.end method

.method public abstract updateFpsRangeDefault()V
.end method

.method public abstract updateFrontMirror()V
.end method

.method public abstract updateJpegThumbnailSize()V
.end method

.method public abstract updateMacroMode(I)V
.end method

.method public abstract updateOIS()V
.end method

.method public abstract updateSATZooming(Z)V
.end method

.method public abstract updateSkinColor()V
.end method

.method public abstract updateSpecshotMode()Z
.end method

.method public abstract updateTargetZoom()V
.end method

.method public abstract updateThermalLevel()V
.end method

.method public abstract updateUltraPixelPortrait()V
.end method

.method public abstract updateVideoBokeh()V
.end method
