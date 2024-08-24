.class public Lcom/android/camera2/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/CameraCapabilities$OperatingMode;
    }
.end annotation


# static fields
.field public static final CAMERA_ILLEGALSTATE_EXCEPTION:I = 0x100

.field public static final DEBUG:Z = false

.field public static final DEFAULT_BINNING_FACTOR:I = 0x3

.field public static final DEFAULT_VIEW_ANGLE:F = 51.5f

.field public static final END_OF_STREAM_TYPE_PREVIEW:I = 0x1

.field public static final END_OF_STREAM_TYPE_VIDEO:I = 0x0

.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field public static final INDEX_16X9:I = 0x1

.field public static final INDEX_4X3:I = 0x0

.field public static final INDEX_FULL:I = 0x2

.field public static final INDEX_FULL_EXTRA:I = 0x3

.field public static final SESSION_OPERATION_MODE_AI_VIDEO_ENHANCED:I = 0x8029

.field public static final SESSION_OPERATION_MODE_ALGO_UP_DUAL_BOKEH:I = 0x9000

.field public static final SESSION_OPERATION_MODE_ALGO_UP_HD:I = 0x9004

.field public static final SESSION_OPERATION_MODE_ALGO_UP_MANUAL:I = 0x9008

.field public static final SESSION_OPERATION_MODE_ALGO_UP_MANUAL_G7:I = 0x9006

.field public static final SESSION_OPERATION_MODE_ALGO_UP_MANUAL_ULTRA_PIXEL:I = 0x9007

.field public static final SESSION_OPERATION_MODE_ALGO_UP_NORMAL:I = 0x9005

.field public static final SESSION_OPERATION_MODE_ALGO_UP_QCFA:I = 0x9001

.field public static final SESSION_OPERATION_MODE_ALGO_UP_SAT:I = 0x9002

.field public static final SESSION_OPERATION_MODE_ALGO_UP_SINGLE_BOKEH:I = 0x9003

.field public static final SESSION_OPERATION_MODE_AMBILIGHT:I = 0x9300

.field public static final SESSION_OPERATION_MODE_AUTO_ZOOM:I = 0x80f4

.field public static final SESSION_OPERATION_MODE_CLONE_MODE:I = 0x80f8

.field public static final SESSION_OPERATION_MODE_DOLLY_ZOOM:I = 0x800e

.field public static final SESSION_OPERATION_MODE_DUAL_VIDEO:I = 0x8010

.field public static final SESSION_OPERATION_MODE_FOVC:I = 0xf010

.field public static final SESSION_OPERATION_MODE_FRONT_PORTRAIT:I = 0x80f1

.field public static final SESSION_OPERATION_MODE_HDR10:I = 0x8024

.field public static final SESSION_OPERATION_MODE_HFR_120:I = 0x8078

.field public static final SESSION_OPERATION_MODE_HIGH_SPEED:I = 0x1

.field public static final SESSION_OPERATION_MODE_HSR_60:I = 0x803c

.field public static final SESSION_OPERATION_MODE_MANUAL:I = 0x8003

.field public static final SESSION_OPERATION_MODE_MCTF:I = 0x8030

.field public static final SESSION_OPERATION_MODE_MIMOJI:I = 0x800b

.field public static final SESSION_OPERATION_MODE_MIUI_BACK:I = 0x8001

.field public static final SESSION_OPERATION_MODE_MIUI_FRONT:I = 0x8005

.field public static final SESSION_OPERATION_MODE_MI_LIVE:I = 0x800c

.field public static final SESSION_OPERATION_MODE_NORMAL:I = 0x0

.field public static final SESSION_OPERATION_MODE_NORMAL_ULTRA_PIXEL_PHOTOGRAPHY:I = 0x80f3

.field public static final SESSION_OPERATION_MODE_PANORMA:I = 0x8008

.field public static final SESSION_OPERATION_MODE_PORTRAIT:I = 0x8002

.field public static final SESSION_OPERATION_MODE_PROFESSIONAL_ULTRA_PIXEL_PHOTOGRAPHY:I = 0x80f5

.field public static final SESSION_OPERATION_MODE_QCFA:I = 0x8007

.field public static final SESSION_OPERATION_MODE_SUPER_NIGHT:I = 0x800a

.field public static final SESSION_OPERATION_MODE_ULTRA_PIXEL_SELF:I = 0x9009

.field public static final SESSION_OPERATION_MODE_VIDEO:I = 0x8004

.field public static final SESSION_OPERATION_MODE_VIDEO_BEAUTY:I = 0x8009

.field public static final SESSION_OPERATION_MODE_VIDEO_BEAUTY_WITH_PREVIEW_EIS:I = 0x8019

.field public static final SESSION_OPERATION_MODE_VIDEO_BOKEH_MTK_BACK:I = 0x8012

.field public static final SESSION_OPERATION_MODE_VIDEO_EIS_8K:I = 0x801d

.field public static final SESSION_OPERATION_MODE_VIDEO_HDR:I = 0xf002

.field public static final SESSION_OPERATION_MODE_VIDEO_SUPEREIS:I = 0x800d

.field public static final SESSION_OPERATION_MODE_VIDEO_SUPEREISPRO:I = 0x800f

.field public static final SESSION_OPERATION_MODE_VIDEO_SUPER_NIGHT:I = 0x8031

.field public static final SESSION_OPERATION_MODE_VV:I = 0x800c

.field public static final STREAM_CONFIGURATIONS_VENDOR_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CameraCapabilities"

.field public static final TUNING_BUFFER_FORMAT_RAW:I = 0x2

.field public static final TUNING_BUFFER_FORMAT_YUV:I = 0x1

.field public static final ULTRA_PIXEL_FRONT_32M_INDEX:I = 0x0

.field public static final ULTRA_PIXEL_REAR_100M_INDEX:I = 0x5

.field public static final ULTRA_PIXEL_REAR_108M_INDEX:I = 0x3

.field public static final ULTRA_PIXEL_REAR_48M_INDEX:I = 0x1

.field public static final ULTRA_PIXEL_REAR_50M_INDEX:I = 0x4

.field public static final ULTRA_PIXEL_REAR_64M_INDEX:I = 0x2

.field public static final XIAOMI_YUV_FORMAT_INVALID:I = -0x1

.field public static final XIAOMI_YUV_FORMAT_NV12:I = 0x1

.field public static final XIAOMI_YUV_FORMAT_NV21:I = 0x2


# instance fields
.field public mBeautyAlgoType:I

.field public mBeautyVersion:I

.field public final mCameraBufferMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCameraId:I

.field public final mCaptureRequestVendorKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public final mDelayTimeMask:J

.field public mFacing:Ljava/lang/Integer;

.field public final mFeatureMask:I

.field public final mIsIncomplete:Z

.field public mOperatingMode:I

.field public mSensorOrientation:Ljava/lang/Integer;

.field public final mSessionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStreamConfigurationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuperNightMask:I

.field public mSupportParallelCameraDevice:Ljava/lang/Boolean;

.field public mSupportedColorEnhance:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera2/CameraCapabilities$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/camera2/CameraCapabilities$1;-><init>(I)V

    sput-object v0, Lcom/android/camera2/CameraCapabilities;->STREAM_CONFIGURATIONS_VENDOR_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 2
    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3
    iput p2, p0, Lcom/android/camera2/CameraCapabilities;->mCameraId:I

    .line 4
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mSessionKeys:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera2/CameraCapabilities;->mIsIncomplete:Z

    goto :goto_2

    .line 9
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    .line 10
    iget-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->getNativeCopy(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 12
    iget-object v1, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mSessionKeys:Ljava/util/HashSet;

    .line 14
    iget-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 16
    iget-object v1, p0, Lcom/android/camera2/CameraCapabilities;->mSessionKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/CameraCapabilities;->mIsIncomplete:Z

    .line 18
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    .line 19
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getHighQualityQuickShotSupportMask()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    .line 20
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getQuickShotDelayTimeMask()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    .line 21
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQQuickShot: mFeatureMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   mDelayTimeMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMiviSuperNightSupportedMask()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    .line 23
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiviSuperNight: mSuperNightMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersionData()I

    move-result p1

    .line 25
    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->parseBeautyVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    .line 26
    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->parseBeautyAlgoType(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyAlgoType:I

    .line 27
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBeautyVersionData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,beautyVersion: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,beautyAlgo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyAlgoType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget p1, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    if-gez p1, :cond_4

    .line 29
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x1

    .line 30
    :goto_3
    iput p2, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    :cond_4
    return-void

    .line 31
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null CameraCharacteristics"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic OooO00o(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfiguration;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/camera/CameraSize;-><init>(Landroid/util/Size;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic OooO00o(I)Z
    .locals 1

    const v0, 0x48454946

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "addStreamConfigurationToList: but the key is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v0, "addStreamConfigurationToList: "

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": size = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'s configurations is null!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static contains([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static convertToSizes([I)[Landroid/util/Size;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    .line 3
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v1, "length must be odd"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_1
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [Landroid/util/Size;

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    .line 6
    new-instance v3, Landroid/util/Size;

    aget v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 7
    div-int/lit8 v4, v2, 0x2

    aput-object v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getAiVideoColorCorrectionVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_AI_ENHANCED_VIDEO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_AI_ENHANCED_VIDEO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_1
    return p0
.end method

.method public static getAnchorFrameMaskBit(II)I
    .locals 0

    if-nez p0, :cond_1

    const/16 p0, 0xc9

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 p0, 0x20000

    return p0

    :pswitch_1
    const p0, 0x8000

    return p0

    :pswitch_2
    const/high16 p0, 0x10000

    return p0

    :pswitch_3
    const/16 p0, 0x400

    return p0

    :pswitch_4
    const/16 p0, 0x4000

    return p0

    :pswitch_5
    const/16 p0, 0x2000

    return p0

    :pswitch_6
    const/16 p0, 0x1000

    return p0

    :pswitch_7
    const/16 p0, 0x800

    return p0

    :pswitch_8
    const/16 p0, 0x200

    return p0

    :pswitch_9
    const/16 p0, 0x100

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private getComponentConfigVideoQuality(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "8,120"

    const-string v1, "8,60"

    const-string v2, "8,24"

    const-string v3, "6,60"

    const-string v4, "6,24"

    const-string v5, "3001"

    const-string v6, "8"

    const-string v7, "6"

    const-string v8, "5"

    const-string v9, "3001,24"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_9
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getComponentConfigVideoQuality unknown quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    return-object v3

    :pswitch_1
    return-object v1

    :pswitch_2
    return-object v0

    :pswitch_3
    return-object v9

    :pswitch_4
    return-object v2

    :pswitch_5
    return-object v4

    :pswitch_6
    return-object v5

    :pswitch_7
    return-object v6

    :pswitch_8
    return-object v7

    :pswitch_9
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x217e3a70 -> :sswitch_9
        0x35 -> :sswitch_8
        0x36 -> :sswitch_7
        0x38 -> :sswitch_6
        0x17e91e -> :sswitch_5
        0x193778 -> :sswitch_4
        0x1937f0 -> :sswitch_3
        0x1a2036 -> :sswitch_2
        0x1a20ae -> :sswitch_1
        0x329e2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDngPostProcValue()B
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DNG_POSTPROC_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DNG_POSTPROC_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method private getExtraHighSpeedVideoConfiguration()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera2/MiHighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportExtraHighSpeedVideoConfiguration()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTRA_HIGH_SPEED_VIDEO_NUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTRA_HIGH_SPEED_VIDEO_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera2/MiHighSpeedVideoConfiguration;->unmarshal([II)Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getHighQualityQuickShotSupportMask()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HIGH_QUALITY_QUICK_SHOT_SUPPORT_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HIGH_QUALITY_QUICK_SHOT_SUPPORT_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method private getOptimalMasterBokeh1XSizes(I)[I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptimalMasterBokeh1XSizes: unsupported format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_MASTER_1X_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_MASTER_1X_RAW_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private getOptimalMasterBokehSizes(I)[I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptimalMasterBokehSizes: unsupported format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_MASTER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_MASTER_RAW_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private getOptimalPictureBokehSizes(Z)[I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_PICTURE_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_PICTURE_1X_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportBokehRole()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "getOptimalPictureBokehSizes from 1x"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_PICTURE_1X_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_PICTURE_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private getOptimalSlaveBokeh1XSizes(I)[I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptimalSlaveBokeh1XSizes: unsupported format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_SLAVE_1X_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_SLAVE_1X_RAW_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private getOptimalSlaveBokehSizes(I)[I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptimalSlaveBokehSizes: unsupported format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_SLAVE_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_OPTIMAL_SLAVE_RAW_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private getQuickShotDelayTimeMask()J
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICK_SHOT_DELAYTIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICK_SHOT_DELAYTIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "QuickShotDelayTime tag not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method private getSensorSize()Landroid/util/SizeF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedFovCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_PHYSICAL_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_PHYSICAL_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    return-object p0
.end method

.method private getSlowMotionVideoConfiguration()[Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSlowMotionVideoConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SLOW_MOTION_VIDEO_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->unmarshal([I)[Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slow motion configs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStreamConfigurationMap(I)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/android/camera2/CameraCapabilities;->getStreamConfigurations(I)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 12
    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v10, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    invoke-virtual {v2, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v11, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 15
    invoke-virtual {v2, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v12, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 16
    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v13, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 17
    invoke-virtual {v2, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v14, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 18
    invoke-virtual {v2, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v15, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 19
    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 20
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/16 v17, 0x1

    .line 21
    invoke-static/range {v3 .. v17}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->getStreamConfigurationMap([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    .line 22
    iget-object v2, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    move/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    .line 23
    :goto_1
    iget-object v0, v0, Lcom/android/camera2/CameraCapabilities;->mStreamConfigurationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object v0
.end method

.method private getStreamConfigurations(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_LIMIT_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    .line 3
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_SR_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    .line 4
    sget-object v3, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QCFA_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelPhotographyMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_SR_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedQcfa()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isQcfaMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelPhotographyMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const v2, 0x9003

    if-eq p1, v2, :cond_2

    .line 10
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QCFA_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_LIMIT_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    :goto_0
    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 13
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_LIMIT_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    .line 14
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/MiCameraCompat;->getDefaultSteamConfigurationsTag()Lcom/android/camera2/vendortag/VendorTag;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera2/CameraCapabilities;->addStreamConfigurationToList(Ljava/util/List;Lcom/android/camera2/vendortag/VendorTag;)V

    :cond_6
    return-object v0
.end method

.method private isQcfaMode(I)Z
    .locals 0

    const p0, 0x8007

    if-eq p1, p0, :cond_1

    const p0, 0x9001

    if-ne p1, p0, :cond_0

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

.method private isSupportExtraHighSpeedVideoConfiguration()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTRA_HIGH_SPEED_VIDEO_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTRA_HIGH_SPEED_VIDEO_NUMBER:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportFallbackRoleId()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACKROLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportSlowMotionVideoConfiguration()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SLOW_MOTION_VIDEO_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportVideoBokehColorVersion()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_BOKEH_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_BOKEH_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSupportedFovCrop()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_FOV_CROP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_FOV_CROP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isTrackFocusDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isUltraPixelPhotographyMode(I)Z
    .locals 0

    const p0, 0x80f3

    if-eq p1, p0, :cond_1

    const p0, 0x9004

    if-eq p1, p0, :cond_1

    const p0, 0x80f5

    if-eq p1, p0, :cond_1

    const p0, 0x9007

    if-eq p1, p0, :cond_1

    const p0, 0x9009

    if-ne p1, p0, :cond_0

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

.method private matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "20.5x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "19.5x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "16x10"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_3
    const-string p0, "21x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_4
    const-string p0, "20x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string p0, "19x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_6
    const-string p0, "18x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_7
    const-string p0, "16x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_8
    const-string p0, "9x8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_9
    const-string p0, "4x3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_a
    const-string p0, "18.75x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    aget-object p0, p2, v0

    return-object p0

    .line 3
    :pswitch_1
    aget-object p0, p2, v1

    return-object p0

    .line 4
    :pswitch_2
    aget-object p0, p2, v2

    return-object p0

    .line 5
    :pswitch_3
    aget-object p0, p2, v3

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7dbd367a -> :sswitch_a
        0xd1ef -> :sswitch_9
        0xe4b9 -> :sswitch_8
        0x171fa6 -> :sswitch_7
        0x172728 -> :sswitch_6
        0x172ae9 -> :sswitch_5
        0x177d7f -> :sswitch_4
        0x178140 -> :sswitch_3
        0x2ccd452 -> :sswitch_2
        0x56d670f0 -> :sswitch_1
        0x580c7606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private outputSizeDebugLog([Landroid/util/Size;)V
    .locals 1

    const-string p0, "OUTPUT_SIZE"

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "==================support output size list:======================="

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public convertToPictureSize([Landroid/util/Size;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    new-instance v3, Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public disableRtStreamForSrExceptFistFrame()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DISABLE_RT_STREAM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DISABLE_RT_STREAM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public disableRtStreamForSrRequired()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DISABLE_RT_STREAM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DISABLE_RT_STREAM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableRtStreamForSrRequired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public get8KMaxFpsSupported()I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECIAL_VIDEOSIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1e

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "get8KMaxFpsSupported SPECIAL_VIDEOSIZE is not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECIAL_VIDEOSIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "get8KMaxFpsSupported.support is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "get8KMaxFpsSupported.support.length % 4 != 0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e00

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x10e0

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 9
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getActiveArraySize()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedQcfa()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QCFA_ACTIVE_ARRAY_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QCFA_ACTIVE_ARRAY_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportedFovCrop()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_ACTIVE_ARRAY_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_ACTIVE_ARRAY_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getAiColorCorrectionVersion(Z)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_AI_COLOR_CORRECTION_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_AI_COLOR_CORRECTION_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_1
    and-int/lit8 p0, p0, 0xf

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public getAiShutterSupport()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_AISHUTTER_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "getAiShutterSupport not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_AISHUTTER_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "getAiShutterSupport support is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getAnchorFrameMask()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ANCHOR_FRAME_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ANCHOR_FRAME_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getBeautyAlgoType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyAlgoType:I

    return p0
.end method

.method public getBeautyVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    return p0
.end method

.method public getBeautyVersionData()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BEAUTY_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BEAUTY_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getBinningFactor()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BINNING_FACTOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BINNING_FACTOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BINNING_SR_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera2/vendortag/struct/BinningSrData;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;-><init>()V

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BINNING_SR_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_1

    .line 4
    new-instance p0, Lcom/android/camera2/vendortag/struct/BinningSrData;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;-><init>()V

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;->parseData([B)Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object p0

    return-object p0
.end method

.method public getBokeBufferSize()Lcom/android/camera/CameraSize;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_BOKEH_DEPTH_BUFFER_Size:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_BOKEH_DEPTH_BUFFER_Size:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p0, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    if-lez v2, :cond_0

    .line 4
    new-instance v2, Lcom/android/camera/CameraSize;

    aget v0, p0, v0

    aget p0, p0, v1

    invoke-direct {v2, v0, p0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraCalibrationData()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAM_CALIBRATION_DATA:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAM_CALIBRATION_DATA:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public getCameraId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraId:I

    return p0
.end method

.method public getCameraRoleId()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getCameraRoleIds()[I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_IDS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_IDS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getCaptureRequestVendorKeys()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    return-object p0
.end method

.method public getDualBokehVendorId()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MI_DUAL_BOKEH_VENDOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MI_DUAL_BOKEH_VENDOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getEndOfStreamType()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->END_OF_STREAM_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->END_OF_STREAM_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getExposureCompensationRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public getExposureCompensationRational()Landroid/util/Rational;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getExposureTimeRange()Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_EXPOSURE_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_EXPOSURE_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_3

    .line 5
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    .line 7
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, p0, v3

    .line 8
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getExtendedMaxZoomCaps()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTENDED_MAX_ZOOM_CAPS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EXTENDED_MAX_ZOOM_CAPS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getFacing()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mFacing:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mFacing:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mFacing:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFusionPhysicalIds()[I
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FUSION_PHYSICAL_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FUSION_PHYSICAL_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 7
    aput v2, v1, v3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    .line 9
    aput v5, v1, v3

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 11
    aput v6, v1, v3

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public getHighQualityQuickShotThresholdCount()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0xf0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public getHighSpeedVideoConfigs()[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "do not configuration android.control.availableHighSpeedVideoConfigurations"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHistogramValue()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogramTag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CONTROL_HISTOGRAM_FUNCTION_STATE_DEFAULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public getIsoRange()Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 3
    :cond_0
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_SENSITIVITY_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SENSOR_INFO_SENSITIVITY_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 5
    array-length v2, p0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v2, Landroid/util/Range;

    aget v1, p0, v1

    .line 7
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aget p0, p0, v3

    .line 8
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getLiveShotSupportedUsePreviewValue()I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->LIVE_SHOT_USE_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->LIVE_SHOT_USE_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIVE_SHOT_USE_PREVIEW\uff1a   LIVE_SHOT_USE_PREVIEW  value =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getMaxExposureCompensation()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxFaceCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxFocusDistance()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxIso()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getIsoRange()Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxJpegSize()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ANDROID_JPEG_MAX_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMaxZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_MAX_DIGITAL_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_MAX_DIGITAL_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    return p0
.end method

.method public getMiAlgoASDVersion()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MI_ALGO_ASD_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MI_ALGO_ASD_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getMinIso()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getIsoRange()Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinZoomRatio(F)F
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_MIN_DIGITAL_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCALER_AVAILABLE_MIN_DIGITAL_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method

.method public getMinimumFocusDistance()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMiviSuperNightSupportedMask()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MIVI_SUPER_NIGHT_SUPPORTED_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MIVI_SUPER_NIGHT_SUPPORTED_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mOperatingMode:I

    return p0
.end method

.method public getOptimalMasterBokeh1XId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_MASTER_1X_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_MASTER_1X_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOptimalMasterBokeh1XSize(Ljava/lang/String;I)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokeh1XSizes(I)[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilities;->convertToSizes([I)[Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported master size in portrait, ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    if-nez p2, :cond_2

    .line 5
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "got null 1X master optimal size"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "got invalid 1X master optimal size with length = %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptimalMasterBokehId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_MASTER_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_MASTER_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOptimalMasterBokehSize(Ljava/lang/String;I)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehSizes(I)[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilities;->convertToSizes([I)[Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported master size in portrait, ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    if-nez p2, :cond_2

    .line 5
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "got null master optimal size"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "got invalid master optimal size with length = %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptimalPictureBokehSize(Ljava/lang/String;Z)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalPictureBokehSizes(Z)[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilities;->convertToSizes([I)[Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported picture size in portrait, ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "could not get optimal picture size"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptimalSlaveBokeh1XId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_SLAVE_1X_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_SLAVE_1X_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOptimalSlaveBokeh1XSize(Ljava/lang/String;I)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokeh1XSizes(I)[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilities;->convertToSizes([I)[Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported slave size in portrait, ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    if-nez p2, :cond_2

    .line 5
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "got null 1X slave optimal size"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "got invalid 1X slave optimal size with length = %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptimalSlaveBokehId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_SLAVE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_SLAVE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOptimalSlaveBokehSize(Ljava/lang/String;I)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokehSizes(I)[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilities;->convertToSizes([I)[Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/CameraCapabilities;->matchBokehSize(Ljava/lang/String;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported slave size in portrait, ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    if-nez p2, :cond_2

    .line 5
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "got null slave optimal size"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "got invalid slave optimal size with length = %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhysicalCameraIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPortraitBokehZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_BOKEH_ZOOM_RATIO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_BOKEH_ZOOM_RATIO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getPortraitLightingArray()[I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_PORTRAIT_LIGHTING_ARRAY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_PORTRAIT_LIGHTING_ARRAY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_2

    return-object v0

    .line 5
    :cond_2
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getPortraitLightingVersion()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_LIGHTING_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_LIGHTING_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPortraitMDEVList()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BOKEH_CV_LENS_EV_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    :cond_0
    return-object p0
.end method

.method public getPreferBokehFpsRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_AVAILABLE_FPS_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 4
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQuickShotBackBokehDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/16 v2, 0xf

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackBokehHdrDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide v2, 0xf000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x24

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackHdrDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/32 v2, 0xf0000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x10

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackMacroModeDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide v2, 0xf00000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackNormalCaptureDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/16 v2, 0xf00

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x8

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackSRCaptureDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/32 v2, 0xf000000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x18

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotBackSuperNightSeDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/32 v2, 0xf00000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x14

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotFaceBeautyDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide v2, 0xf0000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x28

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotFrontBokehDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/16 v2, 0xf0

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/4 p0, 0x4

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotFrontHdrDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide/32 v2, 0xf000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0xc

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickShotFrontNormalCaptureDelayTime()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/CameraCapabilities;->mDelayTimeMask:J

    const-wide v2, 0xf0000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    and-long/2addr v0, v2

    const/16 p0, 0x1c

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v6
.end method

.method public getQuickshotNoSRZoomRange()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICKSHOT_NOSR_ZOOM_INTERVAL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICKSHOT_NOSR_ZOOM_INTERVAL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v1, "getQuickshotNoSRZoomRange: null values!"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 6
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 9
    new-instance v2, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;

    invoke-direct {v2, v1}, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;-><init>(I)V

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 11
    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 12
    sget-object v3, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getQuickshotNoSRZoomRange: illegal zoom count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 13
    :goto_1
    div-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_4

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 16
    invoke-virtual {v2, v5, v6}, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->addZoomRange(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    sget-object v2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQuickshotNoSRZoomRange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getSatFusionCalibrationDataArray()[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_FUSION_SHOT_CALIBRATION_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "getSatFusionCalibrationInfoArray: tag undefined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_FUSION_SHOT_CALIBRATION_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 4
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatFusionCalibrationDataArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSatZoomSplineData()[Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSatZoomSplineData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_ZOOM_SPLINE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatZoomSplineData -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenLightBrightness()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCREEN_LIGHT_BRIGHTNESS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SCREEN_LIGHT_BRIGHTNESS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen light brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getSensorOrientation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSensorOrientation:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSensorOrientation:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mSensorOrientation:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSharpnessRange()[I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SHARPNESS_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SHARPNESS_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getSoundTimeWhenAnchor()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SOUND_TIME_WHEN_ANCHOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SOUND_TIME_WHEN_ANCHOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSuperNightLimitSize()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000o()[[I

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    array-length v0, p0

    if-lez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 5
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 6
    new-instance v5, Lcom/android/camera/CameraSize;

    aget v6, v4, v2

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-direct {v5, v6, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuperNightManualEvMappingMask(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_NIGHT_MANUAL_EV_MAPPING_MASK:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-ltz p1, :cond_0

    .line 4
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 5
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSuperNightManualEvMappingValue(FIZ)F
    .locals 1

    and-int/lit8 p0, p2, 0xf

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    and-int/lit16 p0, p2, 0xf0

    shr-int/lit8 p0, p0, 0x4

    const v0, 0xffff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    if-eqz p3, :cond_1

    neg-int p0, p0

    :cond_1
    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2

    const/high16 p0, -0x1000000

    and-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x18

    int-to-float p0, p0

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p0, p1

    return p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSupportQuickshotIsoThresholds(I)[I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportQuickshotIsoThresholds()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMinIso()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x320

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x8

    :goto_0
    const/4 v4, 0x1

    aput v3, v1, v4

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICKSHOT_SENSITIVITY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    .line 4
    sget-object v3, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportQuickshotSensitivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    return-object v1

    .line 5
    :cond_2
    array-length v3, p0

    rem-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "Warning \uff1aHAL return role id and ISOThreshold format error!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    move v0, v2

    .line 7
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_5

    .line 8
    aget-object v3, p0, v0

    add-int/lit8 v5, v0, 0x1

    .line 9
    aget-object v5, p0, v5

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_4

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v1, v2

    .line 12
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v1, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getSupportVideoBokehQualities()[Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_SIZE_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_SIZE_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera2/CameraCapabilities;->getComponentConfigVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSupportedAWBModes()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSupportedAntiBandingModes()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSupportedColorEffects()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSupportedCustomFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera2/MiCustomFpsRange;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CUSTOM_HFR_FPS_TABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CUSTOM_HFR_FPS_TABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera2/MiCustomFpsRange;->unmarshal([I)Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSupportedFakeSatJpegSizes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV1Supported()Z

    move-result v0

    const-string v1, "getSupportedFakeSatJpegSizes: "

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_JPEG_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 3
    sget-object v2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->parse(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 10
    iget v4, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 11
    new-instance v4, Lcom/android/camera/CameraSize;

    iget v5, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    iget v3, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-direct {v4, v5, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedFakeSatYuvSizes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV1Supported()Z

    move-result v0

    const-string v1, "getSupportedFakeSatYuvSizes: "

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_YUV_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 3
    sget-object v2, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->parse(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 10
    iget v4, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 11
    new-instance v4, Lcom/android/camera/CameraSize;

    iget v5, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    iget v3, v3, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-direct {v4, v5, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedFlashModes()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSupportedFocusModes()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSupportedFpsRange()[Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedHardwareLevel()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSupportedHdrType()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORTED_HDR_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORTED_HDR_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSupportedHeicOutputStreamSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SCALER_HEIC_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, LOooO0O0/OooO0O0/OooO0O0/OooO0OO;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO0O0/OooO0OO;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getSupportedHighSpeedVideoFPSRange(Landroid/util/Size;)[Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSlowMotionVideoConfiguration()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getSlowMotionVideoConfiguration()[Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 8
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, p0, v3

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, v4, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->width:I

    if-ne v5, v6, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, v4, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->height:I

    if-ne v5, v6, :cond_2

    .line 11
    new-instance v5, Landroid/util/Range;

    iget v6, v4, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->maxFps:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v4, v4, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->maxFps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportExtraHighSpeedVideoConfiguration()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getExtraHighSpeedVideoConfiguration()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 14
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/MiHighSpeedVideoConfiguration;

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {v2}, Lcom/android/camera2/MiHighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v2}, Lcom/android/camera2/MiHighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 17
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 18
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Range;

    .line 19
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedHighSpeedVideoSize()[Landroid/util/Size;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportSlowMotionVideoConfiguration()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getSlowMotionVideoConfiguration()[Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 8
    :cond_1
    array-length v2, p0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p0, v4

    .line 9
    new-instance v6, Landroid/util/Size;

    iget v7, v5, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->width:I

    iget v5, v5, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->height:I

    invoke-direct {v6, v7, v5}, Landroid/util/Size;-><init>(II)V

    .line 10
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportExtraHighSpeedVideoConfiguration()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getExtraHighSpeedVideoConfiguration()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 14
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/MiHighSpeedVideoConfiguration;

    .line 15
    invoke-virtual {v2}, Lcom/android/camera2/MiHighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_9

    .line 18
    array-length p0, v0

    move v2, v3

    :goto_2
    if-ge v2, p0, :cond_9

    aget-object v4, v0, v2

    .line 19
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    new-array p0, v3, [Landroid/util/Size;

    .line 21
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    return-object p0
.end method

.method public getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera2/CameraCapabilities;->mOperatingMode:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedOutputSizeWithAssignedMode(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getStreamConfigurationMap(I)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOOO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 11
    :cond_1
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/android/camera2/CameraCapabilities;->mOperatingMode:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera2/CameraCapabilities;->getStreamConfigurationMap(I)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get output sizes class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera2/CameraCapabilities;->outputSizeDebugLog([Landroid/util/Size;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_1
    sget-object p1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get supported output sizes, return empty list for key: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", camera id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCameraBufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getSupportedOutputStreamSizes(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera2/CameraCapabilities;->STREAM_CONFIGURATIONS_VENDOR_KEYS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/vendortag/VendorTag;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_0

    .line 5
    array-length v3, v2

    if-gtz v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v6

    if-ne v6, p1, :cond_3

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    new-instance v6, Lcom/android/camera/CameraSize;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/android/camera/CameraSize;-><init>(Landroid/util/Size;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->convertToPictureSize([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedVideoExposureDelay()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_EXPOSURE_DELAY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_EXPOSURE_DELAY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Landroid/util/Range;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public getThresholdZoomValue()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SR_TRIGGER_OPTIMIZATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "thresholdZoomValue\uff1a   SR_TRIGGER_OPTIMIZATION is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SR_TRIGGER_OPTIMIZATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "thresholdZoomValue is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    array-length v1, p0

    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [F

    .line 7
    array-length v3, p0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 8
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_2

    .line 9
    aget-byte v7, p0, v5

    aput v7, v3, v6

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    move v7, v4

    move v6, v5

    .line 10
    :goto_1
    array-length v8, p0

    if-ge v6, v8, :cond_3

    .line 11
    array-length v8, p0

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 12
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 13
    invoke-virtual {v8, p0, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v4, v1, :cond_4

    .line 16
    aget p0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public getTuningBufferSize(I)Lcom/android/camera/CameraSize;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CONTROL_CAPTURE_ISP_TUNING_DATA_SIZE_FOR_YUV:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CONTROL_CAPTURE_ISP_TUNING_DATA_SIZE_FOR_RAW:Lcom/android/camera2/vendortag/VendorTag;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 5
    array-length p1, p0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    aget v1, p0, p1

    if-lez v1, :cond_1

    aget v1, p0, v0

    if-lez v1, :cond_1

    .line 6
    new-instance v1, Lcom/android/camera/CameraSize;

    aget p1, p0, p1

    aget p0, p0, v0

    invoke-direct {v1, p1, p0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHdrSupportSetFreqValue()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_HDR_SUPPORT_SET_FREQ:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_HDR_SUPPORT_SET_FREQ:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoSatSupportedQualities()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportVideoSatQualityTag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORTED_VIDEO_SAT_QUALITY_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getViewAngle(Z)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    if-lez v2, :cond_1

    .line 3
    aget v0, v0, v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getSensorSize()Landroid/util/SizeF;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    float-to-double p0, p0

    mul-double/2addr p0, v1

    float-to-double v0, v0

    div-double/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0

    .line 8
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string p1, "vertical"

    goto :goto_1

    :cond_2
    const-string p1, "horizontal"

    :goto_1
    aput-object p1, v2, v1

    const-string p1, "failed to get %s view angle"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x424e0000    # 51.5f

    return p0
.end method

.method public getXiaomiYuvFormat()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_YUV_FORMAT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_YUV_FORMAT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getZoomMapSizes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ZOOM_MAP_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ZOOM_MAP_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 4
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 7
    new-instance v2, Landroid/util/Size;

    aget v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasStandaloneHeicStreamConfigurations()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_SCALER_HEIC_STREAM_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public is1080P60FpsEISSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_1080P_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_1080P_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is1080p60FpsEISSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "is1080p60FpsEISSupported: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public is30fpsDynamicSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_30FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_30FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is30fpsDynamicSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "is30fpsDynamicSupported: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public is4K60FpsEISSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_4K_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_4K_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is4K60FpsEISSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "is4K60FpsEISSupported: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public is60fpsDynamicSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_60FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is60fpsDynamicSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "is60fpsDynamicSupported: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isAELockSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

.method public isAERegionSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAFRegionSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isASDSceneSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AI_SCENE_APPLY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAWBLockSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

.method public isAdaptiveSnapshotSizeInSatModeSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ADAPTIVE_SNAPSHOT_SIZE_IN_SAT_MODE_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isAdaptiveSnapshotSizeInSatModeSupported(): false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ADAPTIVE_SNAPSHOT_SIZE_IN_SAT_MODE_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdaptiveSnapshotSizeInSatModeSupported(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isAddScanIn3ALockStatus()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ADD_3A_LOCK_STATUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ADD_3A_LOCK_STATUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isAiMoonEffectEnableSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AI_MOON_EFFECT_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAiPortraitDeblurSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_AI_PORTRAIT_DEBLUR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_AI_PORTRAIT_DEBLUR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isAnchorFrameType(II)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMaskBit(II)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAsdAlgorithmEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ASD_ALGORITHM_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAsdDirtyEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ASD_DIRTY_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAsdEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ASD_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFocusModes()[I

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result p0

    return p0
.end method

.method public isBackSoftLightSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BACK_SOFT_LIGHT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackwardCaptureSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BACKWARD_CAPTURE_HINT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBeautyModeDependTsVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyModeTextureVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyNewModeTsVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyTrueSightAlgo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isNoneBeautyModeTsVersion()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyAlgoType:I

    const/4 v0, 0x2

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

.method public isBurstCaptureSupportRepeating()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CSHOT_REPEATING:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CSHOT_REPEATING:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCapPreCollectEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CAPTURE_PRECOLLECT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCaptureAiShutterDenoiseEnable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCaptureAiShutterEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCaptureAiShutterHDREnable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCaptureExpTimeDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_EXP_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCinematicPhotoSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_PHOTO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCloneStreamOptimizationSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CLONE_STREAM_OPTIMIZATION_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CLONE_STREAM_OPTIMIZATION_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isColorEnhanceEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->COLOR_ENHANCE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCurrentQualitySupportEis(II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportEis EIS_QUALITY_SUPPORTED is not defined"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportEis.support is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportEis.support.length % 2 != 0"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v0, v1

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return v1
.end method

.method public isCurrentQualitySupportHdr10(III)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeDefined()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportHdr10 AVAILABLE_CONFIGURATIONS is not defined"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_5

    .line 4
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportHdr10.support.length % 3 != 0"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v0, v1

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_3

    add-int/lit8 v2, v0, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_4
    return v1

    .line 9
    :cond_5
    :goto_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentQualitySupportHdr10.support is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isDebugInfoAsWatermarkSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DEBUG_INFO_AS_WATERMARK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDisableMfnrForMfnrHDR()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MFNR_HDR_DISABLE_MFRN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDngPostProc()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getDngPostProcValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicFpsConfigSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DYNAMIC_FPS_CONFIG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEISPreviewSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_PREVIEW_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_PREVIEW_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEISPreviewSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isFakeSatEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FAKE_SAT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFakeSatV1Supported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_YUV_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_JPEG_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_YUV_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 4
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_JPEG_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 5
    array-length v0, v0

    if-lez v0, :cond_1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    return v2
.end method

.method public isFakeSatV2Supported()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MTK_FAKE_SAT_STREAM_CONFIGURATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_STREAM_CONFIGURATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->parse(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFlashSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

.method public isFlawDetectEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FLAW_DETECT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isForceDisableLLS()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FORCE_DISABLE_LLS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFovcSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FOVC_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FOVC_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFovcSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isFrameByFrameSuperNightSupported()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    shr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHdrThermalDetectionSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHeicSupported()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoo:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    array-length v1, p0

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO0O0;

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public isHighPerformanceSessionKeySupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_HDR_HIGH_PERFORMANCE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHighQualityQuickShotLimitMnfrInputNumFramesEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportBackBokehHDR()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportBackBokehMFNR()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportFrontBokeh()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportFrontHDR()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportFrontMFNR()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportMacroMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportSatHDR()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportSatMFNR()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighQualityQuickShotSupportSatSuperNight()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighQualityQuickShotSupportSatSuperResolution()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncomplete()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/CameraCapabilities;->mIsIncomplete:Z

    return p0
.end method

.method public isLLSSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_LLS_NEEDED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLegacyBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLevelBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMFNRBokehSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_BOKEH_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_BOKEH_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMFNRBokehSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMacroHdrMutex()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MACRO_HDR_MUTEX:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MACRO_HDR_MUTEX:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMakeups2TsVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMfnrMacroZoomSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MACRO_ZOOM_FEATURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MACRO_ZOOM_FEATURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMfnrMacroZoomSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMiviBokehSuperNightSupported()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiviNightModeSupported()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiviNightSeSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMiviSatSuperNightSupported()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMixedQuickShotSupportFrontMFNR()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMixedQuickShotSupportMacroMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMixedQuickShotSupportSatMFNR()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMotionDetectionSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_MOTION_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMtkAiShutterVersionOne()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMtkAiShutterVersionTwo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMtkIsp7()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ISP_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ISP_VERSION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNeedReplaceSrWithMfnr()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewMakeupsDependBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightCaptureDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CAPTURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNoneBeautyModeTsVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

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

.method public isOnlySupportMasterFilter720P()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->supportMasterFilterQuality()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, p0, v0

    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isOnlySupportTorchFlash()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_CAMERA_LITE_FLASH_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_CAMERA_LITE_FLASH_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPartialMetadataSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPortraitAiShutterDenoiseEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortraitAiShutterEnable()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortraitAiShutterHDREnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortraitSupportMFNRAlgo()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO0O0/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO00o;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreCaptureSupportAF()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_PRECAPTUREAF_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->XIAOMI_PRECAPTUREAF_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public isProVideoLogEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PRO_VIDEO_LOG_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isReal8K()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECIAL_VIDEOSIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isReal8K SPECIAL_VIDEOSIZE is not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECIAL_VIDEOSIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isReal8K.support is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isReal8K.support.length % 4 != 0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v0, v1

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e00

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x10e0

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x3

    .line 9
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_5
    return v1
.end method

.method public isRemosaicDetecedSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REMOSAIC_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSatFallbackDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SAT_FALLBACK_DISABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSatFallbackEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SAT_FALLBACK_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSatFusionShotSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSatFusionShotSupported: false, because tag undefined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatFusionShotSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSatPipSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_SAT_PIP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_SAT_PIP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    sget-boolean v3, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    if-nez v3, :cond_3

    sget-boolean v3, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-nez v3, :cond_3

    sget-boolean v3, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getZoomMapSizes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    :cond_4
    return v1
.end method

.method public isScreenLightHintSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SCREEN_LIGHT_HINT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isScreenLightLevelSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SCREEN_LIGHT_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSensorDepurpleDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SENSOR_DEPURPLE_DISABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SENSOR_DEPURPLE_DISABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isSensorHdrSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SENSOR_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSessionKeyDefined(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mSessionKeys:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkipPreviewBufferSupportedForBokehNight()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    shr-int/lit8 v0, p0, 0x10

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkipPreviewBufferSupportedForSE()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    shr-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSkipPreviewBufferSupportedForSuperNight()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mSuperNightMask:I

    shr-int/lit8 v0, p0, 0x10

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmoothDependBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mBeautyVersion:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmoothTransitionEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ST_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSpecshotModeSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECSHOT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SPECSHOT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSuperNightEvMappingSupported(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0xf

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperNightExifTagDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_EXIF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSuperNightYUVReprocessSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_NIGHT_YUV_REPROCESS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_NIGHT_YUV_REPROCESS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isSupportAIIE()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->getAiColorCorrectionVersion(Z)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isSupportAIPreviewEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AI_AIIE_PREVIEWENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportAiPortraitDeblur()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ENABLE_AI_PORTRAIT_DEBLUR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportAiShutter()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    .line 2
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportAiShutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAmbilightAeTarget()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AMBILIGHT_AE_TARGET:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportAmbilightAutoAeTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AMBILIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportAnchorFrame()Z
    .locals 3

    .line 1
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v1, "agate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v2, "amber"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ANCHOR_FRAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ANCHOR_FRAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isSupportAutoHdr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR_CHECKER_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportBeautyMakeup()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BEAUTY_MAKEUP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->BEAUTY_MAKEUP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportBokehAdjust()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BOKEH_F_NUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportBokehRole()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BOKEH_ROLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportBurstHint()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BURST_CAPTURE_HINT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportCameraAi30()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CAMERA_AI_30:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportCaptureRequestWithoutPreview()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAPTURE_REQUEST_WITHOUT_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAPTURE_REQUEST_WITHOUT_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportColorRetentionBackRequestTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_FILTER_COLOR_RETENTION_BACK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportColorRetentionFrontRequestTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_FILTER_COLOR_RETENTION_FRONT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportContrast()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTRAST_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportCustomFlashCurrent()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FLASH_CURRENT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportCustomWatermark()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CUSTOM_WATERMARK_TEXT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportCvLens()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_CV_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_CV_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportCvType()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CV_SESSIONKEY_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDepthFocus()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_DEPTH_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDepthFocusForMTK()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AF_TYPE_FOR_MTK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDepurple()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DEPURPLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDeviceOrientation()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DEVICE_ORIENTATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDoZipWithBss()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DO_ZIP_WITH_BSS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DO_ZIP_WITH_BSS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDoZipWithBss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportDocumentsMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_DOCUMENT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDualBokeh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DUAL_BOKEH_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDualVideoOpMode()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DUAL_VIDEO_OP_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DUAL_VIDEO_OP_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportEnableHighQualityQuickShotByTag()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportExtendedMaxZoom()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->EXTENDED_MAX_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportExtremeDarkSeResult()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->EXTREME_DARK_SE_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFaceAgeAnalyze()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FACE_AGE_ANALYZE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFacePossEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MORE_FACE_POSE_INFORMATION_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFastZoomIn()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAST_ZOOM_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFlashHdr()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_FLASH_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_FLASH_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSupportFlashMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FLASH_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFrameRatio()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRAME_RATIO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFrontBokehHdr()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BOKEH_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BOKEH_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "bokeh hdr result = NULL!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 6
    :cond_1
    sget-object v1, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bokeh hdr result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontMirror()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRONT_MIRROR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHHT()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HHT_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHHTFrameNumber()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_FRAMENUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHdr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

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

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHdr10Video()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SESSIONKEY_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR10_VIDEO:Lcom/android/camera2/vendortag/VendorTag;

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHdrBokeh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR_BOKEH_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHdrCheckerStatus()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR_CHECKER_STATUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHdrMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HDR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHighQualityPreferred()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HIGHQUALITY_PREFERRED_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HIGHQUALITY_PREFERRED_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HIGHQUALITY_PREFERRED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSupportHighQualityQuickShotAndQuickShotMixedUse()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/CameraCapabilities;->mFeatureMask:I

    const/high16 v0, 0xf400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportHistogram()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HISTOGRAM_STATS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportHistogramTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CONTROL_HISTOGRAM_FUNCTION_STATE_DEFAULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportISOGain()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_DIGITAL_GAIN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportInsensorZoom()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->INSENSORZOOM_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportIspHeif()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ISP_HEIF_AVAILABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ISP_HEIF_AVAILABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSupportLensDirtyDetect()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_DIRTY_DETECT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_DIRTY_DETECT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

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

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->LENS_DIRTY_DETECT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportLightTripartite()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->TRIPARTITE_LIGHT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->TRIPARTITE_LIGHT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSupportMacroMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MACRO_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMakeups()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRONT_MAKEUPS_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isSupportMakeups2()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRONT_MAKEUPS_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isSupportMaleMakeupSwitch()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_MALE_MAKEUP_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMfnr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMiBokeh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SINGLE_CAMERA_BOKEH:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMiTuningMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MI_TUNING_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMiviSuperNightMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMotionCaptureType()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->XIAOMI_MOTION_CAPTURE_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMotionDetectionArea()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MOTION_DETECTION_AREA:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMotionDetectionEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MOTION_DETECTION_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMotionDetectionResult()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->XIAOMI_MOTION_DETECTION_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportMultiCameraIds()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportNevusWipeSwitch()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NEVUS_WIPE_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportNormalWideLDC()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_NORMAL_WIDE_LDC:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_NORMAL_WIDE_LDC:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->NORMAL_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSupportNormalWideLDC: true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSupportNormalWideLDC: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportOIS()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget p0, p0, v0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public isSupportOfflineFlush()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->OFFLINE_LOG_FLUSH:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportOptimalBokehSize()Z
    .locals 2

    const/16 v0, 0x23

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehSizes(I)[I

    move-result-object v1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokeh1XSizes(I)[I

    move-result-object p0

    if-eqz v1, :cond_0

    .line 3
    array-length v0, v1

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    array-length p0, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportP2done()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->P2_KEY_SUPPORT_MODES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->P2_KEY_SUPPORT_MODES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    if-lez v0, :cond_2

    .line 4
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isSupportParallelCameraDevice()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportParallelCameraDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PARALLEL_CAMERA_DEVICE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PARALLEL_CAMERA_DEVICE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportParallelCameraDevice:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportParallelCameraDevice:Ljava/lang/Boolean;

    .line 6
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportParallelCameraDevice:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportParallelCameraIds()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PARALLEL_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportParallelImageName()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SNAPSHOT_IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportParallelSnapshot()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IS_PARALLEL_SNAPSHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportPortraitBeautyItem()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyNewModeTsVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMakeups2TsVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isBeautyModeTextureVersion()Z

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

.method public isSupportPortraitBokehZoomRatio()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PORTRAIT_BOKEH_ZOOM_RATIO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportPortraitLighting()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PORTRAIT_LIGHTING:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportPreviewFullSize()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_FULL_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportPreviewInSensorZoom()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->INSENSOR_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->INSENSOR_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->PREVIEW_INSENSOR_ZOOM:I

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportPreviewMirror()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PREVIEW_MIRROR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportQcomVideoHdr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_VIDEO_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_VIDEO_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdrEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoMfnrEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

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

.method public isSupportQuickShot()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IS_QUICK_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportQuickshotIsoThresholds()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->QUICKSHOT_SENSITIVITY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportRaw()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera2/CameraCapabilities;->contains([II)Z

    move-result p0

    return p0
.end method

.method public isSupportRealBV()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAL_BV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportRemosaicYuvLpnr()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->REMOSAIC_YUV_LPNR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->REMOSAIC_YUV_LPNR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportSatRawSize()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_RAW_BUFFER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSatZoomSplineData()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SAT_ZOOM_SPLINE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportShrinkMemoryMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SHRINK_MEMORY_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportShutterTimestamp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SHUTTER_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSkinColor()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SKIN_COLOR_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSnapShotTorch()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SNAP_SHOT_TORCH:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSnapshotReqInfo()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SNAPSHOT_REQ_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSnapshotReqInfoResult()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SNAPSHOT_REQ_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSuperNight()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SUPER_NIGHT_SCENE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSuperNightBokeh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SUPER_NIGHT_BOKEH_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSuperResolution()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SUPER_RESOLUTION_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSwMfnr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SW_MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSwMfnrDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SW_MFNR_DISABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportTargetZoom()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->TARGET_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportThermalAlgoDisableMask()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->THERMAL_ALGO_DISABLE_MASK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportThermalLevel()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportTrackEye()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isTrackFocusDefined()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportTrackFocus()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isTrackFocusDefined()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSupportUltraWideLDC()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ULTRA_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSupportUltraWideLDC: true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSupportUltraWideLDC: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVHdrEIS()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_VHDR_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->EIS_VHDR_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSupportVideoBeauty()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoBeautyScreenshot()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY_SCREENSHOT_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY_SCREENSHOT_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isSupportVideoBokehAdjustBack()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_ADJUEST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_ADJUEST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoBokehAdjustFront()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_FRONT_ADJUEST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BOKEH_FRONT_ADJUEST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoBokehColorRetention()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionFront()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionBack()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isSupportVideoBokehColorRetentionBack()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_BOKEH_COLOR_RETENTION_BACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportVideoBokehColorRetentionFront()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_BOKEH_COLOR_RETENTION_FRONT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportVideoBokehLevelBack()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_BOKEH_BACK_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportVideoBokehLevelFront()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_BOKEH_FRONT_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportVideoFilter()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_FILTER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_FILTER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoFilterColorRetentionBack()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_RENTENTION_BACK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_RENTENTION_BACK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoFilterColorRetentionFront()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_RENTENTION_FRONT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_COLOR_RENTENTION_FRONT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoFilterRequestTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_FILTER_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportVideoHdr()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportQcomVideoHdr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HDR_KEY_AVAILABLE_HDR_MODES_VIDEO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_KEY_DETECTION_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->HDR_KEY_AVAILABLE_HDR_MODES_VIDEO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 5
    array-length p0, p0

    if-le p0, v1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public isSupportVideoMasterFilter()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_MASTER_FILTER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_MASTER_FILTER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSupportWatermark()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->WATERMARK_APPLIEDTYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportZeroDegreeOrientationImage()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ENABLE_ZERO_DEGREE_ORIENTATION_IMAGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->ENABLE_ZERO_DEGREE_ORIENTATION_IMAGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportZeroDegreeOrientationImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "isSupportZeroDegreeOrientationImage: false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSupportedBeautyLens()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BEAUTY_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BEAUTY_LENS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportedBoKehFallBackEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BOKEH_FALL_BACK_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportedBokehFallback()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BOKEH_FALLBACK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_BOKEH_FALLBACK:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isSupportedCinematicVideo()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportedColorEnhance()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0oo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportedColorEnhance:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->COLOR_ENHANCE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->COLOR_ENHANCE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportedColorEnhance:Ljava/lang/Boolean;

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mSupportedColorEnhance:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportedHistogramStats()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HISTOGRAM_STATS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportedQcfa()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->IS_QCFA_SENSOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->IS_QCFA_SENSOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSupportedRealSquare()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->REAL_SQUARE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->REAL_SQUARE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public isSupportedSuperPortrait()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_PORTRAIT_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_PORTRAIT_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedVideoLogFormat()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->LOG_FORMAT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->LOG_FORMAT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedVideoMiMovie()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_MIMOVIE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_MIMOVIE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTagDefined(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCaptureRequestVendorKeys:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTeleOISSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->TELE_OIS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->TELE_OIS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTeleOISSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isTrackAFQualityDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUltraPixelPhotographySupported(Landroid/util/Size;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x21

    .line 1
    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputStreamSizes(I)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isUltraPixelPortraitTagDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ULTRA_PIXEL_PORTRAIT_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUltraPixelRawPhotographySupported(Landroid/util/Size;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x20

    const v2, 0x80f3

    .line 1
    invoke-virtual {p0, v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    .line 4
    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget v2, v1, Lcom/android/camera/CameraSize;->height:I

    .line 5
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUltraPixelRawPhotographySupported size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isUltraPixelSupportMFNRAlgo()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isVideoBeautyForceEis()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY_FORCE_EIS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->VIDEO_BEAUTY_FORCE_EIS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isVideoHdr10ModeDefined()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideoHdr10ModeSupported(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isVideoHdr10ModeDefined()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentDeviceSupportHdr10 AVAILABLE_CONFIGURATIONS is not defined"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 4
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 6
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    return v1

    .line 7
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string p1, "isCurrentDeviceSupportHdr10.support is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isVideoHdr10ValueDefined()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideoHdrEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_VIDEO_HDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideoMfnrEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->QCOM_VIDEO_MFHDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isZoomRatioSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ZOOM_RATIO_TAG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_ZOOM_RATIO_TAG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isdynamicFpsSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isdynamicFpsSupportedByCameraIds(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v0, v1

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isdynamicFpsSupportedByCameraIdsAndFps(II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->DYNAMIC_FPS_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v0, v1

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public proPhotoMfnrAlgoSupported()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "MFNR_ALGO: MFNR_ALGO_SUPPORTED_MODULE not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MFNR_ALGO_SUPPORTED_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MFNR_ALGO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public setOperatingMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/CameraCapabilities;->mOperatingMode:I

    return-void
.end method

.method public supportAiEnhancedVideo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->getAiVideoColorCorrectionVersion()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportMasterFilterQuality()[Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MASTER_FILTER_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "supportMasterFilterQuality MASTER_FILTER_QUALITY_SUPPORTED is not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MASTER_FILTER_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const-string v2, "supportMasterFilterQuality : "

    if-eqz v0, :cond_6

    .line 4
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 6
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "supportMasterFilterQuality support.length % 2 != 0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7
    :cond_2
    sget-object v3, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 10
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    .line 11
    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "30"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-direct {p0, v5}, Lcom/android/camera2/CameraCapabilities;->getComponentConfigVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    :goto_2
    return-object v1

    .line 15
    :cond_6
    :goto_3
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public supportMoonAutoFocus()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_MOON_AUTO_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_MOON_AUTO_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "supportMoonAutoFocus tag value:null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportMoonAutoFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public supportNearRangeMode()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_NEAR_RANGE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_NEAR_RANGE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSatFallbackDisable()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportFallbackRoleId()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public supportPhysicCameraId()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_PHYSIC_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORT_PHYSIC_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportSATUltraWideLDCEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SAT_ULTRA_WIDE_LENS_DISTORTION_CORRECTION_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public supportSuperNightVideoQuality()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_NIGHT_VIDEO_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "supportSuperNightVideoQuality SUPER_NIGHT_VIDEO_QUALITY_SUPPORTED is not defined"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/CameraCapabilities;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPER_NIGHT_VIDEO_QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const-string v2, "supportSuperNightVideoQuality: "

    if-eqz v0, :cond_5

    .line 6
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 8
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    const-string v0, "supportSuperNightVideoQuality support.length % 2 != 0"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 9
    :cond_2
    sget-object v3, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-direct {p0, v5}, Lcom/android/camera2/CameraCapabilities;->getComponentConfigVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    return-object v1

    .line 15
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/camera2/CameraCapabilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public supportVideoSatQualityTag()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SUPPORTED_VIDEO_SAT_QUALITY_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
