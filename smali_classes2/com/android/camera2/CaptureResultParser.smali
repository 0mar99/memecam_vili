.class public Lcom/android/camera2/CaptureResultParser;
.super Ljava/lang/Object;
.source "CaptureResultParser.java"


# static fields
.field public static final DEBUG_ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "CaptureResultParser"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera2/CaptureResultParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAECFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AECFrameControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AEC_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 2
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->unmarshal([B)Lcom/android/camera2/vendortag/struct/AECFrameControl;

    move-result-object p0

    return-object p0
.end method

.method public static getAFFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AFFrameControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AF_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 2
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->unmarshal([B)Lcom/android/camera2/vendortag/struct/AFFrameControl;

    move-result-object p0

    return-object p0
.end method

.method public static getAWBFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AWBFrameControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AWB_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 2
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->unmarshal([B)Lcom/android/camera2/vendortag/struct/AWBFrameControl;

    move-result-object p0

    return-object p0
.end method

.method public static getAecLux(Landroid/hardware/camera2/CaptureResult;)F
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AEC_LUX:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getAwbCct(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getAwbCct, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->USE_CUSTOM_WB:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getBeautyBodySlimCountResult(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_BODY_SLIM_COUNT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getExifValues(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->EXIF_INFO_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DEBUG_INFO_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public static getFastZoomResult(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAST_ZOOM_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAST_ZOOM_RESULT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getHHTFrameNumber, tag not define"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_FRAMENUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v0

    .line 5
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getHHTFrameNumber, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getHdrCapturePreCollectEnable(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_PRECOLLECT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CAPTURE_REQUEST_SETTINGS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_ADRC:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_SCENETYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_EV_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDRSR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrSrRequestExpandRules(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDRSR_REQUEST_EXPAND_NUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getLaserDist(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getLaserDist, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->LASER_DIST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getMiAiTof(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Byte;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getLaserDist, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_AI_TOF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0
.end method

.method public static getMiMotionVelocity(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_VELOCITY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 2
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->unmarshal([B)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiMotionVelocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getMotionDetectionStatus(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)J
    .locals 2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMotionDetectionResult(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v0

    .line 2
    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->XIAOMI_MOTION_DETECTION_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0

    .line 4
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, " getMotionDetectionStatus error      result/cameraCapabilities == null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getSatDbgInfo(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_DBG_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I
    .locals 7

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p0, :cond_5

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oOO()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MASTER_PHYSICAL_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    .line 3
    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFirstRoleIdByActualId(I)I

    move-result p0

    .line 5
    sget-boolean v3, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const-string v6, "getSatMasterPhysicalCameraId: %d -> role(%d)"

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x17

    if-ne p0, v0, :cond_6

    const/4 p0, 0x4

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MATER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 11
    sget-boolean p0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_6

    .line 12
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatMasterCameraId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    if-nez v2, :cond_7

    .line 13
    sget-boolean p0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_8

    .line 14
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getSatMasterCameraId: not found, default to WIDE"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move-object v1, v2

    .line 15
    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapshotReqInfoResult(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getSnapshotReqInfo, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [B

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SNAPSHOT_REQ_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_2

    new-array p0, v0, [B

    :cond_2
    return-object p0
.end method

.method public static getSuperNightCheckerAepLine(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CHECKER_AEP_LINE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CHECKER_EV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getThermalAlgoDisableMask(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportThermalAlgoDisableMask(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->THERMAL_ALGO_DISABLE_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThermalAlgoDisableMask : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isAishutExistMotion(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoo:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AISHUT_EXIST_MOTION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MTK_3A_FEATURE_AISHUT_CAPTURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 4
    aget p0, p0, v1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static isCupCaptureDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera2/CaptureResultParser;->getThermalAlgoDisableMask(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static isDepthFocus(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDepthFocus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_DEPTH_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    move v0, p1

    :cond_3
    return v0
.end method

.method public static isDepthFocusForMTK(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDepthFocusForMTK(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AF_TYPE_FOR_MTK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    move v0, p1

    :cond_3
    return v0
.end method

.method public static isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MFNR_HDR_DISABLE_MFRN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    .line 3
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "DisableMfnrForMfnrHDR:NULL"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4
    :cond_2
    sget-object p1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableMfnrForMfnrHDR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    move v0, p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static isFakeSatEnable(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAKE_SAT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_LLS_NEEDED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiviAlgoBypassRequired(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v1, "isMiviAlgoBypassRequired, capture result is null"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MIVI_ALGO_DISABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    sget-object v1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMiviAlgoBypassRequired : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CAPTURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    sget-object p1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "superNightCaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isP2doneReady(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->P2_KEY_NOTIFICATION_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    array-length v1, p0

    if-lez v1, :cond_0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static isRemosaicDetected(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REMOSAIC_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemosaicDetected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSREnable(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_SR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecshotDetected(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CONTROL_ENABLE_SPECSHOT_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 2
    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpecshotDetected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static isSwMfnrDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSwMfnrDisabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "isSwMfnrDisabled, tag not define"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SW_MFNR_DISABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v0

    .line 5
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "isSwMfnrDisabled, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v1, "isZslHdrEnabled, capture result is null"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ASD_IS_ZSL_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
