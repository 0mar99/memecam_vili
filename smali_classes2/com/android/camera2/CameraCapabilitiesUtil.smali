.class public Lcom/android/camera2/CameraCapabilitiesUtil;
.super Ljava/lang/Object;
.source "CameraCapabilitiesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToPictureSize(Lcom/android/camera2/CameraCapabilities;[Landroid/util/Size;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "[",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static disableRtStreamForSrExceptFistFrame(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->disableRtStreamForSrExceptFistFrame()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static disableRtStreamForSrRequired(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->disableRtStreamForSrRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static get8KMaxFpsSupported(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->get8KMaxFpsSupported()I

    move-result p0

    return p0
.end method

.method public static getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getAiColorCorrectionVersion(Lcom/android/camera2/CameraCapabilities;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getAiColorCorrectionVersion(Z)I

    move-result p0

    return p0
.end method

.method public static getAiShutterSupport(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    return p0
.end method

.method public static getAnchorFrameMask(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result p0

    return p0
.end method

.method public static getBeautyAlgoType(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBeautyAlgoType()I

    move-result p0

    return p0
.end method

.method public static getBeautyVersion(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersion()I

    move-result p0

    return p0
.end method

.method public static getBeautyVersionData(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersionData()I

    move-result p0

    return p0
.end method

.method public static getBinningFactor(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBinningFactor()I

    move-result p0

    return p0
.end method

.method public static getBinningSrData(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/BinningSrData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object p0

    return-object p0
.end method

.method public static getBokeBufferSize(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBokeBufferSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraCalibrationData(Lcom/android/camera2/CameraCapabilities;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCalibrationData()[B

    move-result-object p0

    return-object p0
.end method

.method public static getCameraCharacteristics(Lcom/android/camera2/CameraCapabilities;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p0

    return p0
.end method

.method public static getCameraRoleId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraRoleId()I

    move-result p0

    return p0
.end method

.method public static getCameraRoleIds(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraRoleIds()[I

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureRequestVendorKeys(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCaptureRequestVendorKeys()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static getDualBokehVendorId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getDualBokehVendorId()I

    move-result p0

    return p0
.end method

.method public static getEndOfStreamType(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getEndOfStreamType()I

    move-result p0

    return p0
.end method

.method public static getExposureCompensationRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureCompensationRational(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Rational;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRational()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureCompensationStep(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result p0

    return p0
.end method

.method public static getExposureTimeRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExposureTimeRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getExtendedMaxZoomCaps(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExtendedMaxZoomCaps()F

    move-result p0

    return p0
.end method

.method public static getFacing(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p0

    return p0
.end method

.method public static getFusionPhysicalIds(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getFusionPhysicalIds()[I

    move-result-object p0

    return-object p0
.end method

.method public static getHighQualityQuickShotThresholdCount(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getHighQualityQuickShotThresholdCount()I

    move-result p0

    return p0
.end method

.method public static getHighSpeedVideoConfigs(Lcom/android/camera2/CameraCapabilities;)[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getHighSpeedVideoConfigs()[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static getHistogramValue(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getHistogramValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getIsoRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getIsoRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getLiveShotSupportedUsePreviewValue(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getLiveShotSupportedUsePreviewValue()I

    move-result p0

    return p0
.end method

.method public static getMDEVList(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitMDEVList()[I

    move-result-object p0

    return-object p0
.end method

.method public static getMaxExposureCompensation(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxExposureCompensation()I

    move-result p0

    return p0
.end method

.method public static getMaxFaceCount(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxFaceCount()I

    move-result p0

    return p0
.end method

.method public static getMaxFocusDistance(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxFocusDistance()F

    move-result p0

    return p0
.end method

.method public static getMaxIso(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxIso()I

    move-result p0

    return p0
.end method

.method public static getMaxJpegSize(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxJpegSize()I

    move-result p0

    return p0
.end method

.method public static getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p0

    return p0
.end method

.method public static getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result p0

    return p0
.end method

.method public static getMinIso(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMinIso()I

    move-result p0

    return p0
.end method

.method public static getMinZoomRatio(Lcom/android/camera2/CameraCapabilities;F)F
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getMinZoomRatio(F)F

    move-result p0

    return p0
.end method

.method public static getMinimumFocusDistance(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMinimumFocusDistance()F

    move-result p0

    return p0
.end method

.method public static getMiviSuperNightSupportedMask(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMiviSuperNightSupportedMask()I

    move-result p0

    return p0
.end method

.method public static getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p0

    return p0
.end method

.method public static getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokeh1XId()I

    move-result p0

    return p0
.end method

.method public static getOptimalMasterBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokeh1XSize(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehId()I

    move-result p0

    return p0
.end method

.method public static getOptimalMasterBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehSize(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalPictureBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalPictureBokehSize(Ljava/lang/String;Z)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokeh1XId()I

    move-result p0

    return p0
.end method

.method public static getOptimalSlaveBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokeh1XSize(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokehId()I

    move-result p0

    return p0
.end method

.method public static getOptimalSlaveBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokehSize(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getPortraitBokehZoomRatio(Lcom/android/camera2/CameraCapabilities;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitBokehZoomRatio()F

    move-result p0

    return p0
.end method

.method public static getPortraitLightingArray(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static getPortraitLightingVersion(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingVersion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getPreferBokehFpsRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPreferBokehFpsRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickShotBackBokehDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackBokehDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackBokehHdrDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackBokehHdrDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackHdrDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackHdrDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackMacroModeDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackMacroModeDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackNormalCaptureDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackNormalCaptureDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackSRCaptureDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackSRCaptureDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotBackSuperNightSeDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotBackSuperNightSeDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotFaceBeautyDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotFaceBeautyDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotFrontBokehDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotFrontBokehDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotFrontHdrDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotFrontHdrDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickShotFrontNormalCaptureDelayTime(Lcom/android/camera2/CameraCapabilities;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotFrontNormalCaptureDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQuickshotNoSRZoomRange(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickshotNoSRZoomRange()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getRearUltraPixelPhotography(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000oo()[I

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    array-length v1, v0

    if-lez v1, :cond_4

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraRoleId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000O00()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x15

    if-ne p0, v1, :cond_2

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x14

    if-ne p0, v1, :cond_3

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    const/16 v0, 0x17

    if-ne p0, v0, :cond_4

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000O0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000O00()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotography(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0O0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSatFusionCalibrationDataArray(Lcom/android/camera2/CameraCapabilities;)[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSatFusionCalibrationDataArray()[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object p0

    return-object p0
.end method

.method public static getSatZoomSplineData(Lcom/android/camera2/CameraCapabilities;)[Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSatZoomSplineData()[Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenLightBrightness(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getScreenLightBrightness()I

    move-result p0

    return p0
.end method

.method public static getSensorOrientation(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p0

    return p0
.end method

.method public static getSharpnessRange(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSharpnessRange()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSoundTimeWhenAnchor(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSoundTimeWhenAnchor()I

    move-result p0

    return p0
.end method

.method public static getSuperNightLimitSize(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSuperNightLimitSize()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperNightManualEvMappingMask(Lcom/android/camera2/CameraCapabilities;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSuperNightManualEvMappingMask(I)I

    move-result p0

    return p0
.end method

.method public static getSuperNightManualEvMappingValue(Lcom/android/camera2/CameraCapabilities;FIZ)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera2/CameraCapabilities;->getSuperNightManualEvMappingValue(FIZ)F

    move-result p0

    return p0
.end method

.method public static getSupportQuickshotIsoThresholds(Lcom/android/camera2/CameraCapabilities;I)[I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportQuickshotIsoThresholds(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportVideoBokehQualities(Lcom/android/camera2/CameraCapabilities;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportVideoBokehQualities()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedAWBModes(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedAWBModes()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedAntiBandingModes(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedAntiBandingModes()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedColorEffects(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedColorEffects()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedCustomFpsRange(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera2/MiCustomFpsRange;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedCustomFpsRange()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedFlashModes(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFlashModes()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFocusModes()[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedFpsRange(Lcom/android/camera2/CameraCapabilities;)[Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFpsRange()[Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHardwareLevel(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHardwareLevel()I

    move-result p0

    return p0
.end method

.method public static getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHdrType()I

    move-result p0

    return p0
.end method

.method public static getSupportedHeicOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHeicOutputStreamSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHighSpeedVideoFPSRange(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)[Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoFPSRange(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHighSpeedVideoSize(Lcom/android/camera2/CameraCapabilities;)[Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoSize()[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedOutputSizeWithTargetMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputStreamSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedThumbnailSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedVideoExposureDelay(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedVideoExposureDelay()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getThresholdZoomValue()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getTuningBufferSize(I)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getUltraPixelPhotographyRearSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x1f40

    const/16 v1, 0x1770

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotography(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0OO(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoHdrSupportSetFreqValue(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getVideoHdrSupportSetFreqValue()I

    move-result p0

    return p0
.end method

.method public static getVideoSatSupportedQualities(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getVideoSatSupportedQualities()I

    move-result p0

    return p0
.end method

.method public static getViewAngle(Lcom/android/camera2/CameraCapabilities;Z)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result p0

    return p0
.end method

.method public static getXiaomiYuvFormat(Lcom/android/camera2/CameraCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getXiaomiYuvFormat()I

    move-result p0

    return p0
.end method

.method public static getZoomMapSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getZoomMapSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static hasStandaloneHeicStreamConfigurations(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->hasStandaloneHeicStreamConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is1080P60FpsEISSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is30fpsDynamicSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is4K60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is4K60FpsEISSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is60fpsDynamicSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAELockSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAELockSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAERegionSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAERegionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isASDSceneSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isASDSceneSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAWBLockSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAWBLockSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAdaptiveSnapshotSizeInSatModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAdaptiveSnapshotSizeInSatModeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAddScanIn3ALockStatus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAddScanIn3ALockStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAiMoonEffectEnableSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAiMoonEffectEnableSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAiPortraitDeblurSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAiPortraitDeblurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAsdAlgorithmEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAsdAlgorithmEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAsdDirtyEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAsdEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAsdEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAutoFocusSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isAutoFocusSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBackSoftLightSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBackSoftLightSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBackwardCaptureSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBackwardCaptureSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBeautyModeDependTsVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyModeDependTsVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBeautyModeTextureVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyModeTextureVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBeautyNewModeTsVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyNewModeTsVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyTrueSightAlgo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBurstCaptureSupportRepeating(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBurstCaptureSupportRepeating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCaptureAiShutterDenoiseEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCaptureAiShutterDenoiseEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCaptureAiShutterEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCaptureAiShutterEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCaptureAiShutterHDREnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCaptureAiShutterHDREnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCaptureExpTimeDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCaptureExpTimeDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCinematicPhotoSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCinematicPhotoSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCloneStreamOptimizationSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isCloneStreamOptimizationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isColorEnhanceEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isColorEnhanceEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCurrentQualitySupportEis(Lcom/android/camera2/CameraCapabilities;II)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportHdr10(III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDebugInfoAsWatermarkSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isDebugInfoAsWatermarkSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isDisableMfnrForMfnrHDR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDngPostProc(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isDngPostProc()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDynamicFpsConfigSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isDynamicFpsConfigSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEISPreviewSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFakeSatEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFakeSatV1Supported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV1Supported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFlashSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFlashSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFlawDetectEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isForceDisableLLS(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isForceDisableLLS()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFovcSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFovcSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFrameByFrameSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFrameByFrameSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHdrThermalDetectionSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHdrThermalDetectionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHeicSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHeicSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighPerformanceSessionKeySupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighPerformanceSessionKeySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotLimitMnfrInputNumFramesEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotLimitMnfrInputNumFramesEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportBackBokehHDR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportBackBokehHDR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportBackBokehMFNR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportBackBokehMFNR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportFrontBokeh(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportFrontBokeh()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportFrontHDR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportFrontHDR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportFrontMFNR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportFrontMFNR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportMacroMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportMacroMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportSatHDR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportSatHDR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportSatMFNR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportSatMFNR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportSatSuperNight(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportSatSuperNight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighQualityQuickShotSupportSatSuperResolution(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isHighQualityQuickShotSupportSatSuperResolution()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIncomplete(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isIncomplete()Z

    move-result p0

    return p0
.end method

.method public static isLLSSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isLLSSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLegacyBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isLegacyBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLevelBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isLevelBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitLightingVersion(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLightingVersion2(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPortraitLightingVersion(Lcom/android/camera2/CameraCapabilities;)I

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

.method public static isMFNRBokehSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMFNRBokehSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMacroHdrMutex(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMakeups2TsVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMakeups2TsVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMfnrMacroZoomSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMfnrMacroZoomSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMiviBokehSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMiviNightModeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMiviNightSeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMiviNightSeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMiviSatSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMixedQuickShotSupportFrontMFNR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMixedQuickShotSupportFrontMFNR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMixedQuickShotSupportMacroMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMixedQuickShotSupportMacroMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMixedQuickShotSupportSatMFNR(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMixedQuickShotSupportSatMFNR()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMotionDetectionSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMotionDetectionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMtkAiShutterVersionOne(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMtkAiShutterVersionOne()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMtkAiShutterVersionTwo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMtkAiShutterVersionTwo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMtkIsp7()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedReplaceSrWithMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isNeedReplaceSrWithMfnr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNewMakeupsDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isNewMakeupsDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isNightCaptureDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNoneBeautyModeTsVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isNoneBeautyModeTsVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnlySupportMasterFilter720P(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isOnlySupportMasterFilter720P()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnlySupportTorchFlash(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isOnlySupportTorchFlash()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPartialMetadataSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPartialMetadataSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPortraitAiShutterDenoiseEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPortraitAiShutterDenoiseEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPortraitAiShutterEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPortraitAiShutterEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPortraitAiShutterHDREnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPortraitAiShutterHDREnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPortraitSupportMFNRAlgo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPortraitSupportMFNRAlgo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPreCaptureSupportAF(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isPreCaptureSupportAF()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProVideoLogEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isProVideoLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportUltraPixelRaw(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isReal8K(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isReal8K()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRemosaicDetecedSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isRemosaicDetecedSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSatFallbackDisable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSatFallbackDisable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSatFallbackEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSatFallbackEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSatFusionShotSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSatPipSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSatPipSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenLightHintSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isScreenLightHintSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenLightLevelSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isScreenLightLevelSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSensorDepurpleDisable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSensorDepurpleDisable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSensorHdrSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSensorHdrSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSessionKeyDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isSessionKeyDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSkipPreviewBufferSupportedForBokehNight(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSkipPreviewBufferSupportedForBokehNight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSkipPreviewBufferSupportedForSE(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSkipPreviewBufferSupportedForSE()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSkipPreviewBufferSupportedForSuperNight(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSkipPreviewBufferSupportedForSuperNight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmoothTransitionEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSmoothTransitionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecshotModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSpecshotModeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuperNightEvMappingSupported(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isSuperNightEvMappingSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuperNightExifTagDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSuperNightExifTagDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuperNightYUVReprocessSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSuperNightYUVReprocessSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAIIE()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAIPreviewEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAIPreviewEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAiPortraitDeblur(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAiPortraitDeblur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAiShutter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAmbilightAeTarget(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAmbilightAeTarget()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAmbilightAutoAeTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAmbilightAutoAeTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAnchorFrame(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAnchorFrame()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAutoHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAutoHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportBeautyMakeup(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyMakeup()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0O()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportBokehAdjust(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportBokehAdjust()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportBokehRole()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportBurstHint(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportBurstHint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCameraAi30(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCameraAi30()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCaptureRequestWithoutPreview(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCaptureRequestWithoutPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportColorRetentionBackRequestTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportColorRetentionBackRequestTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportColorRetentionFrontRequestTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportColorRetentionFrontRequestTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportContrast(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportContrast()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCustomFlashCurrent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCustomWatermark(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCustomWatermark()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCvLens(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCvLens()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportCvType(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportCvType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDepthFocus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDepthFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDepthFocusForMTK(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDepthFocusForMTK()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDepurple(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDepurple()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDeviceOrientation(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDeviceOrientation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDoZipWithBss(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDoZipWithBss()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDocumentsMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDocumentsMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDualBokeh(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDualBokeh()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDualVideoOpMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDualVideoOpMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportEnableHighQualityQuickShotByTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportEnableHighQualityQuickShotByTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportExtendedMaxZoom(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportExtendedMaxZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportExtremeDarkSeResult(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportExtremeDarkSeResult()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFaceAgeAnalyze(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFaceAgeAnalyze()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFacePossEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFacePossEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFastZoomIn(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooo0o()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFastZoomIn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFlashHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFlashMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFlashMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFrameRatio(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFrameRatio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFrontBokehHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFrontBokehHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFrontMirror(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFrontMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHHT(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHHT()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHHTFrameNumber()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHdr10Video(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdr10Video()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrBokeh()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHdrCheckerStatus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrCheckerStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHdrMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHighQualityQuickShotAndQuickShotMixedUse(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityQuickShotAndQuickShotMixedUse()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHistogram(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportHistogramTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogramTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportISOGain(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportISOGain()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportInsensorZoom(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportInsensorZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportIspHeif(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportIspHeif()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportLensDirtyDetect(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportLensDirtyDetect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p0

    return p0
.end method

.method public static isSupportMacroMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMacroMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMakeups(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMakeups()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMakeups2(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMakeups2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMaleMakeupSwitch(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMaleMakeupSwitch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMfnr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMiBokeh(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMiBokeh()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMiTuningMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMiTuningMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMiviSuperNightMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMiviSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMotionCaptureType(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMotionCaptureType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMotionDetectionArea(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMotionDetectionArea()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMotionDetectionEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMotionDetectionEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMotionDetectionResult(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMotionDetectionResult()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportMultiCameraIds(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportMultiCameraIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportNevusWipeSwitch(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportNevusWipeSwitch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportNormalWideLDC(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportNormalWideLDC()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportOIS(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportOIS()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportOptimalBokehSize(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportOptimalBokehSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportP2done(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o00()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportP2done()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportParallelCameraIds(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelImageName()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportParallelSnapshot(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelSnapshot()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPortraitBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPortraitBeautyItem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPortraitBokehZoomRatio(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPortraitBokehZoomRatio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPortraitLighting(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPortraitLighting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPreviewFullSize(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPreviewFullSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPreviewInSensorZoom(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPreviewInSensorZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportPreviewMirror(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPreviewMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportQcomVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportQcomVideoHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportQuickShot(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportQuickShot()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportQuickshotIsoThresholds(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportQuickshotIsoThresholds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportRaw(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportRealBV(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportRealBV()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportRemosaicYuvLpnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportRemosaicYuvLpnr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSatRawSize(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSatRawSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSatZoomSplineData(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSatZoomSplineData()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportShrinkMemoryMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportShrinkMemoryMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportShutterTimestamp(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportShutterTimestamp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSkinColor(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSkinColor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSnapShotTorch(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSnapShotTorch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSnapshotReqInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSnapshotReqInfoResult(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSnapshotReqInfoResult()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSuperNight(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSuperNight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSuperNightBokeh(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSuperNightBokeh()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSuperResolution(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSuperResolution()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSwMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSwMfnr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSwMfnrDisabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSwMfnrDisabled()Z

    move-result p0

    return p0
.end method

.method public static isSupportTargetZoom(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportTargetZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportThermalAlgoDisableMask(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportThermalAlgoDisableMask()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportThermalLevel(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportThermalLevel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportTrackEye(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportTrackEye()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportTrackFocus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportTrackFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportUltraPixelRaw(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getUltraPixelPhotographyRearSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {p0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isUltraPixelRawPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method public static isSupportUltraWideLDC(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportUltraWideLDC()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVHdrEIS(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVHdrEIS()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBeautyScreenshot(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeautyScreenshot()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehAdjustBack(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjustBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehAdjustFront(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjustFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehColorRetention(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetention()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehColorRetentionBack(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehColorRetentionFront(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehLevelBack(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehLevelBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoBokehLevelFront(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehLevelFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoFilterColorRetention(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionFront()Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p0

    return p0
.end method

.method public static isSupportVideoFilterRequestTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterRequestTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportWatermark(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportWatermark()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportZeroDegreeOrientationImage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedBeautyLens(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedBeautyLens()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedBoKehFallBackEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedBoKehFallBackEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedBokehFallback(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedBokehFallback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedCinematicVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedHistogramStats(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedHistogramStats()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedQcfa()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedRealSquare(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedRealSquare()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedSuperPortrait(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedVideoLogFormat(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoLogFormat()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedVideoMiMovie(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTagDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTeleOISSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isTeleOISSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTrackAFQualityDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isTrackAFQualityDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraPixelPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelPhotographySupported(Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraPixelPortraitTagDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelPortraitTagDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraPixelRawPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelRawPhotographySupported(Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraPixelSupportMFNRAlgo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelSupportMFNRAlgo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoBeautyForceEis(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoBeautyForceEis()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoHdr10ModeDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoHdr10OrPlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

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

.method public static isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoHdr10ValueDefined(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ValueDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoHdrEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdrEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoMfnrEnabled(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoMfnrEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZoomRatioSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isZoomRatioSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZoomSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isZoomSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isdynamicFpsSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isdynamicFpsSupportedByCameraIds(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIds(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isdynamicFpsSupportedByCameraIdsAndFps(Lcom/android/camera2/CameraCapabilities;II)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static proPhotoMfnrAlgoSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->proPhotoMfnrAlgoSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    return-void
.end method

.method public static supportAiEnhancedVideo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportAiEnhancedVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportMasterFilterQuality(Lcom/android/camera2/CameraCapabilities;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportMasterFilterQuality()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static supportMoonAutoFocus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportMoonAutoFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportNearRangeMode(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportNearRangeMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportPhysicCameraId()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportSATUltraWideLDCEnable(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportSATUltraWideLDCEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportSuperNightVideoQuality(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportSuperNightVideoQuality()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static supportVideoSatQualityTag(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportVideoSatQualityTag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
